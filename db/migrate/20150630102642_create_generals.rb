class CreateGenerals < ActiveRecord::Migration
  def change
    create_table :generals do |t|
      t.string :general_name
      t.string :general_description

      t.timestamps
    end
  end
end
