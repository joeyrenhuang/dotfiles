#!/usr/bin/env node
const {exec, execSync, spawn} = require('child_process')
console.log('env0', process.env.ENV)
// Test if 2 subprogress would share same env.ENV
Promise.all([env1(), env2()])
function env1() {
  return new Promise((ok, no) => {
    spawn('npm run env1', [], {
      stdio: [0, 1, 2],
      shell: true,
    }).on('close', (code) => {
      ok() 
      console.log(`env1 child process close all stdio with code ${code}`);
    })
  })
}
function env2() {
  return new Promise((ok, no) => {
    spawn('npm run env2', [], {
      stdio: [0, 1, 2],
      shell: true,
    }).on('close', (code) => {
      ok() 
      console.log(`env2 child process close all stdio with code ${code}`);
    })
  })
}
