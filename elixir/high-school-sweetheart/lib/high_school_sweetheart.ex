defmodule HighSchoolSweetheart do
  def first_letter(name) do
    String.trim(name)
    |> String.at(0)
  end

  def initial(name) do
    (first_letter(name) <> ".")
    |> String.capitalize()
  end

  def initials(full_name) do
    [head | tail] = String.split(full_name, " ")
    first_letter(head) <> ". " <> first_letter(Enum.at(tail, 0)) <> "."
  end

  def pair(full_name1, full_name2) do
  """
     ******       ******
   **      **   **      **
 **         ** **         **
**            *            **
**                         **
**     #{initials(full_name1)}  +  #{initials(full_name2)}     **
 **                       **
   **                   **
     **               **
       **           **
         **       **
           **   **
             ***
              *
"""
  end
end


IO.puts(HighSchoolSweetheart.pair("Sydney Moses", "Dane Burns"))
