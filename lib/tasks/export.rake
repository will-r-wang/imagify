FILTERED_ATTRIBUTES = %w(title caption image_url)

namespace :export do
  desc "Exports all existing images to call ImageCreate for seeds.rb"
  task :seeds_format => :environment do
    Image.all.each do |image|
      puts "ImageCreate.call(#{image.serializable_hash.slice(*FILTERED_ATTRIBUTES).transform_keys(&:to_sym)})"
    end
  end
end
