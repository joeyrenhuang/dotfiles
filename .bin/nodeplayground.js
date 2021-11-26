#!/usr/bin/env node
const childProcess = require('child_process')
childProcess.exec('printf $EDITOR', function(err, io, ioerr){
    if(io) console.log('$EDITOR is', io)
  }
)

