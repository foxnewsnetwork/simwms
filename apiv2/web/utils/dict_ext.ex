defmodule Apiv2.DictExt do

  def reject_blank_keys(dict) do
    bad_keys = Dict.keys(dict) |> Enum.filter(fn key -> is_nil(Dict.get dict, key) end)
    Dict.drop dict, bad_keys
  end
end