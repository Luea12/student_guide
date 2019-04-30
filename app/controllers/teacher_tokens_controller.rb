class TeacherTokensController < ApplicationController

  layout 'application'

  before_action :require_admin_login

  def index
    @teacher_tokens = TeacherToken.all
    render('index')
  end

  def new
    render('new')
  end

  def create
    amount = params[:amount].to_i
    nr = 0
    while nr < amount
      @teacher_token = TeacherToken.new()
      if @teacher_token.save
        nr += 1
      end
    end
    redirect_to(teacher_tokens_path)
  end

  def destroy
    if TeacherToken.exists?(params[:id])
      @teacher_token = TeacherToken.find(params[:id])
      @teacher_token.destroy
    end
    redirect_to(teacher_tokens_path)
  end

end
