class QuestionsController < ApplicationController

  def ask

  end

  def answer

    @question = params[:question]
    if params["question"] == "I am going to work"
      @answer = "Great!"
    elsif params["question"].end_with?("?") == true
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end


# http://localhost:3000/answer?question=I+am+going+to+work
