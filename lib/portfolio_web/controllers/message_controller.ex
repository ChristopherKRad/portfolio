defmodule PortfolioWeb.MessageController do
  use PortfolioWeb, :controller

  alias Portfolio.Message
  alias Portfolio.Repo

  def index(conn, _params) do

    render(conn, "index.html")

  end

  def create(conn, %{"message" => message}) do

    changeset = Portfolio.changeset(%Message{}, message)

    case Repo.insert(changeset) do

      {:ok, _topic} ->
        conn
        |> put_flash(:info, "Message Received")
        |> redirect(to: "/thankyou")

      {:error, changeset} ->
        render(conn, "/message", changeset: changeset)

    end
  end
end
