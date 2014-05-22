class Ticket < ActiveRecord::Base

  validates :name, :email, :department, :subject, :request, presence: true
  enum status: [ :Waiting_for_Staff_Response, :Waiting_for_Customer, :On_Hold, :Cancelled, :Completed ]
  include Codable

  belongs_to :user
  before_create :generate_code
  after_create :send_confirmation
  after_update :send_answer

  def send_confirmation
    TicketMailer.send_mail(self).deliver
  end

  def send_answer
    TicketMailer.send_answer(self).deliver
  end
end
