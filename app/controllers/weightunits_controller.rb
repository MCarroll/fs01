class WeightunitsController < ApplicationController
  before_action :set_weightunit, only: [:show, :edit, :update, :destroy]

  # GET /weightunits
  def index
    @pagy, @weightunits = pagy(Weightunit.sort_by_params(params[:sort], sort_direction))

    # We explicitly load the records to avoid triggering multiple DB calls in the views when checking if records exist and iterating over them.
    # Calling @weightunits.any? in the view will use the loaded records to check existence instead of making an extra DB call.
    @weightunits.load
  end

  # GET /weightunits/1
  def show
  end

  # GET /weightunits/new
  def new
    @weightunit = Weightunit.new
  end

  # GET /weightunits/1/edit
  def edit
  end

  # POST /weightunits
  def create
    @weightunit = Weightunit.new(weightunit_params)

    if @weightunit.save
      redirect_to @weightunit, notice: "Weight Unit was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /weightunits/1
  def update
    if @weightunit.update(weightunit_params)
      redirect_to @weightunit, notice: "Weight Unit was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /weightunits/1
  def destroy
    @weightunit.destroy
    redirect_to weightunits_url, notice: "Weight Unit was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_weightunit
    @weightunit = Weightunit.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def weightunit_params
    params.require(:weightunit).permit(:unit)
  end
end
