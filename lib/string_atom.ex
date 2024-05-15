defmodule StringAtomExample do
  def printAhoyAtom do
    IO.puts(:ahoy)
  end

  def printMoreAtoms do
    IO.puts(:"atom with spaces")
    IO.puts(:"23234234")
    IO.puts(:**)
    IO.puts(:okThen)
  end

  def memberShipTest do
    name = "Fel"
    status = Enum.random([:diamond, :gold, :silver, :bronze])

    # if (status == :diamond) do
    #   IO.puts("#{name} is a VIP")
    # else
    #   IO.puts("#{name} is trash")
    # end

    case status do
      :diamond ->
        IO.puts("status is #{status}, #{name} is a VIP")
      :gold ->
        IO.puts("status is #{status}, #{name} is ok")
       _ ->
          IO.puts("status is #{status}, #{name} is trash")

    end

  end


end
