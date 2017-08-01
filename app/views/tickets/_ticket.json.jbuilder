json.extract! ticket, :id, :company, :serial, :machine_location, :contact_person, :contract_number, :problem_description, :avoid_time, :office_closing_time, :special_instructions, :ticket_no, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
