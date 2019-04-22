class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  private

  def require_student_login
    unless session[:user_id]
      flash[:notice] = "You must be logged in as a student to access this section."
      redirect_to(login_path) and return;
    end
    if session[:user_type] != "S"
      flash[:notice] = "You must be logged in as a student to access this section. Please logout first."
      redirect_to(login_path) and return;
    end
  end

  def require_teacher_login
    unless session[:user_id]
      flash[:notice] = "You must be logged in as a teacher to access this section."
      redirect_to(login_path) and return;
    end
    if session[:user_type] != "T"
      flash[:notice] = "You must be logged in as a teacher to access this section. Please logout first."
      redirect_to(login_path) and return;
    end
  end

end
