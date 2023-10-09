function Pair(a, b)
	return function(n)
		return n == 0
			and a
			or (n == 1 and b)
			or "air"
	end
end

function fst(p) return p(0) end
function snd(p) return p(1) end

local fivetwo = Pair(5, 2)
local threefour = Pair(3, 4)
local twothree = Pair(fivetwo(1), threefour(0))

print(twothree)
print(fivetwo, threefour)
print(fst(twothree), snd(twothree))
print(fst(twothree) + snd(twothree))


function both(p)
  return p(0), p(1)
end

local two, three = both(twothree)

print(three, two)
print(both(twothree))

