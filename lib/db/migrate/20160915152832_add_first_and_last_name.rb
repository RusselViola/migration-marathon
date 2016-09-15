class AddFirstAndLastName < ActiveRecord::Migration
  def change
    add_column :readers, :first_name, :string
    add_column :readers, :last_name, :string

    Reader.all.each do |reader|
      full_name = reader.name.split(" ")
      reader.first_name = full_name[0]
      reader.last_name = full_name[1]
      reader.save!
    end

  #!!! We broke the code here, Do not do this:!!!#
  
    # remove_column :readers, :name, :string

  #!!! Instead create a new migration to remove the !!!#
  #    name column so ActiveRecord can rollback correctly

  end
end
