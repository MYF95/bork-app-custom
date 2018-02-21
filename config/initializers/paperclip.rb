# if Rails.env.production?
#   Paperclip::Attachment.default_options[:s3_credentials] = {
#       :bucket => ENV['S3_BUCKET'],
#       :access_key_id => ENV['S3_ACCESS_KEY'],
#       :secret_access_key => ENV['S3_SECRET_KEY'],
#       :region => 'eu-west-2'
#   }
#   Paperclip::Attachment.default_options[:s3_region] = 'eu-west-2'
#   Paperclip::Attachment.default_options[:s3_host_name] = 'borkapp3.s3.amazonaws.com'
#   Paperclip.options[:command_path] = 'usr/local/bin'
# end