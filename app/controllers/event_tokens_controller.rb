class EventTokensController < ApplicationController

  layout 'application'

  before_action :require_admin_login

  def index
    @event_tokens = EventToken.all
    render('index')
  end


  def create
    @event_token = EventToken.create()
    redirect_to(event_tokens_path)
  end

  def destroy
    if EventToken.exists?(params[:id])
      @event_token = EventToken.find(params[:id])
      @event_token.destroy
    end
    redirect_to(event_tokens_path)
  end

end
