let count = 10
function log() {
  count--
  if (count === 3) process.env.ENV = 'env1 => env3'
  console.log('env1', process.env.ENV)
  if(count) {
    setTimeout(log, 1000)
  }
}
log()

