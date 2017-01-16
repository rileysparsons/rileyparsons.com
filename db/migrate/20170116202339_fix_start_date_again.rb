class FixStartDateAgain < ActiveRecord::Migration
  def change
  	rename_column :works, :startDate, :start_date
  end
end
