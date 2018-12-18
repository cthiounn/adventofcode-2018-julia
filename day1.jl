#!/usr/bin/env julia
fname="input\\day1-input.file"
outputPart1=0
loop=0
breakLoop=0
seen = Int64[]
while breakLoop==0
	open(fname) do file
		for line in eachline(file)
			#println(line)
			global outputPart1 += parse(Int32,line)
			if outputPart1 in seen
				global breakLoop=1
				break
			end
			push!(seen,outputPart1)
		end
		if loop==0
			println(outputPart1)
		end
		global loop+=1
	end
end

println(outputPart1)
