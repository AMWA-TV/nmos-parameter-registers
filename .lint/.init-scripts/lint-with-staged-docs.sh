#!/usr/bin/env bash

set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
staged_directories=()

# shellcheck disable=SC2329
cleanup() {
    for directory in "${staged_directories[@]}"; do
        rm -rf "${repo_root}/docs/${directory}"
    done
}
trap cleanup EXIT

stage_manifest_directories() {
    local manifest="$1"
    [[ -f "${repo_root}/${manifest}" ]] || return 0

    while IFS= read -r directory; do
        [[ -n "${directory}" && -d "${repo_root}/${directory}" ]] || continue
        [[ ! -e "${repo_root}/docs/${directory}" ]] || continue
        cp -R "${repo_root}/${directory}" "${repo_root}/docs/${directory}"
        staged_directories+=("${directory}")
    done < <(
        sed -n -E \
            's/^[[:space:]]*-[[:space:]]+id:[[:space:]]*([^[:space:]#]+).*$/\1/p' \
            "${repo_root}/${manifest}"
    )
}

stage_manifest_directories registers.yml
stage_manifest_directories feature_sets.yml

cd "${repo_root}/.lint"
status=0
.scripts/lint.sh || status=$?
exit "${status}"
