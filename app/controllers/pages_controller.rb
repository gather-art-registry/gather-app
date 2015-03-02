class PagesController < ApplicationController
  def home
  	@latest_items = Item.take(8)
  	@featured_items = Item.take(8)
  	@trending_items = Item.take(8)
  end

  def about
  end

  def terms_of_us
  end

  def privacy_policy
  end
end
