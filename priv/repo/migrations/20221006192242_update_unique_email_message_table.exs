defmodule Portfolio.Repo.Migrations.UpdateUniqueEmailMessageTable do
  use Ecto.Migration

  def change do

    create unique_index(:message, [:email])

  end
end
