class FirstScenariosController < ApplicationController
  before_action :set_first_scenario, only: [:show, :edit, :update, :destroy]
  before_action :set_user

  # GET /first_scenarios
  # GET /first_scenarios.json
  def index
    @first_scenarios = FirstScenario.all
  end

  # GET /first_scenarios/1
  # GET /first_scenarios/1.json
  def show
  end

  # GET /first_scenarios/new
  def new
    @first_scenario = FirstScenario.new
    @first_scenario.user_id = @user.id
  end

  # GET /first_scenarios/1/edit
  def edit
  end

  # POST /first_scenarios
  # POST /first_scenarios.json
  def create
    @first_scenario = FirstScenario.new(first_scenario_params)
    #@first_scenario.user_id = current_user.id

    respond_to do |format|
      if @first_scenario.save

        #@result = Result.where(user_id: current_user.id)
        # @result.first_scenario_id = @first_scenario.id
        # @result.save

        format.html { redirect_to new_second_scenario_path, notice: 'First scenario was successfully created.' }
        format.json { render :show, status: :created, location: @first_scenario }
      else
        format.html { render :new }
        format.json { render json: @first_scenario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /first_scenarios/1
  # PATCH/PUT /first_scenarios/1.json
  def update
    respond_to do |format|
      if @first_scenario.update(first_scenario_params)
        format.html { redirect_to @first_scenario, notice: 'First scenario was successfully updated.' }
        format.json { render :show, status: :ok, location: @first_scenario }
      else
        format.html { render :edit }
        format.json { render json: @first_scenario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /first_scenarios/1
  # DELETE /first_scenarios/1.json
  def destroy
    @first_scenario.destroy
    respond_to do |format|
      format.html { redirect_to first_scenarios_url, notice: 'First scenario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_first_scenario
      @first_scenario = FirstScenario.find(params[:id])
    end

    def set_user
      if current_user 
        @user = current_user
      else
        @user = User.new
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def first_scenario_params
      params.require(:first_scenario).permit(:ami_cc_only, :ami_cc_plus, :ami_reg_med, :ami_invasive, :ami_respirator, :ami_dialysis, :ami_cpr, :bi_cc_only, :bi_cc_plus, :bi_reg_med, :bi_invasive, :bi_respirator, :bi_dialysis, :bi_cpr, :not_sure)
    end
end
