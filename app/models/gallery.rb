class Gallery < ActiveRecord::Base
  # attr_accessible :gallery_id, :name, :image
  mount_uploader :image, ImageUploader
end
