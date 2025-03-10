sudo apt-get install jq

# Define the workspace path of the repo
WORKSPACE_PATH="/Workspace/Users/leandro.vieira@databricks.com/output_repo/created-repo"

# Get the repo ID based on the path
REPO_ID=$(databricks repos get --path $WORKSPACE_PATH | jq -r '.id')

# Check if REPO_ID is not empty
if [ -z "$REPO_ID" ]; then
  echo "Repo with path $WORKSPACE_PATH not found."
  exit 1
fi

# Define the branch to update
BRANCH="main"

# Perform the repo update to pull the latest changes from the specified branch
databricks repos update --repo-id $REPO_ID --branch $BRANCH