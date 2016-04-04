class TeammembershipsController < ApplicationController
  before_action :set_teammembership, only: [:show, :edit, :update, :destroy]

  # GET /teammemberships
  # GET /teammemberships.json
  def index
    @teammemberships = Teammembership.all
  end

  # GET /teammemberships/1
  # GET /teammemberships/1.json
  def show
  end

  # GET /teammemberships/new
  def new
    @teammembership = Teammembership.new
  end

  # GET /teammemberships/1/edit
  def edit
  end

  # POST /teammemberships
  # POST /teammemberships.json
  def create
    @teammembership = Teammembership.new(teammembership_params)

    respond_to do |format|
      if @teammembership.save
        format.html { redirect_to @teammembership, notice: 'Teammembership was successfully created.' }
        format.json { render :show, status: :created, location: @teammembership }
      else
        format.html { render :new }
        format.json { render json: @teammembership.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teammemberships/1
  # PATCH/PUT /teammemberships/1.json
  def update
    respond_to do |format|
      if @teammembership.update(teammembership_params)
        format.html { redirect_to @teammembership, notice: 'Teammembership was successfully updated.' }
        format.json { render :show, status: :ok, location: @teammembership }
      else
        format.html { render :edit }
        format.json { render json: @teammembership.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teammemberships/1
  # DELETE /teammemberships/1.json
  def destroy
    @teammembership.destroy
    respond_to do |format|
      format.html { redirect_to teammemberships_url, notice: 'Teammembership was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teammembership
      @teammembership = Teammembership.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teammembership_params
      params.require(:teammembership).permit(:employee_id, :team_id)
    end
end
