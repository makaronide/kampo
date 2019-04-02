class CreateKampoShoyakus < ActiveRecord::Migration[5.0]
  def change
    create_table :kampo_shoyakus do |t|
      t.integer :kampo_id
      t.integer :shoyaku_id

      t.timestamps
    end
  end
end
