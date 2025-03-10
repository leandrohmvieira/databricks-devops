# Create a repo.
  
#   Creates a repo in the workspace and links it to the remote Git repo specified.
#   Note that repos created programmatically must be linked to a remote Git repo,
#   unlike repos created in the browser.

#   Arguments:
#     URL: URL of the Git repository to be linked.
#     PROVIDER: Git provider. This field is case-insensitive. The available Git providers
#       are gitHub, bitbucketCloud, gitLab, azureDevOpsServices,
#       gitHubEnterprise, bitbucketServer, gitLabEnterpriseEdition and
#       awsCodeCommit.

# Usage:
#   databricks repos create URL [PROVIDER] [flags]

# Flags:
#   -h, --help          help for create
#       --json JSON     either inline JSON string or @path/to/file.json with request body (default JSON (0 bytes))
#       --path string   Desired path for the repo in the workspace.

databricks repos create https://github.com/leandrohmvieira/databricks-devops  github --path /Workspace/Users/leandro.vieira@databricks.com/output_repo/created-repo