class ResultController < ApplicationController
  def kampo
    @kampo = Kampo.find_by(condition_id: params[:], true_number:)
    
  end
end
