defmodule RPG.CharacterSheet do
  def welcome() do
    IO.puts("Welcome! Let's fill out your character sheet together.")
  end

  def ask_name() do
    name = String.trim(IO.gets("What is your character's name?\n"))
    name
  end

  def ask_class() do
    class = String.trim(IO.gets("What is your character's class?\n"))
    class
  end

  def ask_level() do
    level = IO.gets("What is your character's level?\n")
    String.to_integer(String.trim(level))
  end

  def run() do
    RPG.CharacterSheet.welcome()
    name = RPG.CharacterSheet.ask_name()
    class = RPG.CharacterSheet.ask_class()
    level = RPG.CharacterSheet.ask_level()
    output = %{name: name, level: level, class: class}
    IO.inspect(output, label: "Your character")
  end
end
