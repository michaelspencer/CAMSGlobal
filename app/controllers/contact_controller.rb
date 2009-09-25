class ContactController < ApplicationController
  # GET /contact
  # GET /contact.xml

  def index
    @posts = Post.find(:all, :conditions => "pagetype = 'contact'", :limit => 1)

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post }
    end
  end

end