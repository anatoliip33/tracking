class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
    	t.string :name
    	t.string :email
    	t.string :department
    	t.string :subject
    	t.text :request
      t.string :code
      t.text :answer

      t.references :status

      t.timestamps
    end
  end
end
