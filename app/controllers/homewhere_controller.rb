class HomewhereController < ApplicationController
  # GET /homewhere
  # GET /homewhere.xml

  def index

    if params[:continent] == nil then
      @posts = Post.find(:all, :conditions => "pagetype = 'homewhere'", :limit => 1)
    else
      @posts = Post.find(:all, :conditions => [ "pagetype = 'project' AND continent = ?", params[:continent] ])
    end

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post }
    end
  end

end