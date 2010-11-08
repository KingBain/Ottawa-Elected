class BlogController < ApplicationController
  before_filter :loadmetadata

def loadmetadata
@pagetitle = "Page Administration"
@headcode = " " 
end

  def index
	@posts = Post.all(:limit =>3, :order =>"Date" )
  end

  def show
	@page = Page.find_by_name(params[:name])
  end

end
