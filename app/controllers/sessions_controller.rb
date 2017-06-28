class SessionsController < ApplicationController

  def create
    auth = request.env["omniauth.auth"]
    user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    redirect_to root_url, :notice => "Signed in!"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end


# This is the action to add a new event into the google calendar!

# def new_event
#     client = Signet::OAuth2::Client.new({
#       client_id: Rails.application.secrets.google_client_id,
#       client_secret: Rails.application.secrets.google_client_secret,
#       token_credential_uri: 'https://accounts.google.com/o/oauth2/token'
#     })
#
#     client.update!(session[:authorization])
#
#     service = Google::Apis::CalendarV3::CalendarService.new
#     service.authorization = client
#
#     today = Date.today
#
#     event = Google::Apis::CalendarV3::Event.new({
#       start: Google::Apis::CalendarV3::EventDateTime.new(date: today),
#       end: Google::Apis::CalendarV3::EventDateTime.new(date: today + 1),
#       summary: 'New event!'
#     })
#
#     service.insert_event(params[:calendar_id], event)
#
#     redirect_to events_url(calendar_id: params[:calendar_id])
#   end
end
