local data <close> = assert(io.open("input"), "cannot retrieve input")
local sum = 0
local a, b = {}, {}

for line in data:lines("l") do
  ---@cast line string
	line:gsub("^(%d-)%s-(%d-)$", function(x, y)
  	a[#a+1] = tonumber(x)
  	b[#b+1] = tonumber(y)
  end)
end

table.sort(a)
table.sort(b)

for i = 1, #a do
	sum = sum + math.abs(a[i] - b[i])
end

print(sum)
