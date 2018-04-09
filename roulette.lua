print ""
print "##### roulette #####"
print ""

math.randomseed( os.time() )

total_deaths = {}

print "enter number of tests: "
tests = io.read("*line")

for i = 1,tests do
    deaths = 0
    for i = 1,100 do
        pos = math.random(1,6)
        if pos == 6 then
            deaths = deaths + 1
        end
    end
    print (deaths)
    table.insert(total_deaths, deaths)
end

os.execute("cls")
print ("")
print ("Results for " .. tests .. " tests:")
print ("")
max = math.max(unpack(total_deaths))
min = math.min(unpack(total_deaths))
print ("Max: " .. max .. "%")
print ("Min: " .. min .. "%")
print ("O. error: " .. (max - min) .. "%")
median = (max+min)/2
print ("Median: " .. median .. "%")