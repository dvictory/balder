# encoding: utf-8
module Balder

  class FileUploader < CarrierWave::Uploader::Base

    # Include RMagick or ImageScience support
          include CarrierWave::RMagick
    #     include CarrierWave::ImageScience
         #include CarrierWave::MiniMagick
    # Choose what kind of storage to use for this uploader
    if ENV['S3_KEY']
      storage :fog

      def cache_dir
        if ENV['HEROKU'] == 'true'
          "#{Rails.root.to_s}/tmp/uploads"
        else
          "balder/uploads/tmp"
        end
      end
    else
      storage :file
    end

    # Override the directory where uploaded files will be stored
    # This is a sensible default for uploaders that are meant to be mounted:
    def store_dir
      #"uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
      "balder/#{model.album.path}/#{mounted_as}/#{model.id}"
      #ENV['STORAGE_PATH'] + "/files/#{model.album.path}"
      #"#{ENV['STORAGE_PATH']}/files/#{model.album.path}" unless ENV['STORAGE_PATH'].nil?
      #"/uploads/files/#{model.album.path}" if ENV['STORAGE_PATH'].nil?
    end

    # Provide a default URL as a default if there hasn't been a file uploaded
    #     def default_url
    #       "/images/fallback/" + [version_name, "default.png"].compact.join('_')
    #     end

    # Process files as they are uploaded.
    #     process :scale => [200, 300]
    #
    #     def scale(width, height)
    #       # do something
    #     end

    # Create different versions of your uploaded files
     version :collection do
       process :resize_to_fill => [200, 200]
       def store_dir2
         ENV['STORAGE_PATH'] + "/thumbs/#{model.album.path}" unless ENV['STORAGE_PATH'].nil?
         "/uploads/thumbs/#{model.album.path}" if ENV['STORAGE_PATH'].nil?
       end
     end
     version :album do
       process :resize_to_fill => [100, 100]
       def store_dir2
         ENV['STORAGE_PATH'] + "/thumbs/#{model.album.path}" unless ENV['STORAGE_PATH'].nil?
         "/uploads/thumbs/#{model.album.path}" if ENV['STORAGE_PATH'].nil?
       end
     end
     version :preview do
       process :resize_to_fit => [210, 210]
       def store_dir2
         ENV['STORAGE_PATH'] + "/thumbs/#{model.album.path}" unless ENV['STORAGE_PATH'].nil?
         "/uploads/thumbs/#{model.album.path}" if ENV['STORAGE_PATH'].nil?
       end
     end
     version :single do
       process :resize_to_limit => [900, 900]
       def store_dir2
         ENV['STORAGE_PATH'] + "/thumbs/#{model.album.path}" unless ENV['STORAGE_PATH'].nil?
         "/uploads/thumbs/#{model.album.path}" if ENV['STORAGE_PATH'].nil?
       end
     end

    # Add a white list of extensions which are allowed to be uploaded,
    # for images you might use something like this:
     def extension_white_list
       %w(jpg jpeg gif png bmp tiff)
     end

    # Override the filename of the uploaded files
    #     def filename
    #       "something.jpg" if original_filename
    #     end

  end
end