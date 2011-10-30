class QuestionsController < ApplicationController
  before_filter :authenticate, :only => [:create, :destroy]
  before_filter :authorized_user, :only => :destroy


  def create
    @question  = current_user.questions.build(params[:question])
    if @question.save
      flash[:success] = "Question created!"
      redirect_to root_path
    else
       @feed_items = []
      render 'pages/home'
    end

  end


   def destroy
     @question.destroy
     redirect_back_or root_path
    end
  
  private

    def authorized_user
      @question = current_user.questions.find_by_id(params[:id])
      redirect_to root_path if @question.nil?
    end

end

