class ApplicationController < ActionController::Base

    before_action :configure_permitted_parameters, if: :devise_controller?


    def after_sign_in_path_for(resource)
        case resource
        when User
            barcodes_show_path
        when Admin
            barcodes_index_path
        end
    end

    def after_sign_out_path_for(resource)
        # byebug
        case resource
        when :user
            barcodes_index_path
        when :admin
            barcodes_index_path
        end
    end

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    end

end
