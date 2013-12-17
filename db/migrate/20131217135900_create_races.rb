class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.string :name
      t.text :description
      t.string :city
      t.string :county
      t.string :country
      t.datetime :start_at

      t.timestamps
    end
  end
end
