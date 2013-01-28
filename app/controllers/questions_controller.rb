class QuestionsController < ApplicationController

  def index
  end

  def new
    @question = Question.new
  end

  def create
    question = Question.create(:question_text => params[:question][:question_text])
    @auth.questions << question
    params[:question][:answers].each do |answer|
      question.answers << Answer.create(:answer_text => answer[:text], :is_correct => answer[:correct].present?)
    end
    redirect_to questions_path
  end

  def edit
  end

  def show
  end

end