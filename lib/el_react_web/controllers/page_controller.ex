defmodule ElReactWeb.PageController do
  use ElReactWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
