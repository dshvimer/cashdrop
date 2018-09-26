class PayeesController < ApplicationController
  before_action :set_payee, only: [:show, :update, :destroy]

  # GET /payees
  def index
    @payees = Payee.all

    render json: @payees
  end

  # GET /payees/1
  def show
    render json: @payee
  end

  # POST /payees
  def create
    @payee = Payee.new(payee_params)

    if @payee.save
      render json: @payee, status: :created, location: @payee
    else
      render json: @payee.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /payees/1
  def update
    if @payee.update(payee_params)
      render json: @payee
    else
      render json: @payee.errors, status: :unprocessable_entity
    end
  end

  # DELETE /payees/1
  def destroy
    @payee.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payee
      @payee = Payee.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def payee_params
      params.require(:payee).permit(:user, :stripe_id)
    end
end
