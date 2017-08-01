class OrderMailer < ApplicationMailer
  default from: 'helpdesk@ricohmds.onmicrosoft.com'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.received.subject
  #
  def received(ticket)
    @ticket = ticket

    mail to: "adrianlim@ricoh.sg", subject: 'testing'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.assigned.subject
  #
  def assigned
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
