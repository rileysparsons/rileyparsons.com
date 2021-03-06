class Work < ActiveRecord::Base

	validates :description, presence: true
	validates :start_date, presence: true

	before_save :sanitize_skills_string

	def sanitize_skills_string
		unless self.skills.nil?
			self.skills = self.skills.downcase
		end
	end
end
