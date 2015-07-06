class AddBirthdayNameToHrs < ActiveRecord::Migration
  def change
    add_column :hrs, :birthday_name, :string
  end
end
