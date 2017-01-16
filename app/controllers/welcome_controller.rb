class WelcomeController < ApplicationController

def index
	@works = Work.all.order("start_date desc")
end

end
