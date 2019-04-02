class QuestionsController < ApplicationController
  def content
    @condition_id = params[:condition_id]
    @next_question_id = params[:next_question_id]
    session[:count] += true_false
    #<%= link_to 'はい', survey_condition_path(condition_id, next_question_id, true_false: 1) %>

    @question = Question.find_by(condition_id: @condition_id, id: @next_question_id)

    if @next_question_id <= #最大質問数
      @next_question_id += @question.id
      redirect_to("/survey/#{@condition_id}/#{@next_question_id}")
      #contentの中で<%= /survey/#{@condition_id}/#{@next_question_id}が呼び出されるイメージ %>
    else
      render("result/kampo")
    end
  end
end
