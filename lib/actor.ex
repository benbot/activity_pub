defmodule ActivityPub.Actor do
  defmacro __using__(opts \\ []) do
    valid_types = [
      "Application",
      "Group",
      "Person",
      "Organization",
      "Service"
    ]

    if opts[:type] != nil and !Enum.member?(valid_types, opts[:type]) do
      raise "#{opts[:type]} is not a valid Actor type"
    end

    quote do
      use ActivityPub.Object,
        type: unquote(opts[:type]),
        inbox: "",
        outbox: "",
        following: "",
        followers: "",
        liked: ""
    end
  end
end
