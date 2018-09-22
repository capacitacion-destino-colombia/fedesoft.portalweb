class CreateDonations < ActiveRecord::Migration[5.2]
  def change
    create_table :donations do |t|
      t.string :name
      t.float :value
      t.string :type
      t.integer :account
      t.timestamp :date
      t.references :id_perfil, foreign_key: true

      t.timestamps
    end
    create_join_table :donations, :profiles do |t|
    end
  end
end
