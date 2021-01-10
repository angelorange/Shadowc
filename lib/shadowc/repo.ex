defmodule Shadowc.Repo do
  use Ecto.Repo,
    otp_app: :shadowc,
    adapter: Ecto.Adapters.Postgres
end
