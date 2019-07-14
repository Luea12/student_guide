class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  def require_user_login
    if session[:user_id].nil? or session[:user_type] != "T" and session[:user_type] != "S"
      flash[:alert] = "You must be logged in to access this section."
      redirect_to(login_path) and return
    end
  end

  def require_student_login
    unless session[:user_id]
      flash[:alert] = "You must be logged in as a student to access this section."
      redirect_to(login_path) and return
    end
    if session[:user_type] != "S"
      flash[:alert] = "You must be logged in as a student to access this section. Please logout first."
      redirect_to(login_path) and return
    end
  end

  def require_teacher_login
    unless session[:user_id]
      flash[:alert] = "You must be logged in as a teacher to access this section."
      redirect_to(login_path) and return
    end
    if session[:user_type] != "T"
      flash[:alert] = "You must be logged in as a teacher to access this section. Please logout first."
      redirect_to(login_path) and return
    end
  end

  def require_admin_login
    unless session[:user_id]
      flash[:alert] = "You must be logged in as an admin to access this section."
      redirect_to(login_path) and return
    end
    if session[:user_type] != "A"
      flash[:alert] = "You must be logged in as an admin to access this section. Please logout first."
      redirect_to(login_path) and return
    end
  end

  def get_schedule
    if session[:user_type] == "S"
      courses = Group.find(current_user.group_id).courses
    elsif session[:user_type] == "T"
      courses = Course.where(teacher_first_name: current_user.last_name)
    end

    monday = []
    tuesday = []
    wednesday = []
    thursday = []
    friday = []

  if session[:user_type] == "S"
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
  elsif session[:user_type] == "T"
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



    monday = monday.sort_by!{ |c| c['start_time']}
    tuesday = tuesday.sort_by!{ |c| c['start_time']}
    wednesday = wednesday.sort_by!{ |c| c['start_time']}
    thursday = thursday.sort_by!{ |c| c['start_time']}
    friday = friday.sort_by!{ |c| c['start_time']}


    @schedule = { 'monday' => monday, 'tuesday' => tuesday, 'wednesday' => wednesday, 'thursday' => thursday, 'friday' => friday}

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

end
