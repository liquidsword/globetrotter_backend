class ApplicationController < ActionController::API
    def current_user
      User.first
      #currently a mocked version of "user being logged in"
    end

    def logged_in?
      !!current_user
    end
  end
