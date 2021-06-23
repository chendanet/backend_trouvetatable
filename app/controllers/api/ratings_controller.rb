class Api::RatingsController < Api::BaseController
    before_action :set_rating, only: [:show, :update, :destroy]
    before_action :authenticate_user!, only: [:create, :update, :destroy]
    before_action :is_owner , only: [:edit, :update, :destroy]
    
    def index
        @ratings = Rating.all
    
        render json: @ratings.to_json(include:[:venue])
    end

    def show
        render json: @rating.to_json(include:[:venue])
    end

    def create
       
        @rating = Rating.new(rating_params)
 
        if @rating.save
            render json: @rating, status: :created
        else
            render json: @rating.errors, status: :unprocessable_entity
        end    
     end

    def update
        if @rating.update(rating_params)
            render json: @rating
         else
            render json: @rating.errors, status: :unprocessable_entity
        end
    end

     def destroy
          @rating.destroy
     end

    private

    def set_rating
        @rating = rating.find(params[:id])
    end

    def rating_params
        params.require(:rating).permit(:review, :score, :venue_id, :user_id)
    end

      def is_owner 
        @rating= Rating.find(params[:id])
        unless @rating.user == current_user
          render json: nil, status: :forbidden
          return
        end
      end

end
