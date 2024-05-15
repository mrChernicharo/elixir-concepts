defmodule Example do
  # module attributes (constants)
  @someConst 10
  @anotherConst :hallo

  def start(_type, _args) do
    Example.main()
    Supervisor.start_link([], strategy: :one_for_one)
  end
  def main do
    # printConst()
    # showUUID()
    # IO.puts(hello())

    # StringAtomExample.printAhoyAtom()
    # StringAtomExample.printMoreAtoms()
    StringAtomExample.memberShipTest()
  end

  def printConst do
    IO.puts(@someConst)
    IO.puts(@anotherConst)
  end

  def showUUID do
    IO.puts(UUID.uuid4())
  end

  def hello do
    :"Hello world"
  end



end
