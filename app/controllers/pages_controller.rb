class PagesController < ApplicationController
  def home
  	@latest_items = Item.all
  	@featured_items = Item.all
  	@trending_items = Item.all
  end

  def about
  end

  def terms_of_us
  end

  def privacy_policy
  end
end
