class CreateBirthdays < ActiveRecord::Migration
  def change
    create_table :birthdays do |t|
      t.string :birthday_name

      t.timestamps
    end
  end
end
