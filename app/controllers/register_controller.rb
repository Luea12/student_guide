class RegisterController < ApplicationController

  layout 'application'

  before_action :require_token_auth, :only => :signup
  skip_before_action :verify_authenticity_token

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
        found_token = StudentToken.find(session[:token_id])
        unless found_token
          flash[:notice] = "Something went wrong... Please confirm your token."
          remove_token_from_session()
          redirect_to(token_auth_path) and return
        end
        # Check if username or email already exists
        found_user = Teacher.exists?(:username => params[:username]) || Admin.exists?(:username => params[:username]) || \
                     Student.exists?(:username => params[:username])
        if found_user
          flash.now[:notice] = "Username already exists."
          render('signup') and return
        end
        found_email = Teacher.exists?(:email => params[:email]) || Student.exists?(:email => params[:email])
        if found_email
          flash.now[:notice] = "Email already exists."
          render('signup') and return
        end
        # Validate the input for Student
        new_student = Student.new(:first_name => params[:first_name], :last_name => params[:last_name], \
                                  :email => params[:email], :username => params[:username], \
                                  :password => params[:password], :group_id => found_token.group_no)
        valid = new_student.save
        if valid
          found_token.destroy
          remove_token_from_session()
          flash[:notice] = "Student account created."
          redirect_to(login_path) and return
        else
          flash.now[:notice] = "Invalid columns. Try again."
          render('signup')
        end
      elsif session[:token_type] == "T"
        # Register Teacher
        found_token = TeacherToken.exists?(session[:token_id])
        unless found_token
          flash[:notice] = "Something went wrong... Please confirm your token."
          remove_token_from_session()
          redirect_to(token_auth_path) and return
        end
        # Check if username or email already exists
        found_user = Student.exists?(:username => params[:username]) || Admin.exists?(:username => params[:username]) || \
                     Teacher.exists?(:username => params[:username])
        if found_user
          flash.now[:notice] = "Username already exists."
          render('signup') and return
        end
        found_email = Student.exists?(:email => params[:email]) || Teacher.exists?(:email => params[:email])
        if found_email
          flash.now[:notice] = "Email already exists."
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
          flash[:notice] = "Teacher account created."
          redirect_to(login_path) and return
        else
          flash.now[:notice] = "Invalid columns. Try again."
          render('signup')
        end
      end
    else
      flash.now[:notice] = "All fields are mandatory."
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
      flash[:notice] = "You can now signup."
      redirect_to(signup_path)
    else
      flash.now[:notice] = "Invalid token."
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

  def remove_token_from_session
    session[:token_id] = nil
    session[:token_type] = nil
  end
end
