class SearchScheduleController < ApplicationController

  before_action :require_user_login
  helper_method :current_user
  layout :choose_layout

  def current_user
    if session[:user_id]
      if @current_user == nil
        if session[:user_type] == "S"
          found_user = Student.find(session[:user_id]) || Student.find_by(:username => session[:username])
        elsif session[:user_type] == "T"
          found_user = Teacher.find(session[:user_id]) || Teacher.find_by(:username => session[:username])
        elsif session[:user_type] == "A"
          found_user = Admin.find(session[:user_id]) || Admin.find_by(:username => session[:username])
        end
      end

      @current_user ||= found_user
    end
  end

  def choose_layout

    if session[:user_id]
      if session[:user_type] == "S"
        "student"
      elsif session[:user_type] == "T"
        "teacher"
      end
    end


  end

  def index
  end
end
