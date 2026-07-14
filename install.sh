#!/usr/bin/env bash
set -euo pipefail


#!/usr/bin/env bash
set -euo pipefail

DOWNLOAD_URL="https://edgedl.me.gvt1.com/edgedl/release2/j0qc3/antigravity/stable/2.1.1-6123990880747520/linux-x64/Antigravity%20IDE.tar.gz"
ARCHIVE="Antigravity IDE.tar.gz"

# Check Sudo
if [[ $EUID -ne 0 ]]; then
    echo "Please run this installer with sudo:"
    echo "  sudo $0"
    exit 1
fi

# Check if Curl and Tar is installed
echo "Checking dependencies..."
for cmd in curl tar; do
    if ! command -v "$cmd" >/dev/null 2>&1; then
        echo "Error: $cmd is required but not installed."
        exit 1
    fi
done

# Download archive if not present
if [ ! -f "$ARCHIVE" ]; then
    echo "Downloading Antigravity IDE..."
    if ! curl -fL -o "$ARCHIVE" "$DOWNLOAD_URL"; then
        echo "Error: Failed to download the IDE."
        rm -f "$ARCHIVE"
        exit 1
    fi
else
    echo "Using local archive: $ARCHIVE"
fi

echo "Extracting..."
TMP_EXTRACT_DIR=$(mktemp -d)
trap 'rm -rf "$TMP_EXTRACT_DIR"' EXIT

tar -xzf "$ARCHIVE" -C "$TMP_EXTRACT_DIR"

# Find the extracted directory
EXTRACTED_DIR="$(find "$TMP_EXTRACT_DIR" -mindepth 1 -maxdepth 1 -type d | head -n1)"

if [ -z "$EXTRACTED_DIR" ]; then
    echo "Error: Could not locate extracted Antigravity directory."
    exit 1
fi

echo "Installing to /opt..."
sudo rm -rf /opt/Antigravity-IDE
sudo mkdir -p /opt/Antigravity-IDE
sudo cp -a "$EXTRACTED_DIR"/. /opt/Antigravity-IDE/

echo "Configuring chrome-sandbox permissions..."
sudo chown root:root /opt/Antigravity-IDE/chrome-sandbox
sudo chmod 4755 /opt/Antigravity-IDE/chrome-sandbox

echo "Creating desktop entry..."

USER_HOME=$(eval echo ~"${SUDO_USER:-$USER}")
mkdir -p "$USER_HOME/.local/share/applications"

cat > "$USER_HOME/.local/share/applications/antigravity-ide.desktop" <<EOF
[Desktop Entry]
Version=1.0
Type=Application
Name=Antigravity2
GenericName=IDE
Comment=Experience liftoff
Exec=/opt/Antigravity/antigravity %F
Icon=/opt/Antigravity/resources/app/resources/linux/code.png
Terminal=false
StartupNotify=true
StartupWMClass=Antigravity
Categories=Development;TextEditor;
EOF

chmod 644 "$USER_HOME/.local/share/applications/antigravity-ide.desktop"

if command -v update-desktop-database >/dev/null 2>&1; then
    update-desktop-database "$USER_HOME/.local/share/applications" || true
fi

echo "Cleaning up..."

if [ -f "$ARCHIVE" ]; then
    printf "Remove '%s' from the current directory? [y/N]: " "$ARCHIVE"
    read -r response

    case "$response" in
        [yY]|[yY][eE][sS])
            rm -f "$ARCHIVE"
            echo "Archive removed."
            ;;
        *)
            echo "Archive kept."
            ;;
    esac
fi

echo "Done! Antigravity2 has been successfully installed."


















# Colors for terminal output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Download URL for the IDE (Replace with actual direct download URL if available)
DOWNLOAD_URL="https://edgedl.me.gvt1.com/edgedl/release2/j0qc3/antigravity/stable/2.1.1-6123990880747520/linux-x64/Antigravity%20IDE.tar.gz"
ARCHIVE="Antigravity IDE.tar.gz"

echo -e "${YELLOW}Checking dependencies...${NC}"
for cmd in curl tar sudo; do
    if ! command -v "$cmd" &> /dev/null; then
        echo -e "${RED}Error: $cmd is required but not installed. Please install it first.${NC}"
        exit 1
    fi
done

# Check if archive exists, otherwise download
if [ ! -f "$ARCHIVE" ]; then
    echo -e "${YELLOW}Archive not found locally. Downloading Antigravity IDE...${NC}"
    # Using -f to fail silently on server errors, -L to follow redirects
    if ! curl -f -L -o "$ARCHIVE" "$DOWNLOAD_URL"; then
        echo -e "${RED}Error: Failed to download the IDE. Please check the DOWNLOAD_URL or download it manually.${NC}"
        # Clean up empty file if curl failed
        rm -f "$ARCHIVE"
        exit 1
    fi
else
    echo -e "${GREEN}Found local archive: $ARCHIVE${NC}"
fi

echo -e "${YELLOW}Extracting...${NC}"
# Extract to a temporary directory first for safety
TMP_EXTRACT_DIR=$(mktemp -d)
trap 'rm -rf "$TMP_EXTRACT_DIR"' EXIT
tar -xzf "$ARCHIVE" -C "$TMP_EXTRACT_DIR" || { echo -e "${RED}Extraction failed!${NC}"; exit 1; }

echo -e "${YELLOW}Installing to /opt...${NC}"
# Move from the temp dir to /opt
sudo rm -rf "/opt/Antigravity-IDE" # Remove old version if exists
sudo mv -f "$TMP_EXTRACT_DIR/Antigravity IDE" "/opt/Antigravity-IDE"

echo -e "${YELLOW}Configuring chrome-sandbox permissions...${NC}"
sudo chown root:root "/opt/Antigravity-IDE/chrome-sandbox"
sudo chmod 4755 "/opt/Antigravity-IDE/chrome-sandbox"

echo -e "${YELLOW}Creating desktop entry...${NC}"
# Use the real user's HOME, even if run with sudo
USER_HOME=$(eval echo ~"${SUDO_USER:-$USER}")
mkdir -p "$USER_HOME/.local/share/applications"

cat > "$USER_HOME/.local/share/applications/antigravity.desktop" <<EOF
[Desktop Entry]
Version=1.0
Type=Application
Name=Antigravity IDE
GenericName=IDE
Comment=Experience liftoff
Exec=/opt/Antigravity-IDE/antigravity-ide %F
Icon=/opt/Antigravity-IDE/resources/app/resources/linux/code.png
Terminal=false
StartupNotify=true
StartupWMClass=Antigravity IDE
Categories=Development;IDE;TextEditor;
EOF

chmod 644 "$USER_HOME/.local/share/applications/antigravity.desktop"

if command -v update-desktop-database >/dev/null 2>&1; then
    update-desktop-database "$USER_HOME/.local/share/applications" || true
fi

echo -e "${YELLOW}Cleaning up downloaded archive...${NC}"
rm -f "$ARCHIVE"

echo -e "${GREEN}Done! Antigravity IDE has been successfully installed. 🎉${NC}"