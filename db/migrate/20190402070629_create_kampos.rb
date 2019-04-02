class CreateKampos < ActiveRecord::Migration[5.0]
  def change
    create_table :kampos do |t|
      t.string :name
      t.text :description
      t.integer :condition_id
      t.integer :true_number

      t.timestamps
    end
  end
end
