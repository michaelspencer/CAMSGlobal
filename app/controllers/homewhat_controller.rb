class HomewhatController < ApplicationController
  # GET /homewhat
  # GET /homewhat.xml

  def index

    if params[:industry] == nil then
      @posts = Post.find(:all, :conditions => "pagetype = 'homewhat'", :limit => 1)
    else
      @posts = Post.find(:all, :conditions => [ "pagetype = 'project' AND industry = ?", params[:industry] ], :order => "end_date DESC, start_date DESC")
    end

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post }
    end
  end

end