class Article < ApplicationRecord
  include ImageUploader::Attachment(:image)
#  include VideoUploader::Attachment(:video)

  validates :title, presence: true
end
