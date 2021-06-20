take_a_trip () {
  vacay=( "🏖️  " "🏝️  " "🛫 " "🌴 " "🛳️  " "⛰️  " "🦜 " "⛵ " "🌋 " "🪂 " "🏕️  " "🎢 " "🐷 " "🦙 " "🦈 " "🦖 " "🦞 " "🌊 ")
  echo "${vacay[RANDOM%${#vacay[*]}+1]}"
}
# Prompt setup
function precmd {
  # I'm not sure why, but we need to re-run this function
  # on every prompt expansion via precmd - the selected
  # fish is cached otherwise. :(
  take_a_trip > /dev/null
}
setopt PROMPT_SUBST
PS1='$(take_a_trip)%n@%m %1~ %# '