defmodule Testapi.Repo do
  use Ecto.Repo,
    otp_app: :testapi,
    adapter: Ecto.Adapters.Postgres
end
