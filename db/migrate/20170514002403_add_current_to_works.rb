class AddCurrentToWorks < ActiveRecord::Migration
  def change
    add_column :works, :current, :boolean
  end
end
