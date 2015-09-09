class ChilddfsController < ApplicationController
  before_action :set_childdf, only: [:show, :edit, :update, :destroy]

  # GET /childdfs
  # GET /childdfs.json
  def index
    @childdfs = Childdf.all
  end

  # GET /childdfs/1
  # GET /childdfs/1.json
  def show
  end

  # GET /childdfs/new
  def new
    @childdf = Childdf.new
  end

  # GET /childdfs/1/edit
  def edit
  end

  # POST /childdfs
  # POST /childdfs.json
  def create
    @childdf = Childdf.new(childdf_params)

    respond_to do |format|
      if @childdf.save
        format.html { redirect_to @childdf, notice: 'Childdf was successfully created.' }
        format.json { render :show, status: :created, location: @childdf }
      else
        format.html { render :new }
        format.json { render json: @childdf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /childdfs/1
  # PATCH/PUT /childdfs/1.json
  def update
    respond_to do |format|
      if @childdf.update(childdf_params)
        format.html { redirect_to @childdf, notice: 'Childdf was successfully updated.' }
        format.json { render :show, status: :ok, location: @childdf }
      else
        format.html { render :edit }
        format.json { render json: @childdf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /childdfs/1
  # DELETE /childdfs/1.json
  def destroy
    @childdf.destroy
    respond_to do |format|
      format.html { redirect_to childdfs_url, notice: 'Childdf was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_childdf
      @childdf = Childdf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def childdf_params
      params.require(:childdf).permit(:name, :parent_id)
    end
end
