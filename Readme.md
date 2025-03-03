# How to Start the DevContainer

1. Download this repository
2. Open the downloaded repository with VS Code
3. Click the Popup to open the project in a DevContainer
3. a. If no popup appears press F1 ans click on `Dev Containters: Rebuild Container`

## How to Clone Keycloak
1. Run `./clone_keycloak.sh`

## How to Build Keycloak
1. Run `./build_keycloak_without_tests.sh`

## How to Debug Keycloak
1. Click on the Debugging tab at the left
2. Click on Run and Debug
3. Select Java
4. Select `org.keycloak.Keycloak`

Now, the server should start, and you can set breakpoints to debug Keycloak.

Some more information regarding debugging Java in VSCode like [conditional breakpoints](https://code.visualstudio.com/docs/java/java-debugging#_breakpoint-conditional-breakpoint), [expression evaluation](https://code.visualstudio.com/docs/java/java-debugging#_expression-evaluation), or [hot code replacement](https://code.visualstudio.com/docs/java/java-debugging#_hot-code-replace)  can be found here [code.visualstudio.com/docs/java/java-debugging](https://code.visualstudio.com/docs/java/java-debugging)

If the server fails during the start with a missing version error message refer to this [issue](https://github.com/keycloak/keycloak/issues/37740)



## How to Run Tests
1. Open a test file, e.g. `/workspace/keycloak/services/src/test/java/org/keycloak/social/github/GitHubIdentityProviderTest.java`
2. Click on the triangle icons next to the line numbers to run the test (The icon changes after a test has started)

## How to Inspect the Database (PGAdmin)
1. Open PGAdmin here [localhost:8543](http://localhost:8543/)
2. Open the server tab at the left
3. Enter the password `keycloak` (this is the password for postgres in the `docker-compose.yml`)