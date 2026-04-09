#!/usr/bin/env bash
# Копирует полную OpenAPI-спецификацию в репозиторий (нужна локальная копия файла).
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SRC="${1:-$HOME/Downloads/Yume Cloud API (3).yaml}"
DST="$ROOT/api-reference/yume-cloud-openapi.yaml"
if [[ ! -f "$SRC" ]]; then
  echo "Файл не найден: $SRC" >&2
  echo "Использование: $0 [путь/к/Yume Cloud API.yaml]" >&2
  exit 1
fi
cp -f "$SRC" "$DST"
echo "Обновлено: $DST ($(wc -c < "$DST" | tr -d ' ') байт)"
