defmodule EnumerableExample do
  def iterateOverTeams do
    teams = [
      {"Botafogo", 25},
      {"Flamengo", 22},
      {"LDU", 21}
    ]

    Enum.each(teams, fn {team, score} -> IO.puts("#{team} has scored #{score} points") end)
  end

  def iterateOverWarriors do
    weapons = %{
      sword: :sword,
      axe: :axe,
      bow_and_arrow: :bow_and_arrow
    }

    weapon_dmg = %{
      sword: 10,
      axe: 14,
      bow_and_arrow: 7
    }

    warriors = [
      {"Mikhal", weapons.sword},
      {"Turok", weapons.axe},
      {"Khaleen", weapons.bow_and_arrow}
    ]

    # IO.inspect(Enum.at(warriors, 2))
    # IO.inspect(Enum.at(weapons, 2))

    Enum.each(warriors, fn {name, weapon} ->
      IO.puts("#{name} is using #{weapon} to fight, dealing #{weapon_dmg[weapon]} of damage")
    end)

    # Enum.each(warriors)
  end
end
