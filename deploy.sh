#!/usr/bin/env bash
set -euo pipefail

SUDOERS_FILE="/etc/sudoers.d/ansible-$USER"

cleanup() {
	sudo rm -f "$SUDOERS_FILE"
}
trap cleanup EXIT

echo "$USER ALL=(ALL) NOPASSWD: ALL" | sudo tee "$SUDOERS_FILE"
sudo chmod 0440 "$SUDOERS_FILE"
ansible-playbook main.yml --vault-password-file ./local-secrets/vault-pass