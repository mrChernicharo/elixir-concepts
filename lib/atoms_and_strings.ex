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

  def printMsgWithLineBreaks do
    IO.puts("This\nis\na\nnew\nmessage\n")
    IO.puts("After line break")
  end

  def printCharCodes do
    IO.puts(0)
    IO.puts(?a)
    IO.puts(?ç)
  end

end
