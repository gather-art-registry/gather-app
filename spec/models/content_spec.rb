require 'rails_helper'

RSpec.describe Content, type: :model do
  it "is invalid without a page" do
    content = Content.new(page: nil)
    content.valid?
    expect(content.errors[:page]).to include("can't be blank")
  end
end
