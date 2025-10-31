class ApplicationController < ActionController::Base
  include DeviseWhitelist
  include CurrentUserConcern

  protect_from_forgery with: :null_session
end
