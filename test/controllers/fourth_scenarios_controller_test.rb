require 'test_helper'

class FourthScenariosControllerTest < ActionController::TestCase
  setup do
    @fourth_scenario = fourth_scenarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fourth_scenarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fourth_scenario" do
    assert_difference('FourthScenario.count') do
      post :create, fourth_scenario: { ami_cc_only: @fourth_scenario.ami_cc_only, ami_cc_plus: @fourth_scenario.ami_cc_plus, ami_cpr: @fourth_scenario.ami_cpr, ami_dialysis: @fourth_scenario.ami_dialysis, ami_invasive: @fourth_scenario.ami_invasive, ami_reg_med: @fourth_scenario.ami_reg_med, ami_respirator: @fourth_scenario.ami_respirator, bi_cc_only: @fourth_scenario.bi_cc_only, bi_cc_plus: @fourth_scenario.bi_cc_plus, bi_cpr: @fourth_scenario.bi_cpr, bi_dialysis: @fourth_scenario.bi_dialysis, bi_invasive: @fourth_scenario.bi_invasive, bi_reg_med: @fourth_scenario.bi_reg_med, bi_respirator: @fourth_scenario.bi_respirator, string,: @fourth_scenario.string,, string,: @fourth_scenario.string,, string,: @fourth_scenario.string,, string,: @fourth_scenario.string,, string,: @fourth_scenario.string,, string,: @fourth_scenario.string,, string,: @fourth_scenario.string,, string,: @fourth_scenario.string,, string,: @fourth_scenario.string,, string,: @fourth_scenario.string,, string,: @fourth_scenario.string,, string,: @fourth_scenario.string,, string,: @fourth_scenario.string,, string: @fourth_scenario.string }
    end

    assert_redirected_to fourth_scenario_path(assigns(:fourth_scenario))
  end

  test "should show fourth_scenario" do
    get :show, id: @fourth_scenario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fourth_scenario
    assert_response :success
  end

  test "should update fourth_scenario" do
    patch :update, id: @fourth_scenario, fourth_scenario: { ami_cc_only: @fourth_scenario.ami_cc_only, ami_cc_plus: @fourth_scenario.ami_cc_plus, ami_cpr: @fourth_scenario.ami_cpr, ami_dialysis: @fourth_scenario.ami_dialysis, ami_invasive: @fourth_scenario.ami_invasive, ami_reg_med: @fourth_scenario.ami_reg_med, ami_respirator: @fourth_scenario.ami_respirator, bi_cc_only: @fourth_scenario.bi_cc_only, bi_cc_plus: @fourth_scenario.bi_cc_plus, bi_cpr: @fourth_scenario.bi_cpr, bi_dialysis: @fourth_scenario.bi_dialysis, bi_invasive: @fourth_scenario.bi_invasive, bi_reg_med: @fourth_scenario.bi_reg_med, bi_respirator: @fourth_scenario.bi_respirator, string,: @fourth_scenario.string,, string,: @fourth_scenario.string,, string,: @fourth_scenario.string,, string,: @fourth_scenario.string,, string,: @fourth_scenario.string,, string,: @fourth_scenario.string,, string,: @fourth_scenario.string,, string,: @fourth_scenario.string,, string,: @fourth_scenario.string,, string,: @fourth_scenario.string,, string,: @fourth_scenario.string,, string,: @fourth_scenario.string,, string,: @fourth_scenario.string,, string: @fourth_scenario.string }
    assert_redirected_to fourth_scenario_path(assigns(:fourth_scenario))
  end

  test "should destroy fourth_scenario" do
    assert_difference('FourthScenario.count', -1) do
      delete :destroy, id: @fourth_scenario
    end

    assert_redirected_to fourth_scenarios_path
  end
end
