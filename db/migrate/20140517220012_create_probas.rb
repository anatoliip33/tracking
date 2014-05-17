class CreateProbas < ActiveRecord::Migration
  def change
    create_table :probas do |t|

      t.timestamps
    end
  end
end
