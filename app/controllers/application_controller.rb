class ApplicationController < ActionController::API
rescue_from ActiveRecord::RecordInvalid, with: :invalid_record



private
def invalid_record(exception)
    render json: {errors: exception.record.errors}, status: :unprocessable_entity
    #render json: {errors: "can't be blank"}, status: :unprocessable_entity
end

end
