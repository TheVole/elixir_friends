defmodule ElixirFriends.PostControllerTest do
  use ElixirFriends.ConnCase

  alias ElixirFriends.Post
  @valid_attrs %{content: "some content", image_url: "some content", source_url: "some content"}
  @invalid_attrs %{}

  setup do
    conn = conn()
    {:ok, conn: conn}
  end

  test "lists all entries on index", %{conn: conn} do
    conn = get conn, post_path(conn, :index)
    assert html_response(conn, 200) =~ "Look at all of these"
  end

  test "shows chosen resource", %{conn: conn} do
    post = Repo.insert! %Post{}
    conn = get conn, post_path(conn, :show, post)
    assert html_response(conn, 200) =~ "Show post"
  end


  test "shows an image for the post", %{conn: conn} do
    post = Repo.insert! %Post{image_url: "http://fc00.deviantart.net/fs71/i/2012/176/8/f/marvin_the_paranoid_android_by_wouthezx-d54uny0.jpg"}
    conn = get conn, post_path(conn, :show, post)
    assert html_response(conn, 200) =~ "Show post"
    assert html_response(conn, 200) =~ "<img src='http://fc00.deviantart.net/fs71/i/2012/176/8/f/marvin_the_paranoid_android_by_wouthezx-d54uny0.jpg' />"
  end
end
