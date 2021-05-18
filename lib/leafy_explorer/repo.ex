defmodule LeafyExplorer.Repo do
  use Ecto.Repo,
    otp_app: :leafy_explorer,
    adapter: Ecto.Adapters.Postgres
end
