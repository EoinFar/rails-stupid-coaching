class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @search_term = params[:answer]
    if @search_term == 'I am going to work'
      @answer = 'Great!'
    elsif @search_term.include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
