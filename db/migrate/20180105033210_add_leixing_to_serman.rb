class AddLeixingToSerman < ActiveRecord::Migration[5.1]
  def change
    add_column :sermen, :leixing, :string, :default => 'serman'
  end
end
