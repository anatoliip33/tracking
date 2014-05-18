class Ticket < ActiveRecord::Base
  include Codable

  belongs_to :user
  before_save :generate_code


end
