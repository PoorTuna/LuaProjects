--lua higherorlower.lua
print("Welcome to the holocaust we wish you the very best because you'll need it! :D")

function higher_or_lower()
	math.randomseed(os.time())
	local lives = 10
	local randomNumber = math.random(1, 50)

	while lives > 0 do
		print( "You have : " .. lives .. " lives to guess the number" )

		print("What is your guess?")
		local guess = io.read()

		guess = tonumber(guess)

		if guess > randomNumber then
			print("Your number is higher!")
	
		elseif guess < randomNumber then
			print("Your number is lower!")
	
		else
			print("You got it fam!")
			break

		end


		lives = lives - 1
	end

	if lives == 0 then
		print("snake? snake?!!! [The number was : " ..randomNumber.. " ]")
	end
end

-- Main:
continuing = true
while continuing do
	higher_or_lower()

	print("Would you like to continue [true / false]")
	continuing = io.read()
	
	if continuing == "false" then
		continuing = false
	elseif continuing == "true" then
		continuing = true
	else
		print("Your answer was invalid therefore the program stopped.")
	
	end
end