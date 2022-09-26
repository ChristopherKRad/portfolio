defmodule Portfolio.Message do
  @moduledoc """
  The Message context.
  """

  import Ecto.Query, warn: false
  alias Portfolio.Repo

  alias Portfolio.Messages.Message

  @doc """
  Creates a message.

  ## Examples

      iex> create_message(%{field: value})
      {:ok, %Post{}}

      iex> create_message(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """

  def create_message(attrs \\ %{}) do
    %Message{}
    |> Message.changeset(attrs)
    |> Repo.insert()
  end

end
