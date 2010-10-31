class ViewerController < ApplicationController
def index
	@page = Page.find_by_name("Home")
end  

def show
	@page = Page.find_by_name(params[:name])
	if params[:name] = "Councilors"
	@candidates = Candidate.all
	end

end


end
