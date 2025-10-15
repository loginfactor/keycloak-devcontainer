# Keycloak Devcontainer

A [Devcontainer](https://containers.dev/) for [Keycloak](https://www.keycloak.org/).

![Github Last Commit](https://img.shields.io/github/last-commit/loginfactor/keycloak-devcontainer)
![License](https://img.shields.io/github/license/loginfactor/keycloak-devcontainer?label=License)

## Getting started

### Start the DevContainer

1. Download this repository
2. Open the downloaded repository with VS Code
3. Click the popup to open the project in a DevContainer
    a. If no popup appears press F1 and click on `Dev Containters: Rebuild Container`

### Clone your Keycloak fork
You have to clone your fork of the Keycloak repository to the "keycloak" directory inside this repository root directory.

#### Option A: Use the interactive launch configuration (recommended)
1. Open the **Run and Debug** view in VS Code.
2. Select the `Clone or update Keycloak repository` configuration.
3. When prompted, enter the Git URL of your fork (defaults to `git@github.com:keycloak/keycloak.git`).
4. Optionally provide a branch, tag, or commit to check out (defaults to `main`; clear the prompt to keep the current branch).

The devcontainer runs a helper script that clones the repository if it does not yet exist, or updates the existing clone while pointing the `origin` remote to the provided URL.

#### Option B: Clone manually from the terminal
You can still clone your repository manually from within the running devcontainer by running the following command in a terminal:

```
git clone <your fork url> keycloak
```

If you want to use SSH keys enable the SSH key mount in `.devcontainer/devcontainer.json` AND use `sudo git clone ...` or change read permissions

## Build Keycloak
1. Click on the Running / Debugging tab at the left
2. Start the `Build Keycloak without tests` run configuration

## Start Keycloak
1. Click on the Running / Debugging tab at the left
2. Start the `Start Keycloak` run configuration

Now, the server should start, and you can set breakpoints to debug Keycloak.

## Debug Keycloak
1. Click on the Running / Debugging tab at the left
2. Start the `Attach Debugger` run configuration

Some more information regarding debugging Java in VSCode like [conditional breakpoints](https://code.visualstudio.com/docs/java/java-debugging#_breakpoint-conditional-breakpoint), [expression evaluation](https://code.visualstudio.com/docs/java/java-debugging#_expression-evaluation), or [hot code replacement](https://code.visualstudio.com/docs/java/java-debugging#_hot-code-replace)  can be found here [code.visualstudio.com/docs/java/java-debugging](https://code.visualstudio.com/docs/java/java-debugging)


## Run Tests
1. Open a test file, e.g. `/workspace/keycloak/services/src/test/java/org/keycloak/social/github/GitHubIdentityProviderTest.java`
2. Click on the triangle icons next to the line numbers to run the test (The icon changes after a test has started)

## How to Inspect the Database
There is an integrated PGAdmin in this devcontainer wich you can access here [localhost:8543](http://localhost:8543/)

## License

MIT License

Copyright (c) 2024 ActiDoo GmbH

See [LICENSE](LICENSE) file for details.
