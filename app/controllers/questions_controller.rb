class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:question]
      @question = params[:question]
      @response = answerQuestion
    end
  end

  def answerQuestion
    if @question == "I am going to work"
      'Great!'
    elsif @question[-1] == '?'
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
