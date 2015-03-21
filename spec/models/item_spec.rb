require 'rails_helper'

RSpec.describe Item, type: :model do
  it "is invalid without an artist_id" do
    item = Item.new(artist_id: nil)
    item.valid?
    expect(item.errors[:artist_id]).to include("can't be blank")
  end

  it "has many items" do
    t = Item.reflect_on_association(:media)
    expect(t.macro).to eq(:has_many)
  end

  it "has many categories" do
    t = Item.reflect_on_association(:categories)
    expect(t.macro).to eq(:has_many)
  end

  it "has many registries" do
    t = Item.reflect_on_association(:registries)
    expect(t.macro).to eq(:has_many)
  end

  it "has many galleries" do
    t = Item.reflect_on_association(:galleries)
    expect(t.macro).to eq(:has_many)
  end

end
