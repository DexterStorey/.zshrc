alias i="bun i"

alias d="bun dev"

alias b="bun run build"

alias s="bun start"

alias id="i && d"

alias bs="b && s"

alias ibs="i && b && s"

alias p="bunx prisma studio"

alias bleed="bunx npm-check-updates -u && i"

alias clean="rm -rf .next && rm -rf node_modules && rm -f bun.lockb"

alias rick="open -a Google\ Chrome https://www.adultswim.com/streams/rick-and-morty"

# Stage, commit, and push the current repository with an optional message.
g() {
  local msg="$*"

  if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    echo "g must be run inside a git repository"
    return 1
  fi

  git add -A

  if git diff --cached --quiet; then
    echo "No staged changes to commit"
    return 1
  fi

  git commit -m "${msg:-untitled commit}"
  git push
}

# Kill processes listening on one or more comma-separated ports (defaults to 3000).
k() {
  if ! command -v lsof >/dev/null 2>&1; then
    echo "lsof is required for k but was not found"
    return 1
  fi

  local ports="${1:-3000}"
  local -a port_list
  local port

  ports="${ports//,/ }"
  port_list=(${=ports})
  for port in "${port_list[@]}"; do
    local pids
    pids="$(lsof -ti:"$port")"
    if [[ -n "$pids" ]]; then
      kill -9 -- ${=pids}
      echo "Killed processes on port $port"
    else
      echo "No processes listening on port $port"
    fi
  done
}

# Convenience helper to clear the most commonly used dev ports.
K() {
  k "3000,3001,3002,3003,3004,3005,5555"
}

# Open the current directory in VS Code, with fallbacks for different platforms.
c() {
  if command -v open >/dev/null 2>&1; then
    open -a "Visual Studio Code" "$1"
  elif command -v code >/dev/null 2>&1; then
    code "$1"
  else
    echo "Neither 'open' nor 'code' commands are available"
    return 1
  fi
}

# Replace with your ngrok tunnel domain before using.
l() {
  local port="${1:-3000}"
  if ! command -v ngrok >/dev/null 2>&1; then
    echo "ngrok command not found"
    return 1
  fi

  ngrok http --domain=dexter.rubric.sh "$port"
}

# Export Infisical secrets for the provided environment into .env.local.
e() {
  local environment="$1"
  if [[ -z "$environment" ]]; then
    echo "Usage: e <environment>"
    return 1
  fi

  if ! command -v infisical >/dev/null 2>&1; then
    echo "infisical command not found"
    return 1
  fi

  infisical --env="$environment" export > .env.local
}

alias t3="bunx create-t3-app@latest"

# Bootstrap a new Rubric app with an optional name argument.
r() {
  local name="${1:-my-app}"
  if ! command -v bunx >/dev/null 2>&1; then
    echo "bunx command not found"
    return 1
  fi
  bunx create-rubric-app@latest -n "$name" -y
}

# replace key with your open ai api key
alias ai="bunx create-rubric-app@latest --key sk-XXXXXXXXX --bun --ai -y"
