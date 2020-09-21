defmodule TestapiWeb.LabelView do
    use TestapiWeb, :view
    @attributes ~W(id name created_at inserted_at)

    def render("show.json", %{data: data}) do
        data
        |> Map.take(@attributes)
    end
end