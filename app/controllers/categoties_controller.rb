class CategotiesController < ApplicationController
  before_action :set_categoty, only: %i[ show edit update destroy ]

  # GET /categoties or /categoties.json
  def index
    @categoties = Categoty.all
  end

  # GET /categoties/1 or /categoties/1.json
  def show
  end

  # GET /categoties/new
  def new
    @categoty = Categoty.new
  end

  # GET /categoties/1/edit
  def edit
  end

  # POST /categoties or /categoties.json
  def create
    @categoty = Categoty.new(categoty_params)

    respond_to do |format|
      if @categoty.save
        format.html { redirect_to categoty_url(@categoty), notice: "Categoty was successfully created." }
        format.json { render :show, status: :created, location: @categoty }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @categoty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categoties/1 or /categoties/1.json
  def update
    respond_to do |format|
      if @categoty.update(categoty_params)
        format.html { redirect_to categoty_url(@categoty), notice: "Categoty was successfully updated." }
        format.json { render :show, status: :ok, location: @categoty }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @categoty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categoties/1 or /categoties/1.json
  def destroy
    @categoty.destroy

    respond_to do |format|
      format.html { redirect_to categoties_url, notice: "Categoty was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categoty
      @categoty = Categoty.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def categoty_params
      params.require(:categoty).permit(:category)
    end
end
