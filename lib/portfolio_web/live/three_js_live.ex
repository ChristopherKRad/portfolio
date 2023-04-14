defmodule PortfolioWeb.ThreeJSLive do
  use Phoenix.LiveView

  def mount(_params, _session, socket) do
    {:ok, socket}
  end



  def render(assigns) do
    ~L"""
    <script async src="https://unpkg.com/es-module-shims@1.3.6/dist/es-module-shims.js"></script>
    <h1>Hello, World!</h1>
    <div id="three-container" phx-hook="ThreeInit"></div>
    """
  end
end
