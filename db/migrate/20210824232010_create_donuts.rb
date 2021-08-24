class CreateDonuts < ActiveRecord::Migration[6.1]
  def change
    create_table :donuts do |t|
      t.integer :date_baked
      t.string :donut_flavor
      t.integer :baker_id
    end
  end
end
