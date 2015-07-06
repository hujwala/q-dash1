class CreateWallboards < ActiveRecord::Migration
  def change
    create_table :wallboards do |t|

      t.timestamps
    end
  end
end
