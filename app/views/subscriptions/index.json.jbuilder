json.array!(@subscriptions) do |subscription|
  json.extract! subscription, :id, :name, :lastname, :grade_id, :section_id, :level_id, :paymentmethod_id, :school_id, :active, :fechaingreso, :fechainactivo
  json.url subscription_url(subscription, format: :json)
end
