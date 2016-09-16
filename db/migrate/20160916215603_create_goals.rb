class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.integer :id_user
      t.string :what, limit: 255
      t.decimal :cost, precision: 9, scale: 2
      t.datetime :when
      t.string :how, limit: 255
      t.string :where_invest, limit: 255

      t.timestamps null: false
    end
  end
end
