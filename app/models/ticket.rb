class Ticket < ActiveRecord::Base
  has_many :comments

  validates :name, :email, :department, :subject, :request, presence: true
  enum status: [ :Waiting_for_Staff_Response, :Waiting_for_Customer, :On_Hold, :Cancelled, :Completed ]
  include Codable

  belongs_to :user
  before_create :generate_code
  after_save :send_confirmation

  def send_confirmation
    TicketMailer.send_mail(self).deliver
  end
end
