class CreateDinnerParties < ActiveRecord::Migration[5.2]
  def change
    create_table :dinner_parties do |t|
      t.belongs_to :host, foreign_key: true
      t.date :date
      t.string :location
      t.time :start_time
      t.time :end_time
      t.string :theme
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
