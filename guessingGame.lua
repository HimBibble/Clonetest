
--Randomize using OS time.
math.randomseed(os.time())

--Init variables
randNumber = 0

runGame = 'y'


--Main Game loop
while runGame == 'y' do
    remainingGuesses = 7
    randNumber = (math.random(1, 100))
    playerGuess = 0
    print (randNumber)
    --Loop for guessing while the player has remaining guesses.
    while remainingGuesses ~= 0 do
        print("Pick a number between 1 and 100!")
        playerGuess = tonumber(io.read())
        --Handle invalid inputs for guesses.
        while playerGuess == nil or playerGuess < 1 or playerGuess > 101 do
            print("Please enter a valid number between 0 and 101.")
            playerGuess = tonumber(io.read())
        end
        if playerGuess == randNumber then
            print("You got it!")
            remainingGuesses = 0
        elseif playerGuess ~= randNumber then
            --decrease guess counter.
            remainingGuesses = remainingGuesses - 1
            print("Sorry, that's not right! Try Again! " .. remainingGuesses .. " guesses left!")
            --Evaluate if the guess is too high or too low then tell the player.
            if playerGuess < randNumber then
                print ("That's too low!")
            elseif playerGuess > randNumber then
                print ("That's too high!")
            end
        end
    end
    print("Would you like to play again? Y/N")
    runGame = string.lower(io.read())
end
