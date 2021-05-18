defmodule LeafyExplorerWeb.PageController do
  use LeafyExplorerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
