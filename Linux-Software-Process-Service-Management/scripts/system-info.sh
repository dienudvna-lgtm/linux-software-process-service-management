#!/bin/sh
set -eu

printf '%s\n' 'Informasi Sistem Dasar'

if [ -r /etc/os-release ]; then
    . /etc/os-release
    printf 'Distribusi: %s\n' "${PRETTY_NAME:-Tidak diketahui}"
else
    printf '%s\n' 'Distribusi: informasi /etc/os-release tidak tersedia'
fi

printf 'Kernel: '
uname -r

printf 'Arsitektur: '
uname -m

printf 'Hostname: '
if command -v hostname >/dev/null 2>&1; then
    hostname
else
    printf '%s\n' 'Tidak tersedia'
fi

printf 'Pengguna saat ini: '
id -un
