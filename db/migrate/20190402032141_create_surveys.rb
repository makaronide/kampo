class CreateSurvey < ActiveRecord::Migration[5.0]
  def change
    create_table :question do |t|
      t.integer :symptom_id
      t.text :content

      t.timestamps
    end
  end
end
