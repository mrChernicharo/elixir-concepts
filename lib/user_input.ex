defmodule UserInputExample do
  def runExample do
    # 0, 1 ... 5
    correct = :rand.uniform(6) - 1
    correctStr = Integer.to_string(correct)

    guess = IO.gets("Pick a number from 0 to 5 : ") |> String.trim()

    IO.puts("correct number was " <> correctStr <> "!")

    if guess == correctStr do
      IO.puts("you win 🎉")
    else
      IO.puts("you lose 😩")
    end
  end

  def runExample2 do
    # 0, 1 ... 5
    correct = :rand.uniform(6) - 1
    IO.puts(correct)

    guess = IO.gets("Pick a number from 0 to 5 : ") |> String.trim() |> Integer.parse()
    # IO.inspect(guess)

    # Integer.parse() will remove non digits from the string
    case guess do
      {result, ""} ->
        IO.puts("parse successful. your guess: #{result}")

        # if elem(guess, 0) == correct do
        if result == correct do
          IO.puts("you win 🎉")
        else
          IO.puts("you lose 😩")
        end

      {result, other} ->
        IO.puts("parse partially successful... your guess: #{result}, junk you entered: #{other}")

      :error ->
        IO.puts("Something went wrong")
    end
  end
end
