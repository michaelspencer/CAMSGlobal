class SearchController < ApplicationController
  # GET /search
  # GET /search.xml

  def index

    escaped_searchvalue =  params[:searchvalue].gsub('%', '\%').gsub('_', '\_')
    @posts = Post.find(:all, :conditions => ["content like ?", "%" + escaped_searchvalue + "%"])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post }
    end
  end

end