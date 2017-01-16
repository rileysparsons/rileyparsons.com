class FixStartDateColumnName < ActiveRecord::Migration
  def change
	def self.up
	  rename_column :works, :startDate, :start_date
	end

	def self.down
	    # rename back if you need or do something else or do nothing
	end
  end
end
