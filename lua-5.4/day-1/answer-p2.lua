local a, b = {}, {}
for line in io.lines("input") do
	line:gsub("^(%d-)%s-(%d-)$", function(x, y)
  	a[#a+1] = tonumber(x)
  	b[#b+1] = tonumber(y)
  end)
end

table.sort(a)
table.sort(b)

local occurs = {}
for _, val_a in pairs(a) do
  if occurs[val_a] then
    occurs[val_a] = occurs[val_a] * 2
  else
    occurs[val_a] = 0
  end
  for _, val_b in pairs(b) do
  	if val_b == val_a then
    	occurs[val_a] = occurs[val_a] + 1
    end
  end
end

local sum = 0
for _, val in pairs(a) do
	sum = sum + (val * occurs[val])
end

print("Part 2: " .. sum)
