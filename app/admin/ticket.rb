ActiveAdmin.register Ticket do

  permit_params :id, :name, :email, :department, :subject, :request, :status, :code

  scope :Waiting_for_Staff_Response, :default => true
  scope :Waiting_for_Customer
  scope :On_Hold
  scope :Cancelled
  scope :Completed

index do
    selectable_column
    id_column
    column :name
    column :email
    column :department
    column :request
    column :code
    column :status
    column :created_at
    actions
  end

form do |f|
    f.inputs "Ticket Details" do
      f.input :name
      f.input :email
      f.input :department
      f.input :request
      f.input :status, as: :select, collection: Ticket.statuses.keys
    end
    f.actions
  end

end
