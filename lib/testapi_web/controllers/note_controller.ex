defmodule TestapiWeb.NoteController do
    use TestapiWeb, :controller

    require Logger

    def index(conn, _params) do
        conn
        |> put_flash(:info, "Welcome to Phoenix, from flash info!")
        |> put_flash(:error, "Let's pretend we have an error.")
        |> redirect(to: Routes.page_path(conn, :index))
    end

    def get(_conn, params) do
        Logger.debug "Var value: #{inspect(params)}"
    end

    def post(_conn, %{"note" => note}) do
        Logger.debug "Var value: #{inspect(note)}"
    end
  end