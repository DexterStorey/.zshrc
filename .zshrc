alias c="open -a Visual\ Studio\ Code $1"

alias t3="npx create-t3-app@latest"

alias n="npm run $1"

alias d="npm run dev"

alias i="npm install"

alias u="npx npm-check-updates -u && npm install"

alias b="npm run build"

alias s="npm start"

alias p="npx prisma studio"

alias id="npm install && npm run dev"

alias bs="npm run build && npm start"

alias ibs="npm install && npm run build && npm start"

alias rick="open -a Google\ Chrome https://www.adultswim.com/streams/rick-and-morty"

alias g='f(){ local msg="$*"; git add .; git commit -m ${msg:-untitled commit}; git push }; f'

alias r='f(){ npx create-rubric-app@latest -n ${1:-my-app} -y }; f'

alias k='f(){ kill -9 $(lsof -ti:${1:-3000}) }; f'
