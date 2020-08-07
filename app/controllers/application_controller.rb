class ApplicationController < ActionController::Base
  before_action :authenticate_user!
#定義されたアクションの前に実行  :ログイン済みユーザーのみ許可、ログイン前はログイン画面に
before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
