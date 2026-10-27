
#!/usr/bin/env bash

# Google Pixel repositories
# Device trees and common tree: shuskydump
# Vendor blobs: shuskydump

clone_repo() {
    local org="$1"
    local repo="$2"
    local path="$3"

    echo "========================================"
    echo "Repository: $org/$repo"
    echo "Target:     $path"
    echo "========================================"

    if [ -d "$path/.git" ]; then
        echo "Already exists, skipping: $path"
        echo
        return 0
    fi

    if [ -e "$path" ]; then
        echo "ERROR: Path already exists: $path"
        echo
        return 1
    fi

    mkdir -p "$(dirname "$path")"

    if git clone --depth=1 \
        "https://github.com/$org/$repo.git" "$path"; then
        echo "SUCCESS: $path"
    else
        echo "FAILED: $org/$repo"
    fi

    echo
}

# ==========================================
# Device repositories - shuskydump
# ==========================================

clone_repo "shuskydump" "device_google_shusky" \
    "device/google/shusky"

clone_repo "shuskydump" "device_google_zuma" \
    "device/google/zuma"

clone_repo "shuskydump" "device_google_shusky-kernels" \
    "device/google/shusky-kernels"

clone_repo "shuskydump" "device_google_gs-common" \
    "device/google/gs-common"

# ==========================================
# Vendor repositories - shuskydump
# ==========================================

clone_repo "shuskydump" "vendor_google_shiba" \
    "vendor/google/shiba"

clone_repo "shuskydump" "vendor_google_husky" \
    "vendor/google/husky"

echo "========================================"
echo "All clone attempts completed!"
echo "========================================"
