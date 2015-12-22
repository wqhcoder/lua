--[[
line = "90"
assert(type(line) == "string", "line is not a string")
n = tonumber(line)
if n == nil then
	error(line .. " is not a valid number")
else
	print(2 * n)
end

print(tostring(10) == "10")
print(10 .. "" == "10")
--]]

--[[
a = true
b = false
c = true
print((a and b) or c)

]]

--[[
print(not nil)
print(not false)
print(not 0)
print(not not nil)
]]

--[[
days = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"}
print(days[0])
print(days[1])
]]

--[[
a = {x = 0, y = 0}
print("a.x = " .. a.x .. ", a.y = " .. a.y)
]]

--[[
days = {[1] = "Sunday", [2] = "Monday", [3] = "Tuesday", [4] = "Wednesday", [5] = "Thursday", 
[6] = "Friday", [7] = "Saturday"}
print(days[1])
]]

--[[
sin = math.sin
w = {x = 0, y = 0, label = "console"}
x = {sin(0), sin(1), sin(2)}
w[1] = "another field"
x.f = w
print(w["x"])
print(w[1])
print(x.f[1])
w.x = nil
]]

--[[
days = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"}
list = nil
for line in pairs(days) do
	list = {next = list, value = line}
end

l = list
while l do
	print(l.value)
	l = l.next
end
]]

--[[
x = 10
a, b = 10, x * 4
print("a = " .. a .. ", b = " .. b)
]]

--[[
a = 10
b = 20
a, b = b, a
print("a = " .. a .. ", b = " .. b)
]]

--[[
a, b, c = 0, 1
print(a, b, c)
c, d = 4, 5, 6
print(c, d)
a, b, c = 0
print(a, b, c)
]]

--[[
do
	local a = 10
	local b = 20
	print(a, b)
end
print(a, b)
]]

--[[
do
	local a = 10
	if a > 10 then
		print("large")
	elseif a == 10 then
		print("equal")
	else
		print("small")
	end
end
]]

--[[
do
	local i = 0
	while i < 3 do
		print(i)
		i = i + 1
	end
end
]]

--[[
do
	local i = 2
	repeat
		print(i)
		i = i - 1
	until i < 0
end
]]

--[[
function f()
	return 2
end

do
	for var = 1, f() do
		print(var)
	end
end
]]
--[[
do
	local days = {a = "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"}
	revDays = {}
	for i, v in ipairs(days) do
		print(i, v)
		revDays[v] = i
	end
	print(revDays["Sunday"])
end
--]]

--print(os.date())

--[[
print("hello world")
print "hello world"
print(type({}))
print(type{})
]]

--[[
s, e = string.find("hello lua users", "lua")
print(s, e)
s, e = string.find("hello lua users", "lualua")
print(s, e)
]]

--[[
function maximum (a)
	local mi = 1
	local m = a[mi]
	for  i, val in ipairs(a) do
		if val > m then
			mi = i
			m = val
		end
	end
	return mi, m
end
print(maximum({5, 10, 6, 20, 40, 3, 1}))
]]

--[[
function foo0() end
function foo1() return 'a' end
function foo2() return 'a', 'b' end
]]

--[[
x, y, z = 20, foo2()
print(x, y, z)
x, y, z = foo2(), 20
print(x, y, z)
]]

--[[
print(foo0())
print(foo1())
print(foo2())
print(foo2(), 1)
print(1, foo2())
print(foo2() .. "x")
print("x" .. foo2())
]]

--[[
function show(a)
	for i, val in ipairs(a) do
		print(val)
	end
end
]]

--[[
a = {foo0(), foo2(), 4}
print(a[1], a[2], a[3], a[4])
a = {4, foo0(), foo2()}
print(a[1], a[2], a[3], a[4])
]]

--[[
function foo(i)
	if i == 0 then 
		return foo0()
    elseif i == 1 then
	    return foo1()
	elseif i == 2 then
	    return foo2()	
	end
end
print(foo(2))
print((foo(2)))
]]

--[[
f = string.find
a = {"hello", "ll"}
print(f(unpack(a))) 
]]

--[[
function unpack(t, i)
	i = i or 1
	if t[i] then
		return t[i], unpack(t, i + 1)
	end
end
t = {10, 20, 0, 30, 20, 10}
a = {unpack(t, 1)}
print(a[1], a[2], a[3], a[4], a[5], a[6], a[7])
]]

--[[
str = ""
function transform(a, b, ...)
    for i = 1, arg.n do
		str = str .. tostring(arg[i]) .. "\t"
	end
end
transform("1", "2", "3", "4", "100")
print(str)
]]

--[[]
_, x = string.find("hello", "llo")
print(x)
]]

--[[
function rename(arg)
	arg.oldName = arg.newName
end
name = { oldName = "oldName", newName = "newName"}
rename(name)
print(name.oldName)
]]

--[[
a = {p = print}
a.p("Hello World")
print = math.sin
a.p(print(1))
sin = a.p
sin(10, 20)
]]

--[[
max = function(x, y) 
	if x >= y then
		return x
	else 
	    return y
	end
end
print(max(10, 5))
]]

--[[
network = {
	{name = "grauna", ip = "210.26.30.34"},
	{name = "arraial", ip = "210.26.30.23"},
	{name = "lua", ip = "210.26.30.12"},
	{name = "derain", ip = "210.26.30.20"},
}
table.sort(network, function(a, b)
	return (a.name > b.name)
end)
for i = 1, table.maxn(network), 1 do
	print(network[i].name .. network[i].ip)
end
]]

--[[
table.sort(names, function(n1, n2)
	return grades[n1] > grades[n2]
end)
for i = 1, table.maxn(names), 1 do
	print(names[i])
end
]]

--[[
function sortByGrade(names, grades)
	table.sort(names, function(n1, n2)
		return grades[n1] > grades[n2]
	end)
end

function show(t)
	for i = 1, table.maxn(t), 1 do
		print(t[i])
	end
end
names = {"Peter", "Paul", "Mary"}
grades = {Mary = 10, Paul = 7, Peter = 8}
sortByGrade(names, grades)
show(names)
]]

--[[
function newCounter()
	print("hello world")
	local i = 0
	return function()
		i = i + 1
		return i
	end
end
c1 = newCounter()
print("type(c1) = " .. type(c1))
print(c1())
print(c1())

c2 = newCounter()
print(c2())
print(c1())
print(c2())
]]


--[[
function max(a, b)
	if a > b then
		return a
	else 
	    return b
	end
end
a = max
print(a(10, 20))

min = function(a, b)
	if a < b then
		return a
	else
	    return b
	end
end
t = min
print(min(10, 20))
print(t(40, 50))

p = function()
	print("Hello World")
end
p()

function test()
	print("test")
end
a = test()
print(type(a))
]]

--[[
function f1(n)
	local function f2()
		print(n)
	end
	return f2
end

g1 = f1(2015)
g1()
g2 = f1(2016)
g2()
]]

--[[
function create(n)
	local function foo1()
		print(n)
	end
	local function foo2()
		n = n + 10
	end
	return foo1, foo2
end

f1, f2 = create(2015)
f1()
f2()
f1()
f2()
f1()
]]

--[[
function test(n)
	local function foo()
		local function inner1()
			print(n)
		end
		local function innter2()
			n = n + 10
		end
		return inner1, innter2
	end
	return foo
end

t = test(2015)
f1, f2 = t()
f1()
f2()
f1()
g1, g2 = t()
g1()
g2()
g1()
f1()
]]

--[[
function add(x)
	return function(y)
		return x + y
	end
end
add2 = add(2)
print(add2(5))
]]

--[[
lib = {}
lib.foo = function(x, y) return x + y end
lib.goo = function(x, y) return x - y end
print(lib.foo(2, 4))

lib = { foo = function(x, y) return x + y end, goo = function(x, y) return x - y end }
print(lib.goo(2, 4))
]]

--[[
lib = {}
function lib.foo(x, y)
	return x + y
end
function lib.goo(x, y)
	return x - y
end
print(lib.goo(2, 4))
]]

--[[
local function f()
	print("f function")
end

local function g()
	print("g function")
	f()
end
g()
]]

--[[
local f = function()
	print("f function")
end

local g = function()
	print("g function")
	f()
end
g()
]]


--[[
local function fact(n)
	if n == 0 then 
		return 1
	else 
	    return n * fact(n - 1)
	end
end
print(fact(5))
]]

--[[
local function f()
	print("f function")
end

local function g()
	print("g function")
	f()
end
g()
]]

--[[
local g
local function f()
	return g()
end

function g()
	return 1
end
print(f())
]]

--[[
function f(x)
	return g(x)
end
]]

--[[
return x[i].foo(x[j] + a * b, i + j)

local function foo(n)
	if n > 0 then
		return foo(n - 1)
	end
end
]]

--[[
function iter(t)
	local i = 0
	local n = table.maxn(t)
	return function()
		i = i + 1
		if i <= n then return t[i] end
	end
end

t = {10, 20, 30}
for element in iter(t) do
	print(element)
end
]]

--[[
listIter = iter(t) -- create a iter
while true do
	local element = listIter() -- call the iter
	if(element == nil) then break end
	print(element)
end
]]

--[[
t = {10, name1 = "lua1", 20, 30, name2 = "lua2", 40, name3 = "lua3"}
for i, v in ipairs(t) do
	print(i, v)
end
]]

--[[
t = {[1] = "one", [3] = "two", [2] = "three", [6] = "for", [4] = "five"}
for i, v in pairs(t) do
	print(i, v)
end
]]


--[[
t = {"one", "two", "three"}
for i, v in ipairs(t) do
	print(i, v)
end
]]

--[[
function iter(t, i)
	i = i + 1
	local v = t[i]
	if v then
		return i, v
	end
end

function ipairs(t)
	return iter, t, 0
end

t = {[1] = "one", [3] = "two", [2] = "three", [6] = "for", [4] = "five"}
for i, v in ipairs(t) do
	print(i, v)
end
]]

--[[
function next(t)
	
end

function pairs(t)
	return next, t, nil
end

t = {[1] = "one", [3] = "two", [2] = "three", [6] = "for", [4] = "five"}
for k, v in pairs(t) do
	print(k, v)
end
]]

--[[
t = {}
print(next(t))
t = {"hello lus"}
print(next(t))
t = {a = "one"}
print(next(t))
print(next(t, "a"))
]]

--[[
t = {[1] = "one", [3] = "two", [2] = "three", [6] = "for", [4] = "five"}
print(next(t))
print(next(t, 1))
print(next(t, 3))
]]

--[[
t = {a = "one", "two", "three", b = "five", "six"}
t[4000000000] = "ten"
t[5] = "seven"
t.c = "eight"
print(table.getn(t))
print(table.maxn(t))
for i, v in pairs(t) do
	print(i, v)
end
]]

--[[
t = {100001 = "one"}
t[100002] = "two"
t[100003] = "three"
t[100004] = "four"
t[100005] = "five"
print("after ipairs:")
for i, v in ipairs(t) do
	print(i, v)
end
print("after pairs:")
for i, v in pairs(t) do
	print(i, v)
end
]]

--[[
t = {"one", "two", "three"}
t[4] = "5"
t[100] = "5"
t[6] = "5"
t[7] = "5"
t[9] = "5"
t[10] = "5"
t[12] = "5"
for i, v in ipairs(t) do
	print(i, v)
end
]]

--[[
function dofile(filename)
	local f = assert(loadfile(filename))
	return f()
end
]]

--[[
f = loadstring("i = i + 1")
i = 0
f()
print(i)
f()
print(i)
]]

--[[
f = loadstring("local a = 10; return a + 20")
print(f())
]]

--print(loadstring(" i i "))

--[[
f = loadstring("function foo(x) print(x) end")
print(f)
f()  -- define "foo"
foo(20)
]]

--[[
i = 0
f = loadstring("i =  i + 1")
f()
print(i)
]]

--[[
i = 10
print("test loadfile")
for i = 1, 2 do
	loadfile("test.lua")
end
print("test dofile")
for i = 1, 2 do
	dofile("E:/lua/programs/TT/test.lua")
end
print("test require")
for i = 1, 2 do
	require("test")
end
]]

--require("T.tt")

--[[
require("test")
print(_LOADED["test"])
]]

--[[
print(loadlib())
]]

--[[
print("enter a numner:")
assert(io.read("*number", "invalid input"))
]]

--[[
local status, err = pcall(function() error({code = 121}) end)
print(err.code)
]]

--[[
foo = function ()
	print(debug.traceback())
end
foo()
]]

--[[
co = coroutine.create(
    function()
		print("foo function")
	end)
print(co)
print(coroutine.status(co))

coroutine.resume(co)
print(coroutine.status(co))
]]

co = coroutine.create(
    function()
		for i = 1, 3 do
			print("co", i)
			coroutine.yield()
		end
	end
)
print(co)
print(coroutine.status(co)) -- suspended
coroutine.resume(co)
print(coroutine.status(co))
coroutine.resume(co)
print(coroutine.status(co))
coroutine.resume(co)
print(coroutine.status(co))
coroutine.resume(co)
print(coroutine.status(co))  -- dead
print(coroutine.status(co))  -- dead
print(coroutine.status(co))  -- dead
print(coroutine.status(co))  -- dead
print(coroutine.status(co))  -- dead










