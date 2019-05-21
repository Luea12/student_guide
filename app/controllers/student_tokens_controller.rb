class StudentTokensController < ApplicationController

  layout 'admin'

  before_action :require_admin_login

  def index
    @student_tokens = StudentToken.all
    render('index')
  end

  def new
    render('new')
  end

  def create
    if Group.exists?(params[:group])
      amount = params[:amount].to_i
      nr = 0
      while nr < amount
        @student_token = StudentToken.new(:group_no => params[:group])
        if @student_token.save
          nr += 1
        end
      end
      redirect_to(student_tokens_path)
    else
      flash.now[:alert] = "Group #{params[:group]} doesn't exist. Please try again."
      render('new')
    end
  end

  def destroy
    if StudentToken.exists?(params[:id])
      @student_token = StudentToken.find(params[:id])
      @student_token.destroy
    end
    redirect_to(student_tokens_path)
  end

end
