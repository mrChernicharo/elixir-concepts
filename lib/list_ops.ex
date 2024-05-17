defmodule ListOpsExample do
  def checkGrades do
    grades = [40, 60, 80, 90]

    # IO.inspect(grades) <-- IO.inspect converts to a charlist
    # That's why lists might end up looking horrible at the console

    IO.puts("\nour initial grades\n")
    IO.inspect(grades, charlists: :as_lists)

    # doubled_grades = for n <- grades, do: n * 2
    # IO.inspect(doubled_grades)

    IO.puts("\nadd 5 to each grade\n")
    new_grades = for n <- grades, do: n + 5

    IO.puts("\nappend to the list\n")
    new_grades = new_grades ++ [70]
    new_grades = new_grades ++ [40, 30]
    IO.inspect(new_grades)

    IO.puts("\nprepend to the list\n")
    new_grades = [100 | new_grades]

    IO.puts("\nadd nested lists\n")
    new_grades = [[20, 25, 30], new_grades, [20, [10, 100]]]

    IO.inspect(new_grades, charlists: :as_lists)
  end

  def fibonacci() do
    for n <- [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], do: fibonacci(n) |> IO.puts()
  end

  def fibonacci(n) do
    case n do
      0 -> 0
      1 -> 1
      _ -> fibonacci(n - 1) + fibonacci(n - 2)
    end
  end
end
