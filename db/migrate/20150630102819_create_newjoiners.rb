class CreateNewjoiners < ActiveRecord::Migration
  def change
    create_table :newjoiners do |t|
      t.string :new_name
      t.string :new_info

      t.timestamps
    end
  end
end
