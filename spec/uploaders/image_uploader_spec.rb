require "rails_helper"
require 'carrierwave/test/matchers'

describe ImageUploader do
  include CarrierWave::Test::Matchers

  def cache_dir
    "#{Rails.root}/tmp/uploads/#{Rails.env}/images"
  end

  def store_dir
    "system/attachments/#{Rails.env}/images/#{model.id}/"
  end

  before do
    MyUploader.enable_processing = true
    @uploader = MyUploader.new(@registry, :image)
    @uploader.store!(File.open(path_to_file))
  end

  after do
    MyUploader.enable_processing = false
    @uploader.remove!
  end

  context 'the thumb version' do
    it "should scale down a landscape image to be exactly 64 by 64 pixels" do
      @uploader.thumb.should have_dimensions(64, 64)
    end
  end

  context 'the small version' do
    it "should scale down a landscape image to fit within 200 by 200 pixels" do
      @uploader.small.should be_no_larger_than(200, 200)
    end
  end

  it "should make the image readable only to the owner and not executable" do
    @uploader.should have_permissions(0600)
  end
end