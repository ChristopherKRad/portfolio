defmodule Portfolio.Repo.Migrations.AddMessageTable do
  use Ecto.Migration

  def change do
    create table(:message) do

      add :first_name, :string
      add :last_name, :string
      add :email, :string
      add :company, :string
      add :phone_number, :integer
      add :help, :string
      add :hear, :string

      timestamps()
    end
  end
end
