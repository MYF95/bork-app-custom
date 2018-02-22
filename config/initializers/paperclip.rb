if Rails.env.production?
  Paperclip::Attachment.default_options[:s3_credentials] = {
      bucket: ENV['S3_BUCKET_NAME'],
      access_key_id: ENV['AWS_ACCESS_KEY_ID'],
      secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
      s3_region: ENV['S3_REGION'],
      s3_host_name: ENV['S3_HOST_NAME']
  }
  Paperclip::Attachment.default_options[:storage] = :s3
  Paperclip::Attachment.default_options[:default_url] = ENV['S3_DEFAULT_URL']
  Paperclip.options[:command_path] = 'usr/local/bin'
else
  Paperclip::Attachment.default_options[:default_url] = "/assets/:style/default.jpg"
end