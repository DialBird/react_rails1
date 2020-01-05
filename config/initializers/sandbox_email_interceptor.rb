ActionMailer::Base.register_interceptor(StagingEmailInterceptor) if Rails.env.production?
