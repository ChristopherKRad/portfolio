defmodule PortfolioWeb.ThreeJSLive do
  use Phoenix.LiveView

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~L"""
    <h1>Hello, World!</h1>
    """
  end
end
