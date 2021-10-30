defmodule BirdCount do
  def today(list) when length(list) >= 1 do
    [head | _tail] = list
    head
  end

  def today(list) when length(list) === 0 do
    nil
  end

  def increment_day_count(list) do
    case today(list) do
      nil -> [1]
      _ -> increment_list(list)
    end
  end

  defp increment_list(list) do
    [first | rest] = list
    [first + 1 | rest]
  end

  def has_day_without_birds?(list) when length(list) > 1 do
    [head | tail] = list

    case head do
      0 -> true
      _ -> has_day_without_birds?(tail)
    end
  end

  def has_day_without_birds?(list) when length(list) <= 0 do
    false
  end

  def has_day_without_birds?(list) when length(list) === 1 do
    [head] = list

    case head do
      0 -> true
      _ -> false
    end
  end

  def total(list) when length(list) > 1 do
    [head | tail] = list
    head + total(tail)
  end

  def total(list) when length(list) === 1 do
    [head] = list
    head
  end

  def total(list) when length(list) === 0 do
    0
  end

  def busy_days(list) when length(list) > 1 do
    [head | tail] = list

    cond do
      head >= 5 -> 1 + busy_days(tail)
      true -> 0 + busy_days(tail)
    end
  end

  def busy_days(list) when length(list) === 1 do
    [head] = list

    cond do
      head >= 5 -> 1
      true -> 0
    end
  end

  def busy_days(list) when length(list) <= 0 do
    0
  end
end
