defmodule PortfolioWeb.MessageController do
  use PortfolioWeb, :controller

  alias Portfolio.Message
  alias Portfolio.Repo

  def new(conn, _params) do

    changeset = Message.changeset(%Message{}, %{})

    render(conn, "index.html", changeset: changeset)

  end

  def create(conn, %{"message" => message}) do

    changeset = Message.changeset(%Message{}, message)

    case Repo.insert(changeset) do

      {:ok, _message} ->
        conn
        |> put_flash(:info, "Message Received")
        |> redirect(to: "/thankyou")

      {:error, changeset} ->
        render(conn, "/message", changeset: changeset)

    end
  end
end
