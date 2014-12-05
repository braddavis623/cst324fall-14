class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :rating
      t.text :review
      t.references :item, index: true

      t.timestamps
    end
  end
end
