defmodule ElixirFriends.API.PostView do
  use ElixirFriends.Web, :view

  def render("index.json", %{posts_page: posts_page}) do
    string = posts_page
    |> Poison.encode!
    string
    Poison.decode! string
  end

end
