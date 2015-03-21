require "rails_helper"
require 'carrierwave/test/matchers'

describe ImageUploader do
  include CarrierWave::Test::Matchers

  def cache_dir
    "#{Rails.root}/public/uploads/tmp/"
  end

  def store_dir
    "#{Rails.root}/public/uploads/#{model}/#{model.id}/"
  end

  before do
    ImageUploader.enable_processing = true
    @uploader = ImageUploader.new(@registry, :image_1)
    @uploader.store!(File.open(path_to_file))
  end

  after do
    ImageUploader.enable_processing = false
    @uploader.remove!
  end

  describe 'the thumb version' do
    it "scales down a landscape image to be exactly 200 by 200 pixels" do
      expect(@uploader.thumb).to have_dimensions(200, 200)
    end
  end

  describe 'the small version' do
    it "scales down a landscape image to fit within 350 by 350 pixels" do
      expect(@uploader.small).to have_dimensions(350, 350)
    end
  end

  describe 'the full_size version' do
    it "scales down a landscape image to fit within 600 by 600 pixels" do
      expect(@uploader.full_size).to have_dimensions(600, 600)
    end
  end

  # it "should make the image readable only to the owner and not executable" do
  #   @uploader.should have_permissions(0600)
  # end
end