defmodule Portfolio.Message do
  use Ecto.Schema
  import Ecto.Changeset


  schema "message" do
    field :first_name, :string
    field :last_name, :string
    field :email, :string
    field :company, :string
    field :phone_number, :integer
    field :help, :string
    field :hear, :string
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
    |> validate_format(:email, ~r/^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/)
    |> validate_format(:phone_number, ~r/^(\+\d{1,2}\s?)?1?\-?\.?\s?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$/)
    |> unique_constraint([:email])
  end
end
