json.array!(@first_scenarios) do |first_scenario|
  json.extract! first_scenario, :id, :ami_cc_only, :string,, :ami_cc_plus, :string,, :ami_reg_med, :string,, :ami_invasive, :string,, :ami_respirator, :string,, :ami_dialysis, :string,, :ami_cpr, :string,, :bi_cc_only, :string,, :bi_cc_plus, :string,, :bi_reg_med, :string,, :bi_invasive, :string,, :bi_respirator, :string,, :bi_dialysis, :string,, :bi_cpr, :string
  json.url first_scenario_url(first_scenario, format: :json)
end
