#!/usr/bin/env julia

function day1()
	fname="input\\day1-input.file"
	global outputPart1=0
	global loop=0
	global breakLoop=0
	global seen = Int64[]
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
end

@time day1()