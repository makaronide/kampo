class QuestionsController < ApplicationController
  def content
    @condition_id = params[:condition_id]
    @question_id = params[:question_id]

    #今のquestionがどの漢方に紐付いているか
    @kampo_id = Question.find_by(id: @question_id).kampo_id
    session[:kampo_id] = @kampo_id
    session[:count] += true_false
    #<%= link_to 'はい', survey_condition_path(condition_id, question_id, true_false: 1) %>

    @question = Question.find_by(id: @question_id, condition_id: @condition_id)

    @max_question_id = Question.find_by(condition_id: @condition_id).count

    if @question_id <= @max_question_id
      @question_id += 1
      #contentの中で<%= /survey/#{@condition_id}/#{@question_id}が呼び出されるイメージ %>
      redirect_to("/survey/#{@condition_id}/#{@question_id}")
    else
      render("result/kampo")
    end
  end
end
