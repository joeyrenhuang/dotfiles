let count = 10
function log() {
  count--
  console.log('env2', process.env.ENV)
  if(count) {
    setTimeout(log, 1000)
  }
}
log()
