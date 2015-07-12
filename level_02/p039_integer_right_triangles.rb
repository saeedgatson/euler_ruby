max = 1000
triangles = Hash.new(0)
p = 0
(1..max).each do |a|
  (a + 1..max).each do |b|
    (b + 1..max).each do |c|
      break if (a + b + c > max)
      triangles[a + b + c] += 1 if (a * a + b * b) == c * c
    end
  end
end

puts triangles.key(triangles.values.max)
