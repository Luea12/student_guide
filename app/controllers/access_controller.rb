class AccessController < ApplicationController

  layout 'application'

  def login
    if session[:user_id]
      if session[:user_type] == "S"
        redirect_to(student_home_path) and return
      elsif session[:user_type] == "T"
        redirect_to(teacher_home_path) and return
      elsif session[:user_type] == "A"
        redirect_to(admin_home_path) and return
      end
    end
    render('login')
  end

  def attempt_login
    if params[:nameOrMail].present? && params[:password].present?
      # User is Student
      found_user = Student.find_by(:username => params[:nameOrMail]) || Student.find_by(:email => params[:nameOrMail])
      user_type = "S"
      unless found_user
        # User is Teacher
        found_user = Teacher.find_by(:username => params[:nameOrMail]) || Teacher.find_by(:email => params[:nameOrMail])
        user_type = "T"
      end
      unless found_user
        # User is Admin
        found_user = Admin.find_by(:username => params[:nameOrMail])
        user_type = "A"
      end
      # Authenticate User with password
      if found_user
        authorized_user = found_user.authenticate(params[:password])
      end
    end

    if authorized_user
      session[:user_id] = authorized_user.id
      session[:username] = authorized_user.username
      session[:user_type] = user_type
      flash[:notice] = "You are now logged in as #{authorized_user.username}"
      if session[:user_type] == "S"
        redirect_to student_home_path
      elsif session[:user_type] == "T"
        redirect_to teacher_home_path
      elsif session[:user_type] == "A"
        redirect_to admin_home_path
      end
    else
      flash.now[:notice] = "Invalid username/password combination."
      render('login')
    end
  end

  def logout
    if session[:user_id]
      session[:user_id] = nil
      session[:username] = nil
      session[:user_type] = nil
      @current_user = nil
      flash[:notice] = 'Logged out'
    end
    redirect_to(root_path)
  end

end
