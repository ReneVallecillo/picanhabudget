json.array!(@subscriptions) do |subscription|
  json.extract! subscription, :id, :name, :lastname, :grade, :section, :level, :paymentmethod, :school, :active, :location, :fechaingreso, :fechainactivo
  json.url subscription_url(subscription, format: :json)
end
