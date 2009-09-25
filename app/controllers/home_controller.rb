class HomeController < ApplicationController
  # GET /home
  # GET /home.xml

  def index
    @posts = Post.find(:all, :conditions => "pagetype = 'home'", :limit => 1)

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post }
    end
  end

end