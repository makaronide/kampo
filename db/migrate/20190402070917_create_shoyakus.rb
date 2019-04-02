class CreateShoyakus < ActiveRecord::Migration[5.0]
  def change
    create_table :shoyakus do |t|
      t.string :name
      t.text :picture_file
      t.text :description

      t.timestamps
    end
  end
end
