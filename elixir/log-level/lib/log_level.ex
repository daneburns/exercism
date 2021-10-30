defmodule LogLevel do
  def to_label(level, legacy?) do
    cond do
      level == 0 && !legacy? -> :trace
      level == 1 -> :debug
      level == 2 -> :info
      level == 3 -> :warning
      level == 4 -> :error
      level == 5 && !legacy? -> :fatal
      true -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    x = LogLevel.to_label(level, legacy?)

    cond do
      x == :fatal || x == :error -> :ops
      x == :unknown && legacy? -> :dev1
      x == :unknown && !legacy? -> :dev2
      true -> nil
    end
  end
end
