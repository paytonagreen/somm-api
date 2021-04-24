class ApplicationController < ActionController::API
    def request_logger
        Rails.logger.info(request.env)
    end
    def application_params
        params.permit(:wine_name, :wine_description, :protein_name, :sauce_name)
    end
end
