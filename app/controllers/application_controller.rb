class ApplicationController < ActionController::Base
  
  include Pagy::Backend
  include Pundit
  before_action :authenticate_user!

  

  protect_from_forgery with: :exception
  #after_action :verify_authorized, except: :index, unless: :devise_controller?


  #a method to rescue Pundit errors and customize the response
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized(exception)
    policy_name = exception.policy.class.to_s.underscore
    flash[:alert] = t "#{policy_name}.#{exception.query}", scope: "pundit", default: :default
    redirect_to(request.referrer || root_path)
  end
end
