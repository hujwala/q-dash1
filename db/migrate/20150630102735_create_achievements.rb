class CreateAchievements < ActiveRecord::Migration
  def change
    create_table :achievements do |t|
      t.string :ach_name
      t.string :ach_description

      t.timestamps
    end
  end
end
