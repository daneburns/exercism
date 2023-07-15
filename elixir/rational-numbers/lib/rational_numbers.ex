defmodule RationalNumbers do
  @type rational :: {integer, integer}

  @doc """
  Add two rational numbers
  """
  @spec add(a :: rational, b :: rational) :: rational
  def add(a, b) do
    {a1, b1} = a
    {a2, b2} = b
    common_denom = if b1 != b2, do: b1 * b2, else: b1
    a1 = a1 * b2
    b1 = b1 * a2

    sum = a1 + b1

    case sum do
      0 -> {0, 1}
      _ -> {sum, common_denom}
    end
  end

  @doc """
  Subtract two rational numbers
  """
  @spec subtract(a :: rational, b :: rational) :: rational
  def subtract(a, b) do
    {a1, b1} = a
    {a2, b2} = b
    common_denom = if b1 != b2, do: b1 * b2, else: b1
    a1 = a1 * b2
    b1 = b1 * a2
    difference = a1 - b1

    case difference do
      0 -> {0, 1}
      _ -> {difference, common_denom}
    end
  end

  @doc """
  Multiply two rational numbers
  """
  @spec multiply(a :: rational, b :: rational) :: rational
  def multiply(a, b) do
    {a1, b1} = a
    {a2, b2} = b
    reduce({a1 * a2, b1 * b2})
  end

  @doc """
  Divide two rational numbers
  """
  @spec divide_by(num :: rational, den :: rational) :: rational
  def divide_by(num, den) do
    {a1, b1} = den
    multiply(num, {b1, a1})
  end

  @doc """
  Absolute value of a rational number
  """
  @spec rational_abs(a :: rational) :: rational
  def rational_abs(a) do
    if a < 0, do: a * a, else: a
  end

  @doc """
  Exponentiation of a rational number by an integer
  """
  @spec pow_rational(a :: rational, n :: integer) :: rational
  def pow_rational(a, n) do
  end

  @doc """
  Exponentiation of a real number by a rational number
  """
  @spec pow_real(x :: integer, n :: rational) :: float
  def pow_real(x, n) do
  end

  @doc """
  Reduce a rational number to its lowest terms
  """
  @spec reduce(a :: rational) :: rational
  def reduce(a) do
    {a, b} = a
    divisible = if b != 0 and a != 0, do: is_integer(div(b, a)), else: false

    case a do
      a when a == 0 -> {0, 1}
      a when {trunc(a / a), trunc(b / a)} == {a, b} -> if b < 0, do: {-a, abs(b)}, else: {a, b}
      a when divisible == false -> {a, b}
      a when divisible == true -> reduce({trunc(a / a), trunc(b / a)})
      _ -> IO.puts('yeet')
    end
  end
end
