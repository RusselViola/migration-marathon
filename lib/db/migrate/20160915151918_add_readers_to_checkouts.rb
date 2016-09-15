class AddReadersToCheckouts < ActiveRecord::Migration
  def up
    add_column :checkouts, :reader_id, :integer
  end

  def down
    remove_column :checkouts, :reader_id
  end

end
