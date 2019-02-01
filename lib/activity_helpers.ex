defmodule ActivityPub.ActivityHelpers do
  def put_context(object) when is_map(object) do
    Map.put_new(object, "@context", ["https://www.w3.org/ns/activitystreams"])
  end
end
