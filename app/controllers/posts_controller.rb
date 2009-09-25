class PostsController < ApplicationController
  # GET /posts
  # GET /posts.xml

  require 'csv'

  before_filter :find_post,
    :only => [:show, :edit, :update, :destroy]

  def index
    @posts = Post.find(:all, :order=> "pagetype, title")

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @posts }
    end
  end

  # GET /posts/1
  # GET /posts/1.xml
  def show
      respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post }
    end
  end

  # GET /posts/new
  # GET /posts/new.xml
  def new
    @post = Post.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post }
    end
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.xml
  def create
    @post = Post.new(params[:post])

    respond_to do |format|
      if @post.save
        flash[:notice] = 'Post was successfully created.'
        format.html { redirect_to(posts_url) }
        format.xml  { render :xml => @post, :status => :created, :location => @post }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /posts/1
  # PUT /posts/1.xml
  def update
    respond_to do |format|
      if @post.update_attributes(params[:post])
        flash[:notice] = 'Post was successfully updated.'
        format.html { redirect_to(posts_url) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.xml
  def destroy
    @post.destroy

    respond_to do |format|
      format.html { redirect_to(posts_url) }
      format.xml  { head :ok }
    end
  end

  def search
    @posts = Post.find(:all, :conditions => ["content = ?", params[:search_text]])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @posts }
    end
  end


  def import 
  end

  def import_submit  
    
    if params[:file] != nil
      @parsed_file=CSV::Reader.parse(params[:file])
      n=0
      @parsed_file.each do |row|
          p=Post.new
          p.pagetype=row[1]
          p.industry=row[2]
          p.continent=row[3]
          p.country=row[4]
          p.dates=row[5]
          p.title=row[6]
          p.content=row[7]
          p.image_filename=row[8]
          
            
          if p.save
            n=n+1
            GC.start if n%50==0
          end
        end
        flash[:message]="CSV Import Successful,  #{n} new records added to database"
    else
      flash[:message]="No file selected"
    end
  end

  private
    def find_post
      @post = Post.find(params[:id])
    end
end