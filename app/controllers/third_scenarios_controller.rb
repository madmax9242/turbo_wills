class ThirdScenariosController < ApplicationController
  before_action :set_third_scenario, only: [:show, :edit, :update, :destroy]
  before_action :set_user

  # GET /third_scenarios
  # GET /third_scenarios.json
  def index
    @third_scenarios = ThirdScenario.all
  end

  # GET /third_scenarios/1
  # GET /third_scenarios/1.json
  def show
  end

  # GET /third_scenarios/new
  def new
    @third_scenario = ThirdScenario.new
  end

  # GET /third_scenarios/1/edit
  def edit
  end

  # POST /third_scenarios
  # POST /third_scenarios.json
  def create
    @third_scenario = ThirdScenario.new(third_scenario_params)
    @third_scenario.user_id = current_user.id

    respond_to do |format|
      if @third_scenario.save

        @result = Result.where(user_id: current_user.id)
        p @result
        # @result.third_scenario_id = @third_scenario.id
        # @result.save

        format.html { redirect_to new_fourth_scenario_path, notice: 'Third scenario was successfully created.' }
        format.json { render :show, status: :created, location: @third_scenario }
      else
        format.html { render :new }
        format.json { render json: @third_scenario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /third_scenarios/1
  # PATCH/PUT /third_scenarios/1.json
  def update
    respond_to do |format|
      if @third_scenario.update(third_scenario_params)
        format.html { redirect_to @third_scenario, notice: 'Third scenario was successfully updated.' }
        format.json { render :show, status: :ok, location: @third_scenario }
      else
        format.html { render :edit }
        format.json { render json: @third_scenario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /third_scenarios/1
  # DELETE /third_scenarios/1.json
  def destroy
    @third_scenario.destroy
    respond_to do |format|
      format.html { redirect_to third_scenarios_url, notice: 'Third scenario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_third_scenario
      @third_scenario = ThirdScenario.find(params[:id])
    end

    def set_user 
      @user = current_user
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def third_scenario_params
      params.require(:third_scenario).permit(:ami_cc_only, :ami_cc_plus, :ami_reg_med, :ami_invasive, :ami_respirator, :ami_dialysis, :ami_cpr, :bi_cc_only, :bi_cc_plus, :bi_reg_med, :bi_invasive, :bi_respirator, :bi_dialysis, :bi_cpr)
    end
end
