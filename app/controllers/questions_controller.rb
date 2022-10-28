class QuestionsController < ApplicationController
  def index
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(questions_params)
    @question.save
    redirect_to @question
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def questions_params
    params.require(:question).permit(:title, :name, :content)
  end
end
