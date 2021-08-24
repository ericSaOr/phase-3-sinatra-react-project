class CreateBakers < ActiveRecord::Migration[6.1]
  def change
    create_table :bakers do |t|
      t.string :baker_name
      t.string :favorite_donut
    end
  end
end
