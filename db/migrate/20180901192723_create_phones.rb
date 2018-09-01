class CreatePhones < ActiveRecord::Migration[5.2]
  def change
    create_table :phones do |t|
      t.string :type_phone
      t.string :number_phone
      t.boolean :active_phone
      t.datetime :date_create

      
      t.references :user, foreign_key: true
      
      
      t.timestamps
    end
  end
end
