class CreateColectors < ActiveRecord::Migration[5.2]
  def change
    create_table :colectors do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.boolean :course_approved
      t.boolean :validation
      t.datetime :date_inscription

      t.timestamps
    end
    create_join_table :profiles, :colectors do |t|
    end
  end
end
