class RemoveGenderFromUser < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :gender, :boolean
  end
end
