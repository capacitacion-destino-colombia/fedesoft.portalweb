class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      # t.references :user, foreign_key: true
      # t.references :colector, foreign_key: true
      t.timestamp :date
      t.integer :number_order
      t.integer :weight_colection
      t.boolean :confirmation
      t.boolean :state
      t.integer :value_credits

      t.belongs_to :user, index: true
      t.belongs_to :colector, index: true

      t.timestamps
    end
  end
end
