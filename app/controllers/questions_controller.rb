class QuestionsController < ApplicationController
  def content
    @question = Question.find_by()
  end
end
