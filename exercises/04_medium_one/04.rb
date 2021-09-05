array = %w(raven finch hawk eagle)

def splat_method(array)
  yield(array)
end

splat_method(array) do |_, _, *raptors|
  p raptors
end