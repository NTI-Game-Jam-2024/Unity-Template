#!/bin/bash

# Initial README content
readme_content="### Directory Overview\n\n"

# Add specific content for each folder
add_content() {
    case $1 in
        "Data") echo -e "#### \`data/\`\nIncludes data files the game uses, such as level designs, game configuration data, or other scripts." ;;
        "Documentation") echo -e "#### \`docs/\`\nFor all project documentation, including Game Design Documents, developer guides, and other relevant resources." ;;
        "Scripts") echo -e "#### \`src/\`\nShort for \"source,\" where your source code files, including game scripts and classes, are located." ;;
        "Tests") echo -e "#### \`tests/\`\nContains all test cases, such as unit tests and integration tests." ;;
        *) echo -e "#### \`${1}/\`\nThis folder contains ${1,,} related to the project." ;;
    esac
}

# List of folders
folders=("Animations" "Data" "Documentation" "Editor" "Images" "Resources" "Scenes" "Scenes.meta" "Scripts" "Sounds" "StreamingAssets" "Tests")

# Create and move README.txt to each folder
for folder in "${folders[@]}"; do
    mkdir -p "$folder"  # Create the folder if it doesn't exist
    echo -e "$readme_content$(add_content "$folder")" > "$folder/README.txt"
done
