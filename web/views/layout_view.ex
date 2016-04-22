defmodule PhoenixWebpack.LayoutView do
  use PhoenixWebpack.Web, :view

  def page_title(conn, assigns) do
    render_existing(view_module(conn), "page_title", Dict.put(assigns, :action_name, action_name(conn)))
      || default_page_title(conn, assigns)
  end

  def default_page_title(_conn, _assigns) do
    "PhoenixWebpack"
  end

  defp normalize_controller_name(name) do
    name
      |> String.downcase
      |> String.replace_suffix("controller", "")
      |> String.strip
  end

  @doc ~S"""
    Controller name
  """
  def controller_name(conn, _assigns) do
    name = to_string(controller_module(conn))
    List.last(String.split(name,"."))
      |> normalize_controller_name
  end
end
