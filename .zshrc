alias i="bun i"

alias d="bun dev"

alias b="bun run build"

alias s="bun start"

alias id="bun i && bun dev"

alias bs="bun run build && bun start"

alias ibs="bun i && bun run build && bun start"

alias p="npx prisma studio"

alias bleed="npx npm-check-updates -u && bun i"

alias rick="open -a Google\ Chrome https://www.adultswim.com/streams/rick-and-morty"

alias g='f(){ local msg="$*"; git add .; git commit -m ${msg:-untitled commit}; git push }; f'

alias k='f(){ kill -9 $(lsof -ti:${1:-3000}) }; f'

alias K="k 3000,3001,3002,3003,3004,3005,5555"

# replace with your ngrok tunnel domain
alias l='f(){ local port="$*"; ngrok http --domain=dexter.rubric.sh ${port:-3000}; }; f'

alias dl="bun dev & l"

alias t3="npx create-t3-app@latest"

# replace key with your open ai api key
alias ai="npx create-rubric-app@latest --key sk-XXXXXXXXX --bun --ai -y"
