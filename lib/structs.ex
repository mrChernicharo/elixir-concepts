defmodule Weapon do
  defstruct [:name, :damage]
end

defmodule Hero do
  defstruct [:name, :class, :weapon]
end

defmodule StructsExample do
  def heroesAndWeapons do
    sword = %Weapon{name: "Sword", damage: 12}
    axe = %Weapon{name: "Axe", damage: 15}
    staff = %Weapon{name: "Staff", damage: 8}

    heroes = [
      %Hero{name: "Conan", class: "Barbarian", weapon: sword},
      %Hero{name: "Galford", class: "Knight", weapon: axe},
      %Hero{name: "Sheena", class: "Mage", weapon: staff}
    ]

    Enum.each(heroes, fn %Hero{name: n, class: c, weapon: w} ->
      IO.puts("#{c} #{n} is holding a #{w.name}, dealing #{w.damage} of damage")
    end)
  end
end
