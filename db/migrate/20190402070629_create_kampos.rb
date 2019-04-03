class CreateKampos < ActiveRecord::Migration[5.0]
  def change
    create_table :kampos do |t|
      t.string :name
      t.text :description
      t.references :condition, foreign_key: true

      t.timestamps
    end
  end
end
