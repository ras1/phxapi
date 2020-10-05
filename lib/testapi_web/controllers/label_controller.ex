defmodule TestapiWeb.LabelController do
  use TestapiWeb, :controller

  require Logger

  alias Testapi.Repo
  alias Testapi.Label

  def index(conn, _params) do
      conn
      |> put_flash(:info, "Welcome to Phoenix, from flash info!")
      |> put_flash(:error, "Let's pretend we have an error.")
      |> redirect(to: Routes.page_path(conn, :index))
  end

  def show(_conn, params) do
      Logger.debug "Var value: #{inspect(params)}"
  end

  def create(conn, params) do
    changeset = Label.changeset(%Label{}, params)

    case Repo.insert(changeset, on_conflict: :nothing) do
      {:ok, label} ->
        render(conn, "show.json", label: label)
      {:error, changeset} ->
        json conn |> put_status(:bad_request), %{errors: ["unable to create label: #{inspect(changeset.errors)}"] }
    end
  end
end
