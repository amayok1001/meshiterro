class ApplicationController < ActionController::Base
    # deviseを利用する機能が実行される前にconfigure_permitted_parametersが実行
    before_action :configure_permitted_parameters, if: :devise_controller?

    # privateと同じ部類（protectedは他のコントローラからも参照可能）
    protected

    def configure_permitted_parameters
        # nameのデータ操作を許可（ストロングパラメータと同じ）
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    end
end
