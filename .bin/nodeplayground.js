#!/usr/bin/env node
const {exec, execSync} = require('child_process')
let editor = 'code'
exec('printf $MYEDITOR,$EDITOR', function(err, io, ioerr){
  if(io) {
    const [my, editor] = io.split(',')
    editor = my || editor 
    console.log('editor is', editor)
  }
})

