class CreateKampoShoyakuRelations < ActiveRecord::Migration[5.0]
  def change
    create_table :kampo_shoyaku_relations do |t|
      t.references :kampo, foreign_key: true
      t.references :shoyaku, foreign_key: true

      t.timestamps
    end
  end
end
