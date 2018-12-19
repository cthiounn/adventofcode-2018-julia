#!/usr/bin/env julia
using StatsBase

function day2()
	fname="input\\day2-input.file"
	global doubleLetter = 0
	global tripleLetter = 0
	global find = 0
	io=open(fname,"r")
	lines=readlines(io)
	for line in lines
		#Part 1
		if 2 in values(countmap(collect(line)))
			global doubleLetter += 1
		end
		if 3 in values(countmap(collect(line)))
			global tripleLetter += 1
		end
		
		#Part 2
		if find==0
			for line2 in lines
				global diff=0
				if line != line2
					global commun=""
					for i = firstindex(line):lastindex(line)
						#println(line[i] * " " * line2[i])
						if line[i]!=line2[i]
							global diff+=1
						else
							global commun *=line[i]
						end
						if diff==2
							break
						end
					end
				end
				if diff==1
					global find=1
					break
				end
			end	
		end
	end
	close(io)
	println(doubleLetter*tripleLetter)
	println(commun)
end

@time day2()