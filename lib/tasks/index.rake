require 'config/environment'

namespace :index do
    
    desc 'Index all records for search'
    task :all do
      t_start = Time.now
      puts "Starting to index at #{t_start}"
      Content.all.each{|c|
        Indexer.index(c)
         
        }
      t_end = Time.now  
      puts "Completed indexing at #{t_end}"
    
     
    end
 
  
end
