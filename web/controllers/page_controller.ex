defmodule PhoenixWebpack.PageController do
  use PhoenixWebpack.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
