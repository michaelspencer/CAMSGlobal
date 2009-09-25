class PagesController < ApplicationController

  def index
    @page = params.fetch(:id, 'index')
    expanded_page = "#{RAILS_ROOT}/app/views/pages/#{@page}.html.erb"
    exists = File.exists?( File.expand_path(expanded_page))

    if exists
      render :action => @page
    else
      render :text => "#{expanded_page} doesn't exist"
    end
  end

end
