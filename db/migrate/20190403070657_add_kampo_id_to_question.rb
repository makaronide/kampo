class AddKampoIdToQuestion < ActiveRecord::Migration[5.0]
  def change
    add_reference :questions, :kampo, foreign_key: true
  end
end
