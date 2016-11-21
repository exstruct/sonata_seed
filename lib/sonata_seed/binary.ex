defmodule Sonata.Seed.Binary do
  use Bolero

  # https://www.postgresql.org/docs/9.1/static/datatype-binary.html

  def bytea() do
    binary()
  end
end
