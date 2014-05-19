class Ticket < ActiveRecord::Base
  enum status: [ :active, :archived ]
  include Codable

  belongs_to :user
  before_save :generate_code

end
