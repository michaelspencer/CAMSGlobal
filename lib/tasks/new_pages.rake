desc 'new pages : team'
task :new_pages => :environment do

  post = Post.create { |p| 
    p.title = "Home/Team Page"
    p.content = "This is the Team Page"
    p.pagetype = "hometeam"
  }

end