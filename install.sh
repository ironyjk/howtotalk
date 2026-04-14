#!/bin/bash
# howtotalk — One-command installer for 14 communication skills
#
# Usage:
#   curl -fsSL https://raw.githubusercontent.com/ironyjk/howtotalk/master/install.sh | bash
#   curl ... | bash -s -- --with-hook
#   curl ... | bash -s -- --global --with-hook

set -e

WITH_HOOK=false
GLOBAL=false
TARGET=""
for arg in "$@"; do
    case "$arg" in
        --with-hook) WITH_HOOK=true ;;
        --global) GLOBAL=true ;;
        -*) ;;
        *) TARGET="$arg" ;;
    esac
done

if [ "$GLOBAL" = true ]; then
    TARGET="${TARGET:-$HOME/.claude/skills}"
    SETTINGS_FILE="$HOME/.claude/settings.json"
elif [ -n "$TARGET" ]; then
    SETTINGS_FILE=".claude/settings.local.json"
else
    TARGET=".claude/skills"
    SETTINGS_FILE=".claude/settings.local.json"
fi

TEMP_DIR=$(mktemp -d)
mkdir -p "$TARGET"

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

echo ""
echo "  🗣️ howtotalk installer — 14 communication skills"
echo "  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

printf "  📦 howtotalk (14 skills)... "

if git clone --depth 1 --quiet "https://github.com/ironyjk/howtotalk.git" "$TEMP_DIR/ht" 2>/dev/null; then
    for d in nvc crucial-conversations never-split getting-to-yes influence radical-candor difficult-conversations motivational-interviewing storytelling socratic scarf active-listening desc howtotalk; do
        [ -d "$TEMP_DIR/ht/$d" ] && mkdir -p "$TARGET/$d" && cp -r "$TEMP_DIR/ht/$d/"* "$TARGET/$d/" 2>/dev/null || true
    done
    echo -e "${GREEN}✓${NC}"
else
    echo -e "${RED}✗ failed${NC}"
fi

rm -rf "$TEMP_DIR"

SCRIPT_ABS_PATH="$(cd "$TARGET/howtotalk" 2>/dev/null && pwd)/check-update.sh"

if [ "$WITH_HOOK" = true ] && command -v python3 &>/dev/null; then
    HOOK_CMD="bash $SCRIPT_ABS_PATH &"
    if [ -f "$SETTINGS_FILE" ]; then
        if ! grep -q "howtotalk" "$SETTINGS_FILE" 2>/dev/null; then
            python3 -c "
import json
with open('$SETTINGS_FILE', 'r') as f:
    cfg = json.load(f)
hooks = cfg.setdefault('hooks', {})
ss = hooks.setdefault('SessionStart', [])
ss.append({'hooks': [{'type': 'command', 'command': '$HOOK_CMD'}]})
with open('$SETTINGS_FILE', 'w') as f:
    json.dump(cfg, f, indent=2)
" && echo -e "  ${GREEN}✓${NC} Auto-update hook registered"
        fi
    fi
fi

echo ""
echo "  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "  ${GREEN}✓ 14 communication skills installed${NC}"
echo ""
echo "  Usage:"
echo "    /howtotalk [describe your situation]"
echo "    /nvc [express needs without blame]"
echo "    /negotiate [prepare for negotiation]"
echo ""
echo "  github.com/ironyjk/howtotalk"
echo "  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
