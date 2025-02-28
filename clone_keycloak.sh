REPO_URL="https://github.com/keycloak/keycloak.git"
TARGET_DIR="keycloak"

if [ ! -d "$TARGET_DIR" ]; then
  echo "Directory $TARGET_DIR does not exist. Cloning repository..."
  git clone "$REPO_URL" "$TARGET_DIR"
else
  echo "Directory $TARGET_DIR already exists. Skipping clone."
fi