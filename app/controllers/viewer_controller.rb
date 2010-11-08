class ViewerController < ApplicationController
def index
	@page = Page.find_by_name("home")
	@posts = Post.all(:order => "Date DESC", :limit => 3)
	@partial = "home"
end  

def show
	@page = Page.find_by_name(params[:name])

	if params[:name] == "home" then	
	@posts = Post.all(:order => "Date DESC", :limit => 3)
	end

	if params[:name] == "councilors" then	
	@candidates = Candidate.all(:order => "RANDOM()")
	end

	@partial = params[:name]
end


end
