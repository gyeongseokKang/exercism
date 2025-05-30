defmodule Username do
  def sanitize([]), do: []

  def sanitize(charlist) when is_list(charlist) do
    charlist
    |> Enum.map(&sanitize_char/1)
    |> Enum.join()
    |> String.replace(~r/ä/, "ae")
    |> String.replace(~r/ö/, "oe")
    |> String.replace(~r/ü/, "ue")
    |> String.replace(~r/ß/, "ss")
    |> String.replace(~r/[^a-z_]/, "")
    |> to_charlist()
  end

  defp sanitize_char(char) when is_integer(char) do
    case char do
      ?ä -> "ae"
      ?ö -> "oe"
      ?ü -> "ue"
      ?ß -> "ss"
      char when char in ?a..?z -> <<char>>
      ?_ -> "_"
      _ -> ""
    end
  end
end
