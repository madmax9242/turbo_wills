json.array!(@results) do |result|
  json.extract! result, :id, :first_scenarios_id, :second_scenarios_id, :third_scenarios_id, :fourth_scenarios_id
  json.url result_url(result, format: :json)
end
