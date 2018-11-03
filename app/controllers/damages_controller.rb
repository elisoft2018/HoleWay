class DamagesController < ApplicationController
  before_action :set_damage, only: [:show, :update, :destroy]

  # GET /damages
  # GET /damages.json
  def index
    @damages = Damage.all
  end

  # GET /damages/1
  # GET /damages/1.json
  def show
  end

  # POST /damages
  # POST /damages.json
  def create
    @damage = Damage.new(damage_params)

    if @damage.save
      render :show, status: :created, location: @damage
    else
      render json: @damage.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /damages/1
  # PATCH/PUT /damages/1.json
  def update
    if @damage.update(damage_params)
      render :show, status: :ok, location: @damage
    else
      render json: @damage.errors, status: :unprocessable_entity
    end
  end

  # DELETE /damages/1
  # DELETE /damages/1.json
  def destroy
    @damage.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_damage
      @damage = Damage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def damage_params
      params.require(:damage).permit(:name, :level, :severity, :enabled)
    end
end
