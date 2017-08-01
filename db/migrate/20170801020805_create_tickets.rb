class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.string :company
      t.string :serial
      t.string :machine_location
      t.string :contact_person
      t.string :contract_number
      t.text :problem_description
      t.time :avoid_time
      t.time :office_closing_time
      t.text :special_instructions
      t.string :ticket_no

      t.timestamps
    end
  end
end
