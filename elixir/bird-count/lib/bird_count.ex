defmodule BirdCount do
  def today([]), do: nil
  def today([head | _]), do: head

  def increment_day_count([]), do: [1]

  def increment_day_count([head | tail]), do: [head + 1 | tail]

  def has_day_without_birds?([]), do: false
  def has_day_without_birds?([0 | _]), do: true
  def has_day_without_birds?([_ | tail]), do: has_day_without_birds?(tail)

  def total([]), do: 0
  def total([head | tail]), do: head + total(tail)

  def busy_days([]), do: 0
  def busy_days([head | tail]) when head > 4, do: 1 + busy_days(tail)
  def busy_days([_ | tail]), do: busy_days(tail)
end

defmodule BirdCount do
  def today([]), do: nil
  def today([head | _]), do: head
  def increment_day_count([]), do: [1]
  def increment_day_count([head | tail]), do: [head + 1 | tail]
  def has_day_without_birds?([]), do: false
  def has_day_without_birds?([0 | _]), do: true
  def has_day_without_birds?([_ | tail]), do: has_day_without_birds?(tail)
  def total([]), do: 0
  def total([head | tail]), do: head + total(tail)
  def busy_days([]), do: 0
  def busy_days([head | tail]) when head > 4, do: 1 + busy_days(tail)
  def busy_days([_ | tail]), do: busy_days(tail)
end
