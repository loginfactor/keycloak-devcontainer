# How to start the DevContainer

1. Download this repo
2. Open the downloaded repo with VS Code
3. Click the Popup to open the project in a DevContainer
3. a. if no pop up appears click the remote icon at the bottom left
4. Run `./build_keycloak_without_tests.sh`
5. Click on the Debugging tab at the left
6. Click on Run and Debug
7. Select Java
8. Select `org.keycloak.Keycloak`

Now the server should start and you can set breakpoints and debug keycloak.


If the server fails during the start with a missing version error message refer to this [issue](https://github.com/keycloak/keycloak/issues/37740)

## PGAdmin
1. Open [localhost:8543](http://localhost:8543/)
2. Open the server at the left
3. Enter the password `keycloak` (this is the password for postgres in the `docker-compose.yml`)