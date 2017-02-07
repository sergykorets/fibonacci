def fibonacci?(i)
  n1 = Math.sqrt((5*(i**2)+4))
  n2 = Math.sqrt((5*(i**2)-4))
  if n1 == n1.round || n2 == n2.round
    return true
  else 
    return false
  end
end

@array = Array.new(500) { rand(1...100) }
@array2 = []

@array.each do |a|
	if @array2.size < 10
		@array2 << a if fibonacci?(a)
	end
end

p 'Array of random numders:', @array
p 'Fibonacci numbers', @array2