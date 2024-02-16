alias i="bun i"

alias d="bun dev"

alias b="bun run build"

alias s="bun start"

alias id="i && d"

alias bs="b && s"

alias ibs="i && b && s"

alias p="npx prisma studio"

alias bleed="npx npm-check-updates -u && i"

alias clean="rm -rf .next && rm -rf node_modules && rm -f bun.lockb"

alias rick="open -a Google\ Chrome https://www.adultswim.com/streams/rick-and-morty"

alias g='f(){ local msg="$*"; git add .; git commit -m ${msg:-untitled commit}; git push }; f'

alias k='f(){ kill -9 $(lsof -ti:${1:-3000}) }; f'

alias K="k 3000,3001,3002,3003,3004,3005,5555"

alias c="open -a Visual\ Studio\ Code $1"

# replace with your ngrok tunnel domain
alias l='f(){ local port="$*"; ngrok http --domain=dexter.rubric.sh ${port:-3000}; }; f'

alias e='f(){ infisical --env=$1 export > .env.local; }; f'

alias dl="d & l"

alias t3="npx create-t3-app@latest"

alias r='f(){ npx create-rubric-app@latest -n ${1:-my-app} -y }; f'

# replace key with your open ai api key
alias ai="npx create-rubric-app@latest --key sk-XXXXXXXXX --bun --ai -y"
