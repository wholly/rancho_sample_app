class ContentObserver < ActiveRecord::Observer
   observe :content

    def after_save(content)
      Indexer.index(content)
    end

end
