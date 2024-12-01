local a, b = {}, {}
for line in io.lines("input") do
	line:gsub("^(%d-)%s-(%d-)$", function(x, y)
  	a[#a+1] = tonumber(x)
  	b[#b+1] = tonumber(y)
  end)
end

table.sort(a)
table.sort(b)

local sum = 0
for i = 1, #a do
	sum = sum + math.abs(a[i] - b[i])
end

print("Part 1: " .. sum)
