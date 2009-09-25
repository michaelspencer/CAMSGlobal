class FaqController < ApplicationController
  # GET /faq
  # GET /faq.xml

  def index
    @posts = Post.find(:all, :conditions => "pagetype = 'faq'", :limit => 1)

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post }
    end
  end

end