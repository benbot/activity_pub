defmodule ActivityPub.Collection do
  defmacro __using__(opts \\ []) do
    quote do
      use ActivityPub.Object,
        totalItems: 0,
        current: "",
        first: "",
        last: "",
        items: []
    end
  end
end
