class Work < ActiveRecord::Base

	before_save :sanitize_skills_string

	def sanitize_skills_string
		self.skills.delete("\s").downcase!
	end
end
