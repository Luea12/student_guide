class ExploreEventsController < ApplicationController

  layout :choose_layout


  def index

    @recently_added = []
    Event.where('created_at >= ?', Time.now-7*86400).each do |event|
      @recently_added << event
    end
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
    elsif params[:date] == "week"
      if @first_day_of_current_week<@last_day_of_current_week
        Event.where('DAY(date) >= ? AND DAY(date) <= ? ', @first_day_of_current_week, @last_day_of_current_week).each do |event|
          @events << event
        end
      else
        Event.where('DAY(date) >= ? OR DAY(date) <= ? ', @first_day_of_current_week, @last_day_of_current_week).each do |event|
          @events << event
        end
      end
    elsif params[:date] == "month"
      Event.where(' MONTH(date) = ? AND YEAR(date) = ?', Time.now.strftime('%m'),  Time.now.strftime('%Y')).each do |event|
        @events << event
      end
    end

    render('found_events')



  end

end
