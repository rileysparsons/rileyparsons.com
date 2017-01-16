# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'work_seed.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
	w = Work.new
	w.description = row["description"]
	w.startDate = DateTime.parse(row["startDate"]).to_date
	w.skills = row["skills"]
	if w.save
		puts "Success!"
	else
		puts w.errors.full_messages
	end
end

puts "There are now #{Work.count} rows in the works table"