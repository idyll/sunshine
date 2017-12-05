defmodule Sunshine.Image do
  use Ecto.Schema
  use Arc.Ecto.Schema
  import Ecto.Changeset


  schema "images" do
    field :image, Sunshine.ImageFile.Type
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(image, attrs) do
    image
    |> cast(attrs, [:name, :image])
    |> validate_required([:name, :image])
    |> cast_attachments(attrs, [:image])
  end
end
