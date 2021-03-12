class Api::V1::InquiriesController < ApplicationController
    before_action :find_inquiry, only: [:update]

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

    def update
        @inquiry.update(inquiry_params)
        if @inquiry.save
          render json: @inquiry, status: :accepted
        else
          render json: { errors: @inquiry.errors.full_messages }, status: :unprocessible_entity
        end
      end

    private

    def inquiry_params
        params.require(:inquiry).permit(:comment, :pet_id)
    end

    def find_inquiry
        @inquiry = Inquiry.find(params[:id])
    end

end
