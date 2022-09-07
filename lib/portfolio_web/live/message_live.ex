defmodule PortfolioWeb.MessageLive do
  use PortfolioWeb, :live_view
  alias PortfolioWeb.MessageView

  def mount(_params, sessions, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    MessageView.render("message_live.html", assigns)
  end
end
