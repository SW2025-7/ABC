class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # 新規登録時と編集時に、name, grade, major の保存を許可
    # （前の university は不要なら消してもOKですが、残しておいても害はありません）
    keys = [:name, :grade, :major]
    
    devise_parameter_sanitizer.permit(:sign_up, keys: keys)
    devise_parameter_sanitizer.permit(:account_update, keys: keys)
  end
end
