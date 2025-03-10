# Update a repo.
  
#   Updates the repo to a different branch or tag, or updates the repo to the
#   latest commit on the same branch.

#   Arguments:
#     REPO_ID: ID of the Git folder (repo) object in the workspace.

# Usage:
#   databricks repos update REPO_ID_OR_PATH [flags]

# Flags:
#       --branch string   Branch that the local version of the repo is checked out to.
#   -h, --help            help for update
#       --json JSON       either inline JSON string or @path/to/file.json with request body (default JSON (0 bytes))
#       --tag string      Tag that the local version of the repo is checked out to.

# Global Flags:
#       --debug            enable debug logging
#   -o, --output type      output type: text or json (default text)
#   -p, --profile string   ~/.databrickscfg profile
#   -t, --target string    bundle target to use (if applicable)

# sudo apt-get install jq

# Define the workspace path of the repo
WORKSPACE_PATH="/Workspace/Users/leandro.vieira@databricks.com/output_repo/created-repo"

# Get the repo ID based on the path
REPO_ID=$(databricks repos get $WORKSPACE_PATH | jq -r '.id')

# Check if REPO_ID is not empty
if [ -z "$REPO_ID" ]; then
  echo "Repo with path $WORKSPACE_PATH not found."
  exit 1
fi

# Define the branch to update
BRANCH="main"

# Perform the repo update to pull the latest changes from the specified branch
databricks repos update $REPO_ID --branch $BRANCH