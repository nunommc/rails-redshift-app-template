json.array!(@fact_sales) do |fact_sale|
  json.extract! fact_sale, :id, :started_at, :charged_amount, :estimated_amount, :location
  json.url fact_sale_url(fact_sale, format: :json)
end
