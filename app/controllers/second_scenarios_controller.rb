class SecondScenariosController < ApplicationController
  before_action :set_second_scenario, only: [:show, :edit, :update, :destroy]
  before_action :set_user

  # GET /second_scenarios
  # GET /second_scenarios.json
  def index
    @second_scenarios = SecondScenario.all
  end

  # GET /second_scenarios/1
  # GET /second_scenarios/1.json
  def show
  end

  # GET /second_scenarios/new
  def new
    @second_scenario = SecondScenario.new
  end

  # GET /second_scenarios/1/edit
  def edit
  end

  # POST /second_scenarios
  # POST /second_scenarios.json
  def create
    @second_scenario = SecondScenario.new(second_scenario_params)
    #@second_scenario.user_id = current_user.id

    respond_to do |format|
      if @second_scenario.save

        #@result = Result.where(user_id: current_user.id)
        # @result.second_scenario_id = @second_scenario.id
        # @result.save

        format.html { redirect_to new_third_scenario_path, notice: 'Second scenario was successfully created.' }
        format.json { render :show, status: :created, location: @second_scenario }
      else
        format.html { render :new }
        format.json { render json: @second_scenario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /second_scenarios/1
  # PATCH/PUT /second_scenarios/1.json
  def update
    respond_to do |format|
      if @second_scenario.update(second_scenario_params)
        format.html { redirect_to @second_scenario, notice: 'Second scenario was successfully updated.' }
        format.json { render :show, status: :ok, location: @second_scenario }
      else
        format.html { render :edit }
        format.json { render json: @second_scenario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /second_scenarios/1
  # DELETE /second_scenarios/1.json
  def destroy
    @second_scenario.destroy
    respond_to do |format|
      format.html { redirect_to second_scenarios_url, notice: 'Second scenario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_second_scenario
      @second_scenario = SecondScenario.find(params[:id])
    end

    def set_user 
      if current_user 
        @user = current_user
      else
        @user = User.new
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def second_scenario_params
      params.require(:second_scenario).permit(:ami_cc_only, :ami_cc_plus, :ami_reg_med, :ami_invasive, :ami_respirator, :ami_dialysis, :ami_cpr, :bi_cc_only, :bi_cc_plus, :bi_reg_med, :bi_invasive, :bi_respirator, :bi_dialysis, :bi_cpr)
    end
end
