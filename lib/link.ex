defmodule ActivityPub.Link do
  alias ActivityPub.ActivityHelpers

  @enforce_keys [:name, :href]
  defstruct [
    type: "Link",
    name: "",
    href: "",
    hreflang: "en",
    mediaType: "text/html"
  ]

  def to_link(%{ name: name, href: href }) do
    %__MODULE__{name: name, href: href}
    |> ActivityHelpers.put_context
  end
end
