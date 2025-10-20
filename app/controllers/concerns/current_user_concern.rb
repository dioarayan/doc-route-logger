require 'ostruct'

module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || guest_user
  end

  def guest_user
    OpenStruct.new(name: "Guest User", 
                  first_name: "Guest",
                  last_name: "User",
                  email: "guest@example.com"
                  )
  end

  def guest_user_full_name
    "#{guest_user.first_name} #{guest_user.last_name}"
  end
end
