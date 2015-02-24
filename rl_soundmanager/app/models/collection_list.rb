
class CollectionList < ActiveRecord::Base
  belongs_to :user
	@collection_lists = Collection_List.new {name: "Jack", format:"CD", length: "10:00", size: "20mb"}
	
	def index
	@collection_lists = Collection_List.all
	end
	
  
end
