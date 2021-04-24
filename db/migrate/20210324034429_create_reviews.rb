class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :title
      t.float :rating
      t.text :body

      t.timestamps
    end
  end
end
