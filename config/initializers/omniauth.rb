Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :google_oauth2, ENV['GOOGLE_ID'], ENV['GOOGLE_SECRET'], scope: 'Google::Apis::CalendarV3::AUTH_CALENDAR'
  provider :google_oauth2, ENV['GOOGLE_ID'], ENV['GOOGLE_SECRET']
end
