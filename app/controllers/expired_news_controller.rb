class ExpiredNewsController < ApplicationController

  layout 'admin'

  before_action :require_admin_login

  def index
    @news = Announcement.all
    render("index")
  end

  def destroy
    if Announcement.exists?(params[:id])
      @announcement = Announcement.find(params[:id])
      @announcement.destroy
    end
    redirect_to(expired_news_path)
  end
end
