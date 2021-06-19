class Api::BookingsController < Api::BaseController
    # before_action :set_booking, only: [:show, :update, :destroy]
    # before_action :authenticate_user!, only: [:create, :update, :destroy]
    # before_action :is_owner , only: [:edit, :update, :destroy]

    def index
        @bookings = Booking.all
    
        render json: @bookings.to_json
    end

    def show
        render json: @booking.to_json(include: [:venue])
    end

    def create
       
        @booking = Booking.new(booking_params)
 
        if @booking.save
            render json: @booking, status: :created
        else
            render json: @booking.errors, status: :unprocessable_entity
        end    
     end

    def update
        if @booking.update(booking_params)
            render json: @booking
         else
            render json: @booking.errors, status: :unprocessable_entity
        end
    end

     def destroy
          @booking.destroy
     end

    private

    def set_booking
        @booking = Booking.find(params[:id])
      end

    def booking_params
        params.require(:booking).permit(:seat, :time, :date, :venue_id, :user_id)
    end

      def is_owner 
        @booking= Booking.find(params[:id])
        unless @booking.user == current_user
          render json: nil, status: :forbidden
          return
        end
      end

end
