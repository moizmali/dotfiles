#!/bin/bash
# Claude Code statusLine.
# Shows the active model + reasoning effort, the current session's context
# window usage, and Claude usage (5h / 7d rate limits) as dimmed progress bars.

input=$(cat)

usage_bar() {
  # Renders a fixed-width block-character progress bar for a 0-100 percentage.
  local pct="$1" width=10
  awk -v p="$pct" -v w="$width" 'BEGIN {
    f = (p * w / 100) + 0.5
    if (f > w) f = w
    if (f < 0) f = 0
    filled = int(f)
    bar = ""
    for (i = 0; i < filled; i++) bar = bar "▓"
    for (i = filled; i < w; i++) bar = bar "░"
    printf "%s", bar
  }'
}

# Model + reasoning effort. Effort comes from the statusLine input's
# `.effort.level` field (only present when the current model supports
# reasoning effort); no fallback needed since the field is documented.
model_name=$(echo "$input" | jq -r '.model.display_name // empty')
effort=$(echo "$input" | jq -r '.effort.level // empty')

model_info=""
if [ -n "$model_name" ]; then
  model_info="$model_name"
fi
if [ -n "$effort" ]; then
  if [ -n "$model_info" ]; then
    model_info="${model_info} · ${effort}"
  else
    model_info="$effort"
  fi
fi

# Bars are always shown, even when a value isn't available yet (e.g. no
# messages sent, or not subscribed to rate limits) — defaulting to 0%.
ctx_pct=$(echo "$input" | jq -r '.context_window.used_percentage // 0')
ctx_info="ctx $(usage_bar "$ctx_pct") $(printf '%.0f' "$ctx_pct")%"

five_hour=$(echo "$input" | jq -r '.rate_limits.five_hour.used_percentage // 0')
seven_day=$(echo "$input" | jq -r '.rate_limits.seven_day.used_percentage // 0')
usage_info="5h $(usage_bar "$five_hour") $(printf '%.0f' "$five_hour")% 7d $(usage_bar "$seven_day") $(printf '%.0f' "$seven_day")%"

line=""
if [ -n "$model_info" ]; then
  line="$model_info"
fi
if [ -n "$ctx_info" ]; then
  if [ -n "$line" ]; then
    line="${line} │ ${ctx_info}"
  else
    line="$ctx_info"
  fi
fi
if [ -n "$usage_info" ]; then
  if [ -n "$line" ]; then
    line="${line} │ ${usage_info}"
  else
    line="$usage_info"
  fi
fi

printf "\033[2m%s\033[0m" "$line"
