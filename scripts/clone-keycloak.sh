#!/usr/bin/env bash
set -euo pipefail

REPO_URL=${1:-}
REF=${2:-}
TARGET_DIR="keycloak"

if [[ -z "${REPO_URL}" ]]; then
  echo "Usage: $0 <repository-url> [ref]" >&2
  exit 1
fi

if [[ ! -d "${TARGET_DIR}" ]]; then
  echo "Cloning ${REPO_URL} into ${TARGET_DIR}..."
  git clone "${REPO_URL}" "${TARGET_DIR}"
else
  if [[ ! -d "${TARGET_DIR}/.git" ]]; then
    echo "Target directory ${TARGET_DIR} exists but is not a git repository." >&2
    exit 2
  fi

  echo "Updating existing repository in ${TARGET_DIR}..."
  git -C "${TARGET_DIR}" remote set-url origin "${REPO_URL}"
  git -C "${TARGET_DIR}" fetch origin
fi

if [[ -n "${REF}" ]]; then
  echo "Checking out ${REF}..."
  git -C "${TARGET_DIR}" checkout "${REF}"
  git -C "${TARGET_DIR}" pull --ff-only origin "${REF}" || true
else
  echo "No ref provided. Leaving repository on its current branch."
fi

