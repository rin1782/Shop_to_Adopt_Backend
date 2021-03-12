class Api::V1::InquiriesController < ApplicationController

    def index
        inquiries = Inquiry.all
        render json: InquirySerializer.new(inquiries)
    end

    def create
        inquiry = Inquiry.new(inquiry_params)
        if inquiry.save
            render json: inquiry, status: :accepted
        else 
            render json: {errors: inquiry.errors.full_messages}, status: :unprocessible_entity
        end
    end

    private

    def inquiry_params
        params.require(:inquiry).permit(:comment, :pet_id)
    end

end
