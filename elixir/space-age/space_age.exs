defmodule SpaceAge do
  @seconds_in_earth_year 60 * 60 * 24 * 365.25

  @orbital_period_in_earth_years %{
    mercury: 0.2408467,
    venus: 0.61519726,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132,
  }

  @type planet :: :mercury | :venus | :earth | :mars | :jupiter
                | :saturn | :neptune | :uranus

  @doc """
  Return the number of years a person that has lived for 'seconds' seconds is
  aged on 'planet'.
  """
  @spec age_on(planet, pos_integer) :: float

  def age_on(:earth, seconds), do: seconds / @seconds_in_earth_year
  def age_on(planet, seconds), do: age_on(:earth, seconds) / @orbital_period_in_earth_years[planet]

end
