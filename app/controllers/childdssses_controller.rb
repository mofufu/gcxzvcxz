class ChilddsssesController < ApplicationController
  before_action :set_childdsss, only: [:show, :edit, :update, :destroy]

  # GET /childdssses
  # GET /childdssses.json
  def index
    @childdssses = Childdsss.all
  end

  # GET /childdssses/1
  # GET /childdssses/1.json
  def show
  end

  # GET /childdssses/new
  def new
    @childdsss = Childdsss.new
  end

  # GET /childdssses/1/edit
  def edit
  end

  # POST /childdssses
  # POST /childdssses.json
  def create
    @childdsss = Childdsss.new(childdsss_params)

    respond_to do |format|
      if @childdsss.save
        format.html { redirect_to @childdsss, notice: 'Childdsss was successfully created.' }
        format.json { render :show, status: :created, location: @childdsss }
      else
        format.html { render :new }
        format.json { render json: @childdsss.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /childdssses/1
  # PATCH/PUT /childdssses/1.json
  def update
    respond_to do |format|
      if @childdsss.update(childdsss_params)
        format.html { redirect_to @childdsss, notice: 'Childdsss was successfully updated.' }
        format.json { render :show, status: :ok, location: @childdsss }
      else
        format.html { render :edit }
        format.json { render json: @childdsss.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /childdssses/1
  # DELETE /childdssses/1.json
  def destroy
    @childdsss.destroy
    respond_to do |format|
      format.html { redirect_to childdssses_url, notice: 'Childdsss was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_childdsss
      @childdsss = Childdsss.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def childdsss_params
      params.require(:childdsss).permit(:childdf_id)
    end
end
