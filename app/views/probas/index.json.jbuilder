json.array!(@probas) do |proba|
  json.extract! proba, :id
  json.url proba_url(proba, format: :json)
end
