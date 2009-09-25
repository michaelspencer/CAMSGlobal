class HomepartnersController < ApplicationController
  # GET /homeclients
  # GET /homeclients.xml

  def index
    @posts = Post.find(:all, :conditions => "pagetype = 'homepartners'", :limit => 1)

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post }
    end
  end

end