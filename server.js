const colors = require('colors');
const app = require('./app');

const server = app.listen();

// ErrorHandler
process.on('unhandledRejection', reason => {
  console.log(`unhandledRejection ${reason}`.red);
  server.close(() => process.exit(1));
});
