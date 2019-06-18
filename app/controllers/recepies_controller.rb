class RecepiesController < ApplicationController
  before_action :set_recepy, only: [:show, :edit, :update, :destroy]
	skip_before_action :verify_authenticity_token

  def index
    @recepies = Recepy.all
  end

  def show
  end

  def new
    @recepy = Recepy.new
  end

  def edit
  end

  def create
    @recepy = Recepy.new(recepy_params)

    respond_to do |format|
      if @recepy.save
        format.html { redirect_to @recepy, notice: 'Recepy was successfully created.' }
        format.json { render :show, status: :created, location: @recepy }
      else
        format.html { render :new }
        format.json { render json: @recepy.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @recepy.update(recepy_params)
        format.html { redirect_to @recepy, notice: 'Recepy was successfully updated.' }
        format.json { render :show, status: :ok, location: @recepy }
      else
        format.html { render :edit }
        format.json { render json: @recepy.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @recepy.destroy
    respond_to do |format|
      format.html { redirect_to recepies_url, notice: 'Recepy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_recepy
      @recepy = Recepy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recepy_params
      params.require(:recepy).permit(:Title, :Description)
    end
end
