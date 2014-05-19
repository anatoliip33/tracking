class Ticket < ActiveRecord::Base
  enum status: [ :Waiting_for_Staff_Response, :Waiting_for_Customer, :On_Hold, :Cancelled, :Completed ]
  include Codable

  belongs_to :user
  before_create :generate_code

end
