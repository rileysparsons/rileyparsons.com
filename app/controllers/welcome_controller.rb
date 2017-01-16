class WelcomeController < ApplicationController

def index
	@works = Work.all
end

end
