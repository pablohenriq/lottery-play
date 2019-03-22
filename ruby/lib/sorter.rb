original = (1..60).to_a
sorted = []

6.times do
  i = original.shuffle[0]
  sorted << i
  original.delete(i)
end

p sorted.sort.join(' - ')
