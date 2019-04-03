class ConditionsController < ApplicationController
  def name
    @conditions = Condition.all
    @next_question_id = 1
    session[:count] = 0
    #nameの中で、each~ <%= link_to(condition.name, "/survey/condition.id/@next_question_id") %>が呼び出されるイメージ
  end
end
