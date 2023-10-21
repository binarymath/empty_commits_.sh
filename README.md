# Bash Script for Generating Empty Commits 🚀

This is a simple Bash script that automates the creation of empty commits in a Git repository over a defined time period. This can be useful for building a commit history or generating fictional activity in a repository.

## Prerequisites 🛠️

Before running this script, make sure you have Git installed on your system and have access to a remote Git repository (e.g., on GitHub) where you want to push the commits.

## How to Use 📝

1. **Initial Setup**: Open the script in your favorite text editor and configure the desired start and end dates in the "YYYY-MM-DD HH:MM:SS" format.

```bash
start_date="2021-01-01 22:30:00"
end_date="2023-11-01 22:30:00"
```

2. **Script Execution**: Run the Bash script in your terminal. It will create a series of empty commits in your Git repository.

```bash
bash empty_commits.sh
```

3. **Push to a Remote Repository**: The script also sets up the Git repository to connect to a remote repository. Make sure to update the remote repository URL to point to your own repository.

```bash
git remote add origin https://github.com/your-username/your-repo.git
```

4. **Pushing Changes**: The script pushes the changes to the remote repository.

```bash
git push -u origin main
```

Ensure your Git credentials are set up correctly to allow the push.

## Notes 📝

- This script generates empty commits based on the specified start and end dates. Ensure the dates are accurate for the number of commits you wish to generate.

- By default, this script creates a new branch named "main". If you want to use a different branch name, you can change "main" to your desired name.

- Use with responsibility. Mass creation of empty commits can clutter your repository history.

- Make sure the remote repository URL is correct, and you have permission to push to that repository.

- This script is intended for demonstration purposes only and is not recommended for use in real repositories unless you have a specific reason to do so.

## Author 📜

* [Fabio Sousa](https://github.com/binarymath)

