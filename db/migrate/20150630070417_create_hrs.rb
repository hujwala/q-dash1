class CreateHrs < ActiveRecord::Migration
  def change
    create_table :hrs do |t|
      t.string :name2
      t.string :description2

      t.timestamps
    end
  end
end
