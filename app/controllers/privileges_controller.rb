class PrivilegesController < ApplicationController
  before_action :set_privilege, only: [:show, :update, :destroy]

  # GET /privileges
  # GET /privileges.json
  def index
    @privileges = Privilege.all
  end

  # GET /privileges/1
  # GET /privileges/1.json
  def show
  end

  # POST /privileges
  # POST /privileges.json
  def create
    @privilege = Privilege.new(privilege_params)

    if @privilege.save
      render :show, status: :created, location: @privilege
    else
      render json: @privilege.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /privileges/1
  # PATCH/PUT /privileges/1.json
  def update
    if @privilege.update(privilege_params)
      render :show, status: :ok, location: @privilege
    else
      render json: @privilege.errors, status: :unprocessable_entity
    end
  end

  # DELETE /privileges/1
  # DELETE /privileges/1.json
  def destroy
    @privilege.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_privilege
      @privilege = Privilege.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def privilege_params
      params.require(:privilege).permit(:user_id, :privilege, :enabled)
    end
end
