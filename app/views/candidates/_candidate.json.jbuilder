json.extract! candidate, :id, :name, :open_vote, :election_id, :created_at, :updated_at
json.url candidate_url(candidate, format: :json)
