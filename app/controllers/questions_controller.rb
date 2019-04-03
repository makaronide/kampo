class QuestionsController < ApplicationController
  def content
    @condition_id = params[:condition_id]
    @question_id = params[:question_id]

    if @question_id == nil
    	@question = Question.order('id asc').where(condition_id: @condition_id).first
    else
    	@question = Question.order('id asc').where(["id > ? and condition_id = ?", @question_id, @condition_id]).first
    	if @question == nil
    		render("result/kampo")
    		return
    	end
    end

    @question_id = @question.id
		kampo_id = @question.kampo_id

		if params.has_key?(:true_false)
    	new_count = session[kampo_id].to_i + params[:true_false].to_i
    	session[kampo_id] = new_count
    else
    	session[kampo_id] = 0
    end


    render("questions/content")

  end
end
