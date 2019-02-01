defmodule ActivityPub.Object do
  defmacro __using__(opts) do
    if opts[:type] == nil do
      raise "You need a type when using ActivityPub.Object"
    end
    obj_defaults = [
      id: "",
      name: "",
      type: ""
    ]
    quote do
      alias ActivityPub.ActivityHelpers
      @enforce_keys [:id, :name]

      defstruct unquote(Enum.concat(
            obj_defaults,
            opts
          ))
    end
  end
end
