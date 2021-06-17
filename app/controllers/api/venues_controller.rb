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
      name: venue.params[:name], 
      addrress: venue.params[:address], 
      city: venue.params[:city],
      price: venue.params[:price],
      cuisine: venue.params[:cuisine], 
      category: venue.params[:category],
      phone_number: venue.params[:phone_number],
      zipcode: venue.params[:zipcode],
      description: venue.params[:description],
      terrace: venue.params[:terrace],
      seatnumber: venue.params[:seatnumber],
      lat: venue.params[:lat],
      lng: venue.params[:lng]
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
