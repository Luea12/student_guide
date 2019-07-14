class SearchScheduleController < ApplicationController

  layout :choose_layout

  before_action :require_user_login

  helper_method :choose_schedule_route, :choose_search_route, :choose_search_post_route

  def search
    render('search')
  end

  def attempt_search
    monday = []
    tuesday = []
    wednesday = []
    thursday = []
    friday = []

    if params[:group].present?
      courses = Group.find(params[:group]).courses

      courses.each do |course|
        if course.day == "Luni"
          monday << { 'name' => course.name, 'room' => course.room , 'teacher_first_name' => course.teacher_first_name, 'teacher_last_name' => course.teacher_last_name, 'start_time' => course.start_time, 'end_time' => course.end_time, 'frequency' => course.frequency, 'kind' => course.kind }
        elsif course.day == "Marti"
          tuesday << { 'name' => course.name, 'room' => course.room , 'teacher_first_name' => course.teacher_first_name, 'teacher_last_name' => course.teacher_last_name, 'start_time' => course.start_time, 'end_time' => course.end_time, 'frequency' => course.frequency, 'kind' => course.kind }
        elsif course.day == "Miercuri"
          wednesday << { 'name' => course.name, 'room' => course.room , 'teacher_first_name' => course.teacher_first_name, 'teacher_last_name' => course.teacher_last_name, 'start_time' => course.start_time, 'end_time' => course.end_time, 'frequency' => course.frequency, 'kind' => course.kind }
        elsif course.day == "Joi"
          thursday << { 'name' => course.name, 'room' => course.room , 'teacher_first_name' => course.teacher_first_name, 'teacher_last_name' => course.teacher_last_name, 'start_time' => course.start_time, 'end_time' => course.end_time, 'frequency' => course.frequency, 'kind' => course.kind }
        elsif course.day == "Vineri"
          friday << { 'name' => course.name, 'room' => course.room , 'teacher_first_name' => course.teacher_first_name, 'teacher_last_name' => course.teacher_last_name, 'start_time' => course.start_time, 'end_time' => course.end_time, 'frequency' => course.frequency, 'kind' => course.kind }
        end
      end
    elsif params[:teacher_last_name].present? && params[:teacher_first_name].present?
      courses = Course.where(teacher_last_name: params[:teacher_last_name].camelize, teacher_first_name: params[:teacher_first_name].camelize)

      courses.each do |course|
        groups = []
        course.groups.each do |group|
          groups << group.group_no
        end
        if course.day == "Luni"
          monday << { 'name' => course.name, 'room' => course.room , 'start_time' => course.start_time, 'end_time' => course.end_time, 'frequency' => course.frequency, 'kind' => course.kind, 'groups' => groups }
        elsif course.day == "Marti"
          tuesday << { 'name' => course.name, 'room' => course.room , 'start_time' => course.start_time, 'end_time' => course.end_time, 'frequency' => course.frequency, 'kind' => course.kind, 'groups' => groups }
        elsif course.day == "Miercuri"
          wednesday << { 'name' => course.name, 'room' => course.room , 'start_time' => course.start_time, 'end_time' => course.end_time, 'frequency' => course.frequency, 'kind' => course.kind, 'groups' => groups }
        elsif course.day == "Joi"
          thursday << { 'name' => course.name, 'room' => course.room , 'start_time' => course.start_time, 'end_time' => course.end_time, 'frequency' => course.frequency, 'kind' => course.kind, 'groups' => groups }
        elsif course.day == "Vineri"
          friday << { 'name' => course.name, 'room' => course.room , 'start_time' => course.start_time, 'end_time' => course.end_time, 'frequency' => course.frequency, 'kind' => course.kind, 'groups' => groups }
        end
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

  def choose_schedule_route
    if session[:user_type] == "S"
      student_schedule_path
    elsif session[:user_type] == "T"
      teacher_schedule_path
    end
  end

  def choose_search_route
    if session[:user_type] == "S"
      student_search_schedule_path
    elsif session[:user_type] == "T"
      teacher_search_schedule_path
    end
  end

  def choose_search_post_route
    if session[:user_type] == "S"
      student_attempt_search_schedule_path
    elsif session[:user_type] == "T"
      teacher_attempt_search_schedule_path
    end
  end

end
