defmodule SunshineWeb.ImageController do
  use SunshineWeb, :controller
  alias Sunshine.Image

  def index(conn, _) do
    images = Sunshine.list_images()
    render(conn, "index.html", images: images)
  end

  def new(conn, _) do
    changeset = Image.changeset(%Image{}, %{})
    render(conn, "new.html", changeset: changeset)
  end

  def show(conn, %{"id" => id}) do
    image = Sunshine.get_image(id)
    render(conn, "show.html", image: image)
  end

  def create(conn, %{"image" => image_params}) do
    {:ok, image} = Sunshine.create_image(image_params)
    render(conn, "show.html", image: image)
  end
end
