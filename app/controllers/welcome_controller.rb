class WelcomeController < ApplicationController
  def index
	@web = Content.new
     
 
      
 
  end

  def search

#    @posts = Post.paginate :page => params[:page], :order => 'updated_at DESC' 

@search_keywords = params[:query]
@lat = params[:lat]
@lng = params[:lng]
@radius = params[:radius]
@results_with_ranks = Lukup.new.search(@search_keywords,@lat,@lng,@radius)

end
  
def details 
	
	@content_id = params[:id]		

  end

end
