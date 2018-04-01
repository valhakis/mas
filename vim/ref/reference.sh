# SECTION
# =========================================================================
# multiline variable
read -r -d '' VAR << EOM
LINE ONE 1
LINE ONE 2
LINE ONE 3
EOM

# SECTION
# =========================================================================
# variable as file
cat <(echo "$VAR")

# SECTION
# =========================================================================
# RECEIVE 'dev' nodemon config from watch.js
read -r -d '' CODE << EOM
require('./globals');
var watch = require('./watch');
var nodemon = {
  watch: watch.dev
};
console.log(JSON.stringify(nodemon, ' ', 2));
EOM
DEV_NODEMON_CONFIG=$(node <<< "$CODE")

nodemon -q dev --config <(echo "$DEV_NODEMON_CONFIG")
# -------------------------------------------------------------------------
