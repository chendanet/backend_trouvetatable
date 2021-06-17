class Api::BookingsController < Api::BaseController

    def index
        @bookings = Booking.all
    
        render json: @bookings
      end

      def show
        render json: @booking
      end

      def create
        @user = current_user        
        @booking = Booking.new(
            seat: booking_params[:seat], 
            time: booking_params[:time], 
            date: booking_params[:date], 
            venue_id: booking_params[:venue_ud], 
            user_id: @user.id, 
            
# Il faut reflechir comment faire le venue_id
    
        if @booking.save
                render json: @booking, status: :created, location: @api_booking
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
            
end
