class WelcomeController < ApplicationController

def index
	@works = Work.all.order("startDate desc")
end

end
