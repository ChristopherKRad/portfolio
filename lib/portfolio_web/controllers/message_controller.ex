defmodule PortfolioWeb.MessageController do
  use PortfolioWeb, :controller

  alias Portfolio.Email
  alias Portfolio.Message
  alias Portfolio.Messages.Message

  def new(conn, _params) do

    changeset = Message.changeset(%Message{}, %{})

    render(conn, "index.html", changeset: changeset)

  end

  def create(conn, %{"message" => message}) do
    case Portfolio.Message.create_message(message) do
      {:ok, %Message{}} ->
        conn
        # insert call to Portfolio.Email here and send email
        # |> new_email(:to, :email)
        |> put_flash(:info, "Message Sent!")
        |> redirect(to: "/message/thankyou")

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "index.html", changeset: changeset)
    end
  end

  def thankyou(conn, _params) do

    render(conn, "thankyou.html")

  end
end
