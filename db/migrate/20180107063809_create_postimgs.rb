class CreatePostimgs < ActiveRecord::Migration[5.1]
  def change
    create_table :postimgs do |t|
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
