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
    # StringAtomExample.printMsgWithLineBreaks()
    # StringAtomExample.printCharCodes()
    # StringAtomExample.memberShipTest()

    # NumbersExample.printSomeNumbers()
    # NumbersExample.printHighPrecisionNumbers()
    # NumbersExample.printCeilAtPrecision(0.7, 1)
    # NumbersExample.printCeilAtPrecision(0.7, 0)
    # NumbersExample.printGreaterCommonDivisor(1300, 200)
    # NumbersExample.printGreaterCommonDivisor(256, 240)

    # IO.inspect(DateTimeExample.getCurrDate())
    # DateTimeExample.printTime(15, 32, 20)
    # DateTimeExample.printTime(21, 47, 59)
    # DateTimeExample.printDate(2016, 5, 25)
    # DateTimeExample.printDate(1990, 3, 22)
    # DateTimeExample.printDate(1987, 4, 29)
    # DateTimeExample.printDateTime()
    # DateTimeExample.howLongTillNextYear()

    # myTuple = {:bronze, :silver}
    # IO.inspect(TuplesExample.grabSize(myTuple))
    # IO.inspect(TuplesExample.addItem(myTuple, :gold))
    # TuplesExample.doAppendSomeItemsThenPrint(myTuple)
    # IO.puts(TuplesExample.getAverage({5, 8, 12, 15, 4}))

    # EnumerableExample.iterateOverTeams()
    # EnumerableExample.iterateOverWarriors()

    # StructsExample.heroesAndWeapons()

    # IO.inspect(UserInputExample.module_info())

    # UserInputExample.runExample()
    # UserInputExample.runExample2()

    # ListOpsExample.checkGrades()
    ListOpsExample.fibonacci()
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
