require 'shrine'
require 'shrine/storage/file_system'
require 'shrine/storage/memory'
require 'shrine/storage/s3'

  s3 = Shrine::Storage::S3.new(
    bucket: 'iklf-user-avatars', # required
    region: 'us-east-1', # required
    access_key_id: ENV['S3_ACCESS_KEY'],
    secret_access_key: ENV['S3_SECRET_ACCESS_KEY']
  )

if Rails.env.test?
  Shrine.storages = {
    cache: Shrine::Storage::Memory.new,
    store: Shrine::Storage::Memory.new
  }
elsif Rails.env.development?
  Shrine.storages = { cache: Shrine::Storage::FileSystem.new('public', prefix: 'uploads/cache'), # temporary
                      store: Shrine::Storage::FileSystem.new('public', prefix: 'uploads') # permanent
  }
else
  s3
end

#------ Plugins
Shrine.plugin :activerecord # loads Active Record integration
Shrine.plugin :cached_attachment_data # enables retaining cached file across form redisplays
Shrine.plugin :determine_mime_type, analyzer: :fastimage
Shrine.plugin :restore_cached_data  # extracts metadata for assigned cached files
Shrine.plugin :store_dimensions,    analyzer: :mini_magick
Shrine.plugin :validation_helpers
Shrine.plugin :validation
