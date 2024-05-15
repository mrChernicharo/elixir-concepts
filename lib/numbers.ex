defmodule NumbersExample do
  def printSomeNumbers do
    a = 10_000
    b = 3.0
    c = 5.0
    IO.puts(a)
    IO.puts(b)
    IO.puts(c)
    IO.puts(b + c)
    IO.puts(a + c)
  end

  def printHighPrecisionNumbers do
    :io.format("~.20f\n", [123.45])
    :io.format("~.2f\n", [44.44444])
    :io.format("~.12f\n", [1.0])
    :io.format("~.3f\n", [500.55555555])
  end

  def printCeilAtPrecision(num, prec) do
    IO.puts(Float.ceil(num, prec))
  end

  def printGreaterCommonDivisor(num_1, num_2) do
    IO.puts(Integer.gcd(num_1, num_2))
  end
end
