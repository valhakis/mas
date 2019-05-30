var bs = require("browser-sync").create();

bs.init({
  server: './app',
  open: false,
  files: [
    'app/*.{html,js,css}'
  ],
	ghostMode: {
		clicks: false,
		forms: false,
		scroll: false
	},
	logConnections: true,
	logConnections: true,
	logFileChanges: true,
});
