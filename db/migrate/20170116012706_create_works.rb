class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.text :description
      t.date :startDate
      t.text :skills

      t.timestamps null: false
    end
  end
end
