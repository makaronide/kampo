class CreateSurveys < ActiveRecord::Migration[5.0]
  def change
    create_table :surveys do |t|
      t.integer :symptom_id
      t.integer :question_id
      t.text :question

      t.timestamps
    end
  end
end
