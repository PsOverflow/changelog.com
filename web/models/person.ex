defmodule Changelog.Person do
  use Changelog.Web, :model

  schema "people" do
    field :name, :string
    field :email, :string
    field :github_handle, :string
    field :twitter_handle, :string
    field :bio, :string
    field :website, :string

    timestamps
  end

  @required_fields ~w(name)
  @optional_fields ~w(email github_handle twitter_handle bio website)

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
