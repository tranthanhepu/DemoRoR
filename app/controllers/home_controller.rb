class HomeController < ApplicationController
	
	def index
		
	end	

	def signup

		puts YAML::dump(params)
		render template: "home/index"
	end
end
