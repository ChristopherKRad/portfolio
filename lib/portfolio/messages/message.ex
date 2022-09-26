defmodule Portfolio.Messages.Message do
  use Ecto.Schema
  import Ecto.Changeset

  #TODO: run migration to change phone_number field from :integer to :string

  schema "message" do
    field :first_name, :string
    field :last_name, :string
    field :email, :string
    field :company, :string
    field :phone_number, :integer
    field :help, :string
    field :hear, :string

    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    required = ~w(
      first_name
      last_name
      email
    )a

    optional = ~w(
      company
      phone_number
      help
      hear
    )a

    struct
    |> cast(params, required ++ optional)
    |> validate_format(:email, ~r/^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/)
    |> validate_required([:first_name, :last_name, :email])
    |> unique_constraint([:email])
  end
end
