defmodule DateTimeExample do
  def printTime(h, m, s) do
    time = Time.new(h, m, s, 0)
    IO.inspect(time)
  end

  def printDate(y, m, d) do
    date = Date.new(y, m, d)
    IO.inspect(date)
    IO.inspect(date)
  end

  def printDateTime() do
    # ! to bypass ArgumentError
    fel_time = Time.new!(8, 16, 24, 0)
    fel_date = Date.new!(2024, 5, 15)
    date_time = DateTime.new!(fel_date, fel_time, "Etc/UTC")
    IO.inspect(date_time)
    IO.puts(date_time.year)
    IO.puts(date_time.month)
    IO.puts(date_time.day)
  end

  def getCurrDate() do
    # DateTime.utc_now(:second)
    # DateTime.utc_now(:microsecond)
    DateTime.now("Etc/UTC")
  end

  def howLongTillNextYear() do
    # now = DateTimeExample.getCurrDate()
    now = DateTime.utc_now(:second)
    nxt_d = Date.new!(2025, 1, 1)
    nxt_t = Time.new!(0, 0, 0, 0)
    new_year_date = DateTime.new!(nxt_d, nxt_t, "Etc/UTC")
    diff = DateTime.diff(new_year_date, now, :second)

    IO.inspect(diff)
  end
end
