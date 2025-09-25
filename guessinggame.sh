
#!/bin/bash

# Function to get the number of files in the current directory
get_file_count() {
    count=$(ls -1 | wc -l)
    echo $count
}

# Function to play the guessing game
play_game() {
    local num_files
    num_files=$(get_file_count)

    local guess=-1

    echo "Welcome to the Guessing Game!"
    echo "Can you guess how many files are in the current directory?"

    # Loop until correct guess
    while [ "$guess" -ne "$num_files" ]; do
        read -p "Enter your guess: " guess

        if [ "$guess" -lt "$num_files" ]; then
            echo "Too low. Try again."
        elif [ "$guess" -gt "$num_files" ]; then
            echo "Too high. Try again."
        else
            echo "Congratulations! You guessed it right."
        fi
    done
}

# Start the game
play_game
