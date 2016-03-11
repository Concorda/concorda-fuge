module.exports = {

  // run docker containers if false containers with image attribute will not be run
  runDocker: true,

  // proxy settings - one of docker | process | all
  proxy: 'all',

  // if true tail running process to the shell by default
  tail: true,

  // if true monitor running processes for changes by default
  monitor: true,

  // exclude these patterns from the monitor
  exclude: /node_modules|\.git|\.log/mgi,

};
