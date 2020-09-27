defmodule TestapiWeb.LabelView do
    use TestapiWeb, :view

    def render("show.json",  %{label: label}) do
        %{label: render_one(label, TestapiWeb.LabelView, "label.json")}
    end

    def render("label.json", %{label: label}) do
        %{name: label.name}
    end
end