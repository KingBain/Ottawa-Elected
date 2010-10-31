class ViewerController < ApplicationController
def index
	@page = Page.find_by_name("Home")
puts "test"
end  

def show
	@page = Page.find_by_name(params[:name])
  end

end
