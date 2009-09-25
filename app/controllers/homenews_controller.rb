class HomenewsController < ApplicationController
  # GET /homenews
  # GET /homenews.xml

  def index

    @posts = Post.find(:all, :conditions => [ "pagetype = 'news'"], :order => "end_date DESC")

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post }
    end
  end

end