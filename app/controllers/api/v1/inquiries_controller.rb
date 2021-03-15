class Api::V1::InquiriesController < ApplicationController
    before_action :find_inquiry, only: [:update]

    def index
        inquiries = Inquiry.all
        render json: inquiries.arr_to_json
    end

    def show
        @inquiry
        render json: @inquiry.instance_to_json
    end

    def create
        inquiry = Inquiry.create(inquiry_params)
        if inquiry.save   
            render json: inquiry.instance_to_json
        else 
            render json: {errors: inquiry.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def update
        @inquiry.update(saves:params[:saves])
        if @inquiry.save
          render json: @inquiry.instance_to_json
        else
          render json: { errors: @inquiry.errors.full_messages }, status: :unprocessible_entity
        end
      end

    private

    def inquiry_params
        params.require(:inquiry).permit(:comment, :pet_id, :pet, :saves)
    end

    def find_inquiry
        @inquiry = Inquiry.find(params[:id])
    end

end
