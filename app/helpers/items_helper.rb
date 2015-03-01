module ItemsHelper
	def artist_item_helper(artist, item)
		if @item.id
			artist_item_path(id: item.id, artist_id: artist.id)
		else
			artist_items_path(artist_id: artist.id)
		end
	end
end
