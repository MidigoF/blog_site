defmodule BlogWeb.BlogController do
  use BlogWeb, :controller

  def show(conn, %{"id" => id}) do
    render(conn, "show.html", post: Blog.get_post_by_id!(id))
  end
end
