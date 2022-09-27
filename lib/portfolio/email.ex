defmodule Portfolio.Email do
  import Bamboo.Email

  def welcome_email do
    new_email(
      to: "chris@cracustom.com",
      from: "support@myapp.com",
      subject: "Welcome to the app.",
      html_body: "<strong>Thanks for joining!</strong>",
      text_body: "Thanks for joining!"
    )
  end
end
