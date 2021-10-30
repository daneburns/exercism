defmodule Darts do
  @type position :: {number, number}

  @doc """
  Calculate the score of a single dart hitting a target
  """

  def equation_of_circle(x, y) do
    (:math.pow(x, 2) + :math.pow(y, 2)) |> :math.sqrt()
  end

  def score({x, y}) do
    rad = equation_of_circle(x, y)

    cond do
      rad <= 1 -> 10
      rad <= 5 -> 5
      rad <= 10 -> 1
      true -> 0
    end
  end
end
