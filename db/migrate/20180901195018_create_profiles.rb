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
      t.float :total_recicled
      t.float :total_delivered
      t.datetime :creation_date
      t.references :course, foreign_key: true
      
      t.timestamps
    end
    # create_join_table :profiles, :courses do |t|
    # end
  end
end
