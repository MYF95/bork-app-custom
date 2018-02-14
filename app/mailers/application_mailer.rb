class ApplicationMailer < ActionMailer::Base
  default from: "noreply@bork.com"
  layout 'mailer'
end
