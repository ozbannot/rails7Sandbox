class QuestionsController < ApplicationController
  def index
    @question = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(questions_params)
    if @question.save
      redirect_to @question
    else 
      render 'new', status: :unprocessable_entity
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(questions_params)
      redirect_to @question
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  def destroy
  end

  private
  def questions_params
    params.require(:question).permit(:title, :name, :content)
  end
end
