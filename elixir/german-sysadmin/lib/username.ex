defmodule Username do
  def sanitize([]), do: []
  def sanitize([h]), do: [valid_char(h)]

  def sanitize([h | t]) do
    List.flatten([valid_char(h) | sanitize(t)])
  end

  def valid_char(char) do
    case char do
      95 -> char
      char when char >= 97 and char <= 122 -> char
      228 -> ['a', 'e']
      246 -> ['o', 'e']
      252 -> ['u', 'e']
      223 -> ['s', 's']
      _ -> []
    end
  end
end
