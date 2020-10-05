defmodule TestapiWeb.LabelView do
  use TestapiWeb, :view

  def render("index.json", %{labels: labels}) do
    %{data: render_many(labels, HelloWeb.LabelView, "page.json")}
  end

  def render("show.json",  %{label: label}) do
    %{label: render_one(label, TestapiWeb.LabelView, "label.json")}
  end

  def render("label.json", %{label: label}) do
    %{name: label.name,
      inserted_at: label.inserted_at,
      updated_at: label.updated_at}
  end
end
