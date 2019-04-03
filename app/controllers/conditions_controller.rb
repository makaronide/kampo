class ConditionsController < ApplicationController
  def name
  	reset_session
    @conditions = Condition.all
    @question_id = nil
    #nameの中で、each~ <%= link_to(condition.name, "/survey/condition.id/@next_question_id") %>が呼び出されるイメージ
  end
end
