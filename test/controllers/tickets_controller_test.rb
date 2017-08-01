require 'test_helper'

class TicketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ticket = tickets(:one)
  end

  test "should get index" do
    get tickets_url
    assert_response :success
  end

  test "should get new" do
    get new_ticket_url
    assert_response :success
  end

  test "should create ticket" do
    assert_difference('Ticket.count') do
      post tickets_url, params: { ticket: { avoid_time: @ticket.avoid_time, company: @ticket.company, contact_person: @ticket.contact_person, contract_number: @ticket.contract_number, machine_location: @ticket.machine_location, office_closing_time: @ticket.office_closing_time, problem_description: @ticket.problem_description, serial: @ticket.serial, special_instructions: @ticket.special_instructions, ticket_no: @ticket.ticket_no } }
    end

    assert_redirected_to ticket_url(Ticket.last)
  end

  test "should show ticket" do
    get ticket_url(@ticket)
    assert_response :success
  end

  test "should get edit" do
    get edit_ticket_url(@ticket)
    assert_response :success
  end

  test "should update ticket" do
    patch ticket_url(@ticket), params: { ticket: { avoid_time: @ticket.avoid_time, company: @ticket.company, contact_person: @ticket.contact_person, contract_number: @ticket.contract_number, machine_location: @ticket.machine_location, office_closing_time: @ticket.office_closing_time, problem_description: @ticket.problem_description, serial: @ticket.serial, special_instructions: @ticket.special_instructions, ticket_no: @ticket.ticket_no } }
    assert_redirected_to ticket_url(@ticket)
  end

  test "should destroy ticket" do
    assert_difference('Ticket.count', -1) do
      delete ticket_url(@ticket)
    end

    assert_redirected_to tickets_url
  end
end
