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

  def choose_route
    if session[:user_id]
      if session[:user_type] == "S"
        "student_search_schedule"
      elsif session[:user_type] == "T"
        "teacher_search_schedule"
      end
    end
  end

  def search

  end

  def attempt_search
    if params[:group].present?
      courses = Group.find(params[:group]).courses
    elsif params[:teacher_last_name].present? && params[:teacher_first_name].present?
      courses = Course.where(teacher_last_name: params[:teacher_last_name].camelize, teacher_first_name: params[:teacher_first_name].camelize)
    end

    monday = []
    tuesday = []
    wednesday = []
    thursday = []
    friday = []

    courses.each do |course|
      if course.day == "Luni"
        monday << { 'name' => course.name, 'room' => course.room , 'teacher_first_name' => course.teacher_first_name, 'teacher_last_name' => course.teacher_last_name, 'start_time' => course.start_time, 'end_time' => course.end_time, 'frequency' => course.frequency }
      elsif course.day == "Marti"
        tuesday << { 'name' => course.name, 'room' => course.room , 'teacher_first_name' => course.teacher_first_name, 'teacher_last_name' => course.teacher_last_name, 'start_time' => course.start_time, 'end_time' => course.end_time, 'frequency' => course.frequency }
      elsif course.day == "Miercuri"
        wednesday << { 'name' => course.name, 'room' => course.room , 'teacher_first_name' => course.teacher_first_name, 'teacher_last_name' => course.teacher_last_name, 'start_time' => course.start_time, 'end_time' => course.end_time, 'frequency' => course.frequency }
      elsif course.day == "Joi"
        thursday << { 'name' => course.name, 'room' => course.room , 'teacher_first_name' => course.teacher_first_name, 'teacher_last_name' => course.teacher_last_name, 'start_time' => course.start_time, 'end_time' => course.end_time, 'frequency' => course.frequency }
      elsif course.day == "Vineri"
        friday << { 'name' => course.name, 'room' => course.room , 'teacher_first_name' => course.teacher_first_name, 'teacher_last_name' => course.teacher_last_name, 'start_time' => course.start_time, 'end_time' => course.end_time, 'frequency' => course.frequency }
      end
    end


    monday = monday.sort_by!{ |c| c[:start_time]}
    tuesday = tuesday.sort_by!{ |c| c[:start_time]}
    wednesday = wednesday.sort_by!{ |c| c[:start_time]}
    thursday = thursday.sort_by!{ |c| c[:start_time]}
    friday = friday.sort_by!{ |c| c[:start_time]}


    @schedule = { 'monday' => monday, 'tuesday' => tuesday, 'wednesday' => wednesday, 'thursday' => thursday, 'friday' => friday}

    render('index')

  end

end
