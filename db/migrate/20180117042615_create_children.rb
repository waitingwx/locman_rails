class CreateChildren < ActiveRecord::Migration[5.1]
  def change
    create_table :children do |t|
      t.string :name
      t.integer :gender
      t.date :birthday

      t.timestamps
    end
  end
end
