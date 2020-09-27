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

    def create(conn, %{"name" => name}) do
        {:ok, inserted} = Repo.insert(%Label{name: name}, on_conflict: :nothing)

        Logger.debug("Inserted value: #{inspect(inserted)}")

        render(conn, "show.json", data: inserted)
    end
  end