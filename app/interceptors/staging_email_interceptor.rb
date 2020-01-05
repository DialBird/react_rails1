class StagingEmailInterceptor
  def self.delivering_email(message)
    message.to = [Settings.email.staging_catcher]
  end
end
