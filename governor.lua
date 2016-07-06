
t = { "test1", "test2", "test3" }

s = { p = "hello", d = "test", g = {"ggg", "ppp", f = {b = "BBB", "fff"} } }

v = "test2"


function get_index(t, word)
	for i, v in pairs(t) do
		if t[i] == word then
			return i
		end
	end
	return -1
end


function toggle(t, value)
	local i = get_index(t, value)
	if i >= #t then
		i = 0
	end
	i = i + 1
	return t[i]
end

print(toggle(t, "test1"))

