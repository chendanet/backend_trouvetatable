class Api::VenuesController < Api::BaseController
  before_action :set_venue, only: [:show, :update, :destroy]

  # GET /venues
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
    @venue = Venue.new(
      name: venue_params[:name], 
      address: venue_params[:address], 
      city: venue_params[:city],
      price: venue_params[:price],
      cuisine: venue_params[:cuisine], 
      category: venue_params[:category],
      phone_number: venue_params[:phone_number],
      zipcode: venue_params[:zipcode],
      description: venue_params[:description],
      terrace: venue_params[:terrace],
      seatnumber: venue_params[:seatnumber],
      lat: venue_params[:lat],
      lng: venue_params[:lng]
      )
    
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_venue
      @venue = Venue.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def venue_params
      params.permit(:name, :address, :city, :price, :cuisine, :category, :phone_number, :zipcode, :description, :terrace, :seatnumber, :lat, :lng, images: [])
    end
end
