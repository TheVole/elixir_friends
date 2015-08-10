defmodule ElixirFriends.API.PostView do
  use ElixirFriends.Web, :view

  def render("index.json", %{posts_page: posts_page}) do
    stuff = posts_page
    |> Poison.encode!
    IO.puts "Encoded: #{inspect stuff}"
    stuff
    posts_page
  end

end
