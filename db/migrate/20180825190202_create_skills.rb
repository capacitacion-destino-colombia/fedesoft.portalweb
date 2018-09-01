class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.string :description
      #t.references :rol, foreign_key: true
      t.string :resource

      t.timestamps
    end
   create_join_table :skills, :rols do |t|
  end
  end
end
