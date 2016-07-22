require 'test_helper'

class SecondScenariosControllerTest < ActionController::TestCase
  setup do
    @second_scenario = second_scenarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:second_scenarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create second_scenario" do
    assert_difference('SecondScenario.count') do
      post :create, second_scenario: { ami_cc_only: @second_scenario.ami_cc_only, ami_cc_plus: @second_scenario.ami_cc_plus, ami_cpr: @second_scenario.ami_cpr, ami_dialysis: @second_scenario.ami_dialysis, ami_invasive: @second_scenario.ami_invasive, ami_reg_med: @second_scenario.ami_reg_med, ami_respirator: @second_scenario.ami_respirator, bi_cc_only: @second_scenario.bi_cc_only, bi_cc_plus: @second_scenario.bi_cc_plus, bi_cpr: @second_scenario.bi_cpr, bi_dialysis: @second_scenario.bi_dialysis, bi_invasive: @second_scenario.bi_invasive, bi_reg_med: @second_scenario.bi_reg_med, bi_respirator: @second_scenario.bi_respirator, string,: @second_scenario.string,, string,: @second_scenario.string,, string,: @second_scenario.string,, string,: @second_scenario.string,, string,: @second_scenario.string,, string,: @second_scenario.string,, string,: @second_scenario.string,, string,: @second_scenario.string,, string,: @second_scenario.string,, string,: @second_scenario.string,, string,: @second_scenario.string,, string,: @second_scenario.string,, string,: @second_scenario.string,, string: @second_scenario.string }
    end

    assert_redirected_to second_scenario_path(assigns(:second_scenario))
  end

  test "should show second_scenario" do
    get :show, id: @second_scenario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @second_scenario
    assert_response :success
  end

  test "should update second_scenario" do
    patch :update, id: @second_scenario, second_scenario: { ami_cc_only: @second_scenario.ami_cc_only, ami_cc_plus: @second_scenario.ami_cc_plus, ami_cpr: @second_scenario.ami_cpr, ami_dialysis: @second_scenario.ami_dialysis, ami_invasive: @second_scenario.ami_invasive, ami_reg_med: @second_scenario.ami_reg_med, ami_respirator: @second_scenario.ami_respirator, bi_cc_only: @second_scenario.bi_cc_only, bi_cc_plus: @second_scenario.bi_cc_plus, bi_cpr: @second_scenario.bi_cpr, bi_dialysis: @second_scenario.bi_dialysis, bi_invasive: @second_scenario.bi_invasive, bi_reg_med: @second_scenario.bi_reg_med, bi_respirator: @second_scenario.bi_respirator, string,: @second_scenario.string,, string,: @second_scenario.string,, string,: @second_scenario.string,, string,: @second_scenario.string,, string,: @second_scenario.string,, string,: @second_scenario.string,, string,: @second_scenario.string,, string,: @second_scenario.string,, string,: @second_scenario.string,, string,: @second_scenario.string,, string,: @second_scenario.string,, string,: @second_scenario.string,, string,: @second_scenario.string,, string: @second_scenario.string }
    assert_redirected_to second_scenario_path(assigns(:second_scenario))
  end

  test "should destroy second_scenario" do
    assert_difference('SecondScenario.count', -1) do
      delete :destroy, id: @second_scenario
    end

    assert_redirected_to second_scenarios_path
  end
end
