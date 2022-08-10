class MountingsController < ApplicationController
  before_action :set_mounting, only: %i[ show edit update destroy ]

  # GET /mountings or /mountings.json
  def index
    @mountings = Mounting.all
  end

  # GET /mountings/1 or /mountings/1.json
  def show
  end

  # GET /mountings/new
  def new
    @mounting = Mounting.new
  end

  # GET /mountings/1/edit
  def edit
  end

  # POST /mountings or /mountings.json
  def create
    @mounting = Mounting.new(mounting_params)

    respond_to do |format|
      if @mounting.save
        format.html { redirect_to mounting_url(@mounting), notice: "Mounting was successfully created." }
        format.json { render :show, status: :created, location: @mounting }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mounting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mountings/1 or /mountings/1.json
  def update
    respond_to do |format|
      if @mounting.update(mounting_params)
        format.html { redirect_to mounting_url(@mounting), notice: "Mounting was successfully updated." }
        format.json { render :show, status: :ok, location: @mounting }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mounting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mountings/1 or /mountings/1.json
  def destroy
    @mounting.destroy

    respond_to do |format|
      format.html { redirect_to mountings_url, notice: "Mounting was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mounting
      @mounting = Mounting.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mounting_params
      params.require(:mounting).permit(:book_id, :part_id)
    end
end
