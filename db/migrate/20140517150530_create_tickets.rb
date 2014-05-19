class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
    	t.string :name
    	t.string :email
    	t.string :department
    	t.string :subject
    	t.text :request
      t.integer :status, default: 0
      t.string :code

      t.timestamps
    end
  end
end
