defmodule Sonata.Seed.Monetary do
  use Bolero

  # https://www.postgresql.org/docs/9.1/static/datatype-money.html

  def money() do
    real(-92233720368547758.08, +92233720368547758.07)
  end
end
