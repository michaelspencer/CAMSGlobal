desc 'update categories : energy => renewableenergy'
task :update_categories => :environment do

#  posts = Post.find(:all, :conditions => {:industry => 'agrimarine'})
#  posts.each { |p| 
#    puts "agrimarine=>agriculture: " + p.title
#    p.industry = 'agriculture'
#    p.save
#  }

  posts = Post.find(:all, :conditions => {:industry => 'energy'})
  posts.each { |p| 
    puts "energy=>renewableenergy: " + p.title
    p.industry = 'renewableenergy'
    p.save
  }
end
