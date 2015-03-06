class PagesController < ApplicationController
  def home
  	@latest_items = Item.all
  	@featured_items = Item.all
  	@trending_items = Item.all
  end

  def about
    @content = Content.where(page: "About Gather")
  end

  def terms_of_us
  end

  def privacy_policy
  end

  def contact_us
  end

  def team
  end

  def become_an_artist
    @content = Content.where(page: "About Becoming a Gather Artist")
  end

  def using_gather
    @content = Content.where(page: "About Using Gather")
  end

end
