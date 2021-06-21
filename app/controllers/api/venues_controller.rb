class Api::VenuesController < Api::BaseController
  before_action :set_venue, only: [:show, :update, :destroy]
  before_action :authenticate_user!, only: [ :create, :update, :destroy]

  def index
    @venues = Venue.all
    render json: @venues
  end

  # GET /venues/1
  def show
    render json: @venue
  end

  # POST /venues
  def create
    # @venue = Venue.new(
    #   name: venue_params[:name],
    #   city: venue_params[:city],
    #   address: venue_params[:address],
    #   zipcode: venue_params[:zipcode],
    #   price: venue_params[:price],
    #   cuisine: venue_params[:cuisetime],
    #   phone_number: venue_params[:phone_number],
    #   terrace: venue_params[:terrace],
    #   seatnumber: venue_params[:seatnumber],
    #   description: venue_params[:description]
    # )
    @venue = Venue.new(venue_params)
    @venue.user_id = current_user.id
    @venue.images.attach(venue_params[:images])
    if @venue.save
      render json: @venue, status: :created, location: @api_venue
    else
      render json: @venue.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /venues/1
  def update
    if @venue.update(venue_params)
      render json: @venue
    else
      render json: @venue.errors, status: :unprocessable_entity
    end
  end

  # DELETE /venues/1
  def destroy
    @venue.destroy
  end

  # def search
  #   if params[:search].blank?  
  #    return  
  #   else  
  #     @results = Venue.ransack(name_cont: params[:q]).result(distinct: true).limit(5)
  #     render json: @results
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_venue
      @venue = Venue.find(params[:id])
    end
    
    # Only allow a list of trusted parameters through.
    def venue_params
      params.permit(:name, :city, :address, :zipcode, :price, :cuisine, :phone_number, :terrace, :seatnumber, :description, :user_id, images: [])
    end
end
