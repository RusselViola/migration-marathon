class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :genre, null: false, uniqueness: true

      t.timestamps
    end
    add_column :books, :category_id, :integer
  end
end
