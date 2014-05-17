json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :name, :email, :department, :subject, :request
  json.url ticket_url(ticket, format: :json)
end
