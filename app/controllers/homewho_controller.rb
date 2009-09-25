class HomewhoController < ApplicationController
  # GET /homewho
  # GET /homewho.xml

  def index
    @posts = Post.find(:all, :conditions => "pagetype = 'homewho'", :limit => 1)

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post }
    end
  end

end