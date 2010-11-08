class ViewerController < ApplicationController
def index
	@page = Page.find_by_name("home")
end  

def show

	@page = Page.find_by_name(params[:name])
	@partial = params[:name]

	if params[:name] = "councilors" then	
	@candidates = Candidate.all(:order => "RANDOM()")
	end
end


end
