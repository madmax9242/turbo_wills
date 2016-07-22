require 'test_helper'

class ThirdScenariosControllerTest < ActionController::TestCase
  setup do
    @third_scenario = third_scenarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:third_scenarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create third_scenario" do
    assert_difference('ThirdScenario.count') do
      post :create, third_scenario: { ami_cc_only: @third_scenario.ami_cc_only, ami_cc_plus: @third_scenario.ami_cc_plus, ami_cpr: @third_scenario.ami_cpr, ami_dialysis: @third_scenario.ami_dialysis, ami_invasive: @third_scenario.ami_invasive, ami_reg_med: @third_scenario.ami_reg_med, ami_respirator: @third_scenario.ami_respirator, bi_cc_only: @third_scenario.bi_cc_only, bi_cc_plus: @third_scenario.bi_cc_plus, bi_cpr: @third_scenario.bi_cpr, bi_dialysis: @third_scenario.bi_dialysis, bi_invasive: @third_scenario.bi_invasive, bi_reg_med: @third_scenario.bi_reg_med, bi_respirator: @third_scenario.bi_respirator, string,: @third_scenario.string,, string,: @third_scenario.string,, string,: @third_scenario.string,, string,: @third_scenario.string,, string,: @third_scenario.string,, string,: @third_scenario.string,, string,: @third_scenario.string,, string,: @third_scenario.string,, string,: @third_scenario.string,, string,: @third_scenario.string,, string,: @third_scenario.string,, string,: @third_scenario.string,, string,: @third_scenario.string,, string: @third_scenario.string }
    end

    assert_redirected_to third_scenario_path(assigns(:third_scenario))
  end

  test "should show third_scenario" do
    get :show, id: @third_scenario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @third_scenario
    assert_response :success
  end

  test "should update third_scenario" do
    patch :update, id: @third_scenario, third_scenario: { ami_cc_only: @third_scenario.ami_cc_only, ami_cc_plus: @third_scenario.ami_cc_plus, ami_cpr: @third_scenario.ami_cpr, ami_dialysis: @third_scenario.ami_dialysis, ami_invasive: @third_scenario.ami_invasive, ami_reg_med: @third_scenario.ami_reg_med, ami_respirator: @third_scenario.ami_respirator, bi_cc_only: @third_scenario.bi_cc_only, bi_cc_plus: @third_scenario.bi_cc_plus, bi_cpr: @third_scenario.bi_cpr, bi_dialysis: @third_scenario.bi_dialysis, bi_invasive: @third_scenario.bi_invasive, bi_reg_med: @third_scenario.bi_reg_med, bi_respirator: @third_scenario.bi_respirator, string,: @third_scenario.string,, string,: @third_scenario.string,, string,: @third_scenario.string,, string,: @third_scenario.string,, string,: @third_scenario.string,, string,: @third_scenario.string,, string,: @third_scenario.string,, string,: @third_scenario.string,, string,: @third_scenario.string,, string,: @third_scenario.string,, string,: @third_scenario.string,, string,: @third_scenario.string,, string,: @third_scenario.string,, string: @third_scenario.string }
    assert_redirected_to third_scenario_path(assigns(:third_scenario))
  end

  test "should destroy third_scenario" do
    assert_difference('ThirdScenario.count', -1) do
      delete :destroy, id: @third_scenario
    end

    assert_redirected_to third_scenarios_path
  end
end
