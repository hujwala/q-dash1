class CreateAnniversaries < ActiveRecord::Migration
  def change
    create_table :anniversaries do |t|
      t.string :ann_year
      t.string :ann_name
      t.string :ann_wish

      t.timestamps
    end
  end
end
