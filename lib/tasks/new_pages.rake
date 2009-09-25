desc 'new pages : advisors, partners'
task :new_pages => :environment do

  post = Post.create { |p| 
    p.title = "Home/Advisors Page"
    p.content = "This is the Advisors Page"
    p.pagetype = "homeadvisors"
  }

  post = Post.create { |p| 
    p.title = "Home/Partners Page"
    p.content = "This is the partners Page"
    p.pagetype = "homepartners"
  }

end