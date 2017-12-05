defmodule Sunshine do
  @moduledoc """
  Sunshine keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  import Ecto.Query, warn: false
  alias Sunshine.Repo
  alias Sunshine.Image

  def create_image(attrs \\ %{}) do
    %Image{}
    |> Image.changeset(attrs)
    |> Repo.insert()
  end

  def list_images do
    Repo.all(Image)
  end

  def get_image(id) do
    Repo.get(Image, id)
  end
end
