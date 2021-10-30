defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    {_, num} = volume_pair
    num
  end

  def to_milliliter(volume_pair) do
    {measure, units} = volume_pair

    case measure do
      :cup -> {:milliliter, units * 240}
      :fluid_ounce -> {:milliliter, units * 30}
      :teaspoon -> {:milliliter, units * 5}
      :tablespoon -> {:milliliter, units * 15}
      :milliliter -> {:milliliter, units}
      _ -> {:error, "Unknown input"}
    end
  end

  def from_milliliter(volume_pair, unit) do
    {:milliliter, value} = volume_pair

    case unit do
      :cup -> {unit, value / 240}
      :fluid_ounce -> {unit, value / 30}
      :teaspoon -> {unit, value / 5}
      :tablespoon -> {unit, value / 15}
      :milliliter -> {unit, value}
      _ -> {:error, "Unknown input"}
    end
  end

  def convert(volume_pair, unit) do
    volume_pair
    |> to_milliliter()
    |> from_milliliter(unit)
  end
end
