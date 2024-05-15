defmodule TuplesExample do
  def grabSize(tuple) do
    tuple_size(tuple)
  end

  def addItem(tuple, value) do
    Tuple.append(tuple, value)
  end

  def getAverage(tuple) do
    Tuple.sum(tuple) / grabSize(tuple)
  end

  def doAppendSomeItemsThenPrint(tuple) do
    IO.puts("\nthis is the original tuple")
    IO.inspect(tuple)

    IO.puts("\nnow, we'll go about appending some items to it\n")

    addItem(tuple, :gold)
    |> IO.inspect()
    |> addItem(:diamond)
    |> IO.inspect()
    |> grabSize()
    |> IO.inspect()
  end
end
