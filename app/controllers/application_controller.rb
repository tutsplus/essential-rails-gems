class ApplicationController < ActionController::Base
  include Pundit
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_locale
  before_action :authenticate_user!

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options options = {}
    { locale: I18n.locale }.merge options
  end

  protected

  def user_not_authorized
    redirect_to root_path, alert: "You are not allowed to do that."
  end
end
