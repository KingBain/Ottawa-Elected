class NewsarticlesController < ApplicationController
  # GET /newsarticles
  # GET /newsarticles.xml
  def index
    @newsarticles = Newsarticle.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @newsarticles }
    end
  end

  # GET /newsarticles/1
  # GET /newsarticles/1.xml
  def show
    @newsarticle = Newsarticle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @newsarticle }
    end
  end

  # GET /newsarticles/new
  # GET /newsarticles/new.xml
  def new
    @newsarticle = Newsarticle.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @newsarticle }
    end
  end

  # GET /newsarticles/1/edit
  def edit
    @newsarticle = Newsarticle.find(params[:id])
  end

  # POST /newsarticles
  # POST /newsarticles.xml
  def create
    @newsarticle = Newsarticle.new(params[:newsarticle])

    respond_to do |format|
      if @newsarticle.save
        format.html { redirect_to(@newsarticle, :notice => 'Newsarticle was successfully created.') }
        format.xml  { render :xml => @newsarticle, :status => :created, :location => @newsarticle }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @newsarticle.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /newsarticles/1
  # PUT /newsarticles/1.xml
  def update
    @newsarticle = Newsarticle.find(params[:id])

    respond_to do |format|
      if @newsarticle.update_attributes(params[:newsarticle])
        format.html { redirect_to(@newsarticle, :notice => 'Newsarticle was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @newsarticle.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /newsarticles/1
  # DELETE /newsarticles/1.xml
  def destroy
    @newsarticle = Newsarticle.find(params[:id])
    @newsarticle.destroy

    respond_to do |format|
      format.html { redirect_to(newsarticles_url) }
      format.xml  { head :ok }
    end
  end
end
