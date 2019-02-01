defmodule ActivityPubTest do
  use ExUnit.Case
  doctest ActivityPub

  test "can create Objects" do
    defmodule TestObj do
      use ActivityPub.Object, type: "Thing"
    end
  end

  test "can't create object without types" do
    try do
      defmodule TestObj do
        use ActivityPub.Object, type: "Thing"
      end
    rescue
      v ->
        "You need a type when using ActivityPub.Object" = v
    end
  end

  test "can create an Actor" do
    defmodule Actor do
      use ActivityPub.Actor, type: "Person"
    end
  end

  test "can't create actor with invalid type" do
    try do
      defmodule Actor do
        use ActivityPub.Actor, type: "NotAValidType"
      end
    rescue
      v ->
        assert String.contains?(v.message, "not a valid Actor type")
    end
  end
end
