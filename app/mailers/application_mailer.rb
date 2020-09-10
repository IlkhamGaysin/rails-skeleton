class ApplicationMailer < ActionMailer::Base
  FROM = 'from@example.com'.freeze

  default from: ApplicationMailer::FROM
  layout 'mailer'
end
