class RegisterController < ApplicationController

  layout 'access'

  before_action :require_token_auth, :only => :signup

  def signup
    render('signup')
  end

  def verify
    if session[:token_id]
      redirect_to(signup_path) and return
    end
    render('verify')
  end

  def attempt_signup
    if params[:first_name].present? && params[:last_name].present? && params[:email].present? && \
       params[:username].present? && params[:password].present?
      if session[:token_type] == "S"
        # Register Student
        found_token = StudentToken.exists?(session[:token_id])
        unless found_token
          flash[:alert] = "Something went wrong... Please confirm your token."
          remove_token_from_session()
          redirect_to(token_auth_path) and return
        end
        # Check if username or email already exists
        found_user = Teacher.exists?(:username => params[:username]) || Admin.exists?(:username => params[:username]) || \
                     Student.exists?(:username => params[:username])
        if found_user
          flash.now[:alert] = "Username already exists."
          remember_form_input()
          render('signup') and return
        end
        found_email = Teacher.exists?(:email => params[:email]) || Student.exists?(:email => params[:email])
        if found_email
          flash.now[:alert] = "Email already exists."
          remember_form_input()
          render('signup') and return
        end
        # Validate the input for Student
        found_token = StudentToken.find(session[:token_id])
        new_student = Student.new(:first_name => params[:first_name], :last_name => params[:last_name], \
                                  :email => params[:email], :username => params[:username], \
                                  :password => params[:password], :group_id => found_token.group_no)
        valid = new_student.save
        if valid
          found_token.destroy
          remove_token_from_session()
          forget_form_input()
          flash[:notice] = "Student account created."
          redirect_to(login_path) and return
        else
          flash.now[:alert] = "Invalid columns. Try again."
          remember_form_input()
          render('signup')
        end
      elsif session[:token_type] == "T"
        # Register Teacher
        found_token = TeacherToken.exists?(session[:token_id])
        unless found_token
          flash[:alert] = "Something went wrong... Please confirm your token."
          remove_token_from_session()
          redirect_to(token_auth_path) and return
        end
        # Check if username or email already exists
        found_user = Student.exists?(:username => params[:username]) || Admin.exists?(:username => params[:username]) || \
                     Teacher.exists?(:username => params[:username])
        if found_user
          flash.now[:alert] = "Username already exists."
          remember_form_input()
          render('signup') and return
        end
        found_email = Student.exists?(:email => params[:email]) || Teacher.exists?(:email => params[:email])
        if found_email
          flash.now[:alert] = "Email already exists."
          remember_form_input()
          render('signup') and return
        end
        # Validate the input for Teacher
        new_teacher = Teacher.new(:first_name => params[:first_name], :last_name => params[:last_name], \
                                  :email => params[:email], :username => params[:username], \
                                  :password => params[:password])
        valid = new_teacher.save
        if valid
          TeacherToken.destroy(session[:token_id])
          remove_token_from_session()
          forget_form_input()
          flash[:notice] = "Teacher account created."
          redirect_to(login_path) and return
        else
          flash.now[:alert] = "Invalid columns. Try again."
          remember_form_input()
          render('signup')
        end
      end
    else
      flash.now[:alert] = "All fields are mandatory."
      render('signup')
    end
  end

  def token_validation
    if params[:token].present?
      # Check for StudentToken
      found_token = StudentToken.find_by(:token => params[:token])
      token_type = "S"
      unless found_token
        # Check for TeacherToken
        found_token = TeacherToken.find_by(:token => params[:token])
        token_type = "T"
      end
    end

    if found_token
      session[:token_id] = found_token.id
      session[:token_type] = token_type
      session[:fail_token] = nil
      flash[:notice] = "You can now signup."
      redirect_to(signup_path)
    else
      session[:fail_token] = params[:token]
      flash.now[:alert] = "Invalid token."
      render('verify')
    end
  end

  private

  def require_token_auth
    unless session[:token_id]
      flash[:notice] = "Please enter your token to signup."
      redirect_to(token_auth_path)
    end
  end

  def remember_form_input
    session[:fail_first_name] = params[:first_name]
    session[:fail_last_name] = params[:last_name]
    session[:fail_email] = params[:email]
    session[:fail_username] = params[:username]
  end

  def forget_form_input
    session[:fail_first_name] = nil
    session[:fail_last_name] = nil
    session[:fail_email] = nil
    session[:fail_username] = nil
  end

  def remove_token_from_session
    session[:token_id] = nil
    session[:token_type] = nil
  end
end
