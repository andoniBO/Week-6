class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :description 
      t.belongs_to :product, index: true
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
  end
end
