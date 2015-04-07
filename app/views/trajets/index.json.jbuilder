json.array!(@trajets) do |trajet|
  json.extract! trajet, :id, :user_id, :userBeneficiaireID, :userAuteurID, :departVille, :arriveeVille, :distance, :prix, :nbPlacesDisponible, :date
  json.url trajet_url(trajet, format: :json)
end
