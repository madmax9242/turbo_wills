class FourthScenariosController < ApplicationController
  before_action :set_fourth_scenario, only: [:show, :edit, :update, :destroy]

  # GET /fourth_scenarios
  # GET /fourth_scenarios.json
  def index
    @fourth_scenarios = FourthScenario.all
  end

  # GET /fourth_scenarios/1
  # GET /fourth_scenarios/1.json
  def show
  end

  # GET /fourth_scenarios/new
  def new
    @fourth_scenario = FourthScenario.new
  end

  # GET /fourth_scenarios/1/edit
  def edit
  end

  # POST /fourth_scenarios
  # POST /fourth_scenarios.json
  def create
    @fourth_scenario = FourthScenario.new(fourth_scenario_params)

    respond_to do |format|
      if @fourth_scenario.save
        format.html { redirect_to @fourth_scenario, notice: 'Fourth scenario was successfully created.' }
        format.json { render :show, status: :created, location: @fourth_scenario }
      else
        format.html { render :new }
        format.json { render json: @fourth_scenario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fourth_scenarios/1
  # PATCH/PUT /fourth_scenarios/1.json
  def update
    respond_to do |format|
      if @fourth_scenario.update(fourth_scenario_params)
        format.html { redirect_to @fourth_scenario, notice: 'Fourth scenario was successfully updated.' }
        format.json { render :show, status: :ok, location: @fourth_scenario }
      else
        format.html { render :edit }
        format.json { render json: @fourth_scenario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fourth_scenarios/1
  # DELETE /fourth_scenarios/1.json
  def destroy
    @fourth_scenario.destroy
    respond_to do |format|
      format.html { redirect_to fourth_scenarios_url, notice: 'Fourth scenario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fourth_scenario
      @fourth_scenario = FourthScenario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fourth_scenario_params
      params.require(:fourth_scenario).permit(:ami_cc_only, :ami_cc_plus, :ami_reg_med, :ami_invasive, :ami_respirator, :ami_dialysis, :ami_cpr, :bi_cc_only, :bi_cc_plus, :bi_reg_med, :bi_invasive, :bi_respirator, :bi_dialysis, :bi_cpr, :string)
    end
end
