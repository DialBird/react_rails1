class MyDeviseMailer < Devise::Mailer
  include Devise::Controllers::UrlHelpers
  helper :application
  layout 'mailer'
end
