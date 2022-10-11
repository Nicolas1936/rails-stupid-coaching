class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = "I don't care, get dressed and go to work!"

    unless params[:question].nil?
      if params[:question] == "I am going to work"
          @answer = " Great!"
      elsif params[:question][-1] == "?"
          @answer = "Silly question, get dressed and go to work!"
      end
    end
  end
end
