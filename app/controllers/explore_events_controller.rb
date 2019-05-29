class ExploreEventsController < ApplicationController

  layout :choose_layout


  def index

    @recently_added = []
    Event.where('created_at >= ?', Time.now-7*86400).each do |event|
      @recently_added << event
    end
  end

  def join_event


    current_user.events << Event.find(params[:event])
    print(current_user.events)
    redirect_to :action => 'index'


  end

  def attempt_find

    @events = []


    if(Time.now.strftime('%w')==0)
      @first_day_of_current_week = (Time.now - 6*86400).strftime('%d').to_i
      @last_day_of_current_week = Time.now.strftime('%d').to_i
    else
      @first_day_of_current_week = (Time.now-(Time.now.strftime('%w').to_i+1)*86400).strftime('%d').to_i
      @last_day_of_current_week = (Time.now + (7 - Time.now.strftime('%w').to_i)*86400).strftime('%d').to_i
    end


    if params[:date] == "today"
      Event.where('DAY(date) = ? AND MONTH(date) = ? AND YEAR(date) = ?',  Time.now.strftime('%d').to_i,  Time.now.strftime('%m'),  Time.now.strftime('%Y')).each do |event|
        @events << event
      end
      @period = "Today's"
    elsif params[:date] == "week"
      if @first_day_of_current_week<@last_day_of_current_week
        Event.where('DAY(date) >= ? AND DAY(date) <= ? ', @first_day_of_current_week, @last_day_of_current_week).each do |event|
          @events << event
        end
        @period = "This week's"
      else
        Event.where('DAY(date) >= ? OR DAY(date) <= ? ', @first_day_of_current_week, @last_day_of_current_week).each do |event|
          @events << event
        end
      end
    elsif params[:date] == "month"
      Event.where(' MONTH(date) = ? AND YEAR(date) = ?', Time.now.strftime('%m'),  Time.now.strftime('%Y')).each do |event|
        @events << event
      end
      @period = "This month's"
    end

    render('found_events')
  end

  def host

    @mess = params[:not]
  end

  def create_event

    if EventToken.find_by(:token => params[:token])
      Event.create(:name => params[:name], :date => Date.new(params["date(1i)"].to_i, params["date(2i)"].to_i, params["date(3i)"].to_i), :location => params[:location], :description => params[:description], :student_id => current_user.id)
      redirect_to action: 'host', not: "Your event has been created."
    else
      redirect_to action: 'host', not: "Token is not valid."
    end

  end

end
