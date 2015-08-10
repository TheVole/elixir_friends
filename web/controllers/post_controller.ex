defmodule ElixirFriends.PostController do
  use ElixirFriends.Web, :controller

  import Ecto.Query

  alias ElixirFriends.Post

  plug :scrub_params, "post" when action in [:create, :update]

  def index(conn, params) do
    posts_page = Post
    |> order_by([p], desc: p.inserted_at)
    |> ElixirFriends.Repo.paginate(page: params["page"])
    render(conn, "index.html", posts_page: posts_page)
  end


  def show(conn, %{"id" => id}) do
    post = Repo.get(Post, id)
    render(conn, "show.html", post: post)
  end

end
