const express = require('express');
const os = require('os')
const app = express();

app.get('/', (req, res) => {
    res.send(`Server IP: ${req.connection.localAddress}, Hostname: ${os.hostname()}, Version: ${process.env.VERSION} \n`);
});

app.listen(8080, () => {
    console.log('Listening on port 8080');
});
