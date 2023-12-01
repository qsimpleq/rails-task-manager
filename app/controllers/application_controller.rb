require 'application_responder'

class ApplicationController < ActionController::Base
  include AuthHelper
  helper_method :current_user

  def self.responder
    ApplicationResponder
  end
end
