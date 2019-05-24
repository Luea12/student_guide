class TeacherHomeController < ApplicationController

  layout 'teacher'

  before_action :require_teacher_login

  def index
    #Next Course
    schedule = get_schedule
    schedule['saturday'] = []
    schedule['sunday'] = []
    today_hour = Time.new.strftime("%H") + ':' + Time.new.strftime("%M")
    schedule[Time.new.strftime("%A").downcase] << {'start_time' => today_hour, 'name' => 'today'}
    schedule[Time.new.strftime("%A").downcase].sort_by!{ |c| c['start_time']}

    x = 0
    y = 0

    puts(schedule)

    schedule.each_pair do |key,value|
      value.each do |course|
        if y==0
          if course['name']!='today'
            $first = course.clone
            $first['day'] = key
            y=1
          end
        end

        if x==1
          @next_course = course.clone
          @next_course['day'] = key
          x = 2
          break
        end

        if course['name']=='today'
          x=1
        end

      end

      break if x==2

    end

    if @next_course == nil
      @next_course=$first
    end

    # News

    @news = []

    Announcement.where('visible_to_teachers = 1').each do |announcement|
       @news << {'content' => announcement[:content], 'teacher' => Teacher.find(announcement[:teacher_id]).first_name + ' ' + Teacher.find(announcement[:teacher_id]).last_name}
    end

  end

  def attempt_add_news

    a = Announcement.new(:content => params[:content], :valability => Time.now + params[:valability].to_i * 86400, :visible_to_teachers => params[:visible_to_teachers], :teacher_id => current_user.id)
    a.save
    params[:groups].each do |group|
      if group != ""
        Group.find(group.to_i).announcements << a
      end
    end


    render('index')

  end

end
