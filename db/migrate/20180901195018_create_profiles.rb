class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :rank
      t.integer :credits
      t.integer :stars
      t.integer :pickups
      t.binary :picture
      t.binary :medal
      t.boolean :course_validation
      t.boolean :colector_validation
      t.integer :deliveries
      t.string :total_recicled
      t.string :total_delivered
      t.datetime :creation_date
      t.references :course, foreign_key: true
      t.references :donations, foreign_key: true
      t.references :complaints, foreign_key: true
      t.references :users, foreign_key: true
      t.references :colector, foreign_key: true
      t.references :boxs, foreign_key: true
      t.references :recicle_report, foreign_key: true

      t.timestamps
    end
  end
end
