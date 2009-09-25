class HometeamController < ApplicationController
  # GET /hometeam
  # GET /hometeam.xml

  def index
    @posts = Post.find(:all, :conditions => "pagetype = 'hometeam'", :limit => 1)

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post }
    end
  end

end