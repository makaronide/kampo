class ResultController < ApplicationController
  def kampo
    @shoyaku_id = KampoShoyakuRelation.find_by(id: @result_kampo.id)
    @shoyaku = Shoyaku.where(id: @shoyaku_id)
    

  end
end
