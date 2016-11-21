defmodule Sonata.Seed.Numeric do
  use Bolero
  alias Bolero.Generators, as: G

  # https://www.postgresql.org/docs/9.1/static/datatype-numeric.html

  def smallint() do
    int(-32768, 32767)
  end

  def integer() do
    int(-2147483648, 2147483647)
  end

  def bigint() do
    int(-9223372036854775808, 9223372036854775807)
  end

  # TODO figure out the precision on these

  def decimal() do
    G.real()
  end
  def numeric() do
    decimal()
  end

  def real() do
    G.real()
  end

  def double() do
    G.real()
  end

  # let postgres generate the serial values
  def serial() do
    nil
  end
  def bigserial() do
    nil
  end
end
