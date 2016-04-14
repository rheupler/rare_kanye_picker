class ModerMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.moder_mailer.new_record_notification.subject
  #
  def new_record_notification
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
