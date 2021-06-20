class Api::VenuesController < Api::BaseController
  before_action :set_venue, only: [:show, :update, :destroy]
  before_action :authenticate_user!, only: [ :create, :update, :destroy]
  before_action :check_if_manager, only: [:update, :destroy]

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
      city: venue_params[:city],
      address: venue_params[:address],
      zipcode: venue_params[:zipcode],
      price: venue_params[:price],
      cuisine: venue_params[:cuisetime],
      phone_number: venue_params[:phone_number],
      terrace: venue_params[:terrace],
      seatnumber: venue_params[:seatnumber],
      description: venue_params[:description]
    )
    @venue.user_id = current_user.id
    puts "\nLes premiers params sont ok !\n"
    @venue.images.attach(venue_params[:images])
    puts "\nLes images sont ok !\n"
    if @venue.save
      render json: @venue, status: :created, location: @api_venue
      puts "\n C'est censé rendre le JSON ! \n"
    else
      render json: @venue.errors, status: :unprocessable_entity
      puts "\n La ça marche pas! \n"
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
    
    def check_if_manager
      unless current_user && current_user.id == @venue.user_id
        render json: {success: false, error: "You can't modify this venue"}, status: 401
      end
    end

    # Only allow a list of trusted parameters through.
    def venue_params
      params.permit(:name, :city, :address, :zipcode, :price, :cuisine, :phone_number, :terrace, :seatnumber, :description, :user_id, images: [])
    end
end
