require 'test_helper'

class FirstScenariosControllerTest < ActionController::TestCase
  setup do
    @first_scenario = first_scenarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:first_scenarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create first_scenario" do
    assert_difference('FirstScenario.count') do
      post :create, first_scenario: { ami_cc_only: @first_scenario.ami_cc_only, ami_cc_plus: @first_scenario.ami_cc_plus, ami_cpr: @first_scenario.ami_cpr, ami_dialysis: @first_scenario.ami_dialysis, ami_invasive: @first_scenario.ami_invasive, ami_reg_med: @first_scenario.ami_reg_med, ami_respirator: @first_scenario.ami_respirator, bi_cc_only: @first_scenario.bi_cc_only, bi_cc_plus: @first_scenario.bi_cc_plus, bi_cpr: @first_scenario.bi_cpr, bi_dialysis: @first_scenario.bi_dialysis, bi_invasive: @first_scenario.bi_invasive, bi_reg_med: @first_scenario.bi_reg_med, bi_respirator: @first_scenario.bi_respirator, string,: @first_scenario.string,, string,: @first_scenario.string,, string,: @first_scenario.string,, string,: @first_scenario.string,, string,: @first_scenario.string,, string,: @first_scenario.string,, string,: @first_scenario.string,, string,: @first_scenario.string,, string,: @first_scenario.string,, string,: @first_scenario.string,, string,: @first_scenario.string,, string,: @first_scenario.string,, string,: @first_scenario.string,, string: @first_scenario.string }
    end

    assert_redirected_to first_scenario_path(assigns(:first_scenario))
  end

  test "should show first_scenario" do
    get :show, id: @first_scenario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @first_scenario
    assert_response :success
  end

  test "should update first_scenario" do
    patch :update, id: @first_scenario, first_scenario: { ami_cc_only: @first_scenario.ami_cc_only, ami_cc_plus: @first_scenario.ami_cc_plus, ami_cpr: @first_scenario.ami_cpr, ami_dialysis: @first_scenario.ami_dialysis, ami_invasive: @first_scenario.ami_invasive, ami_reg_med: @first_scenario.ami_reg_med, ami_respirator: @first_scenario.ami_respirator, bi_cc_only: @first_scenario.bi_cc_only, bi_cc_plus: @first_scenario.bi_cc_plus, bi_cpr: @first_scenario.bi_cpr, bi_dialysis: @first_scenario.bi_dialysis, bi_invasive: @first_scenario.bi_invasive, bi_reg_med: @first_scenario.bi_reg_med, bi_respirator: @first_scenario.bi_respirator, string,: @first_scenario.string,, string,: @first_scenario.string,, string,: @first_scenario.string,, string,: @first_scenario.string,, string,: @first_scenario.string,, string,: @first_scenario.string,, string,: @first_scenario.string,, string,: @first_scenario.string,, string,: @first_scenario.string,, string,: @first_scenario.string,, string,: @first_scenario.string,, string,: @first_scenario.string,, string,: @first_scenario.string,, string: @first_scenario.string }
    assert_redirected_to first_scenario_path(assigns(:first_scenario))
  end

  test "should destroy first_scenario" do
    assert_difference('FirstScenario.count', -1) do
      delete :destroy, id: @first_scenario
    end

    assert_redirected_to first_scenarios_path
  end
end
