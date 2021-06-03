const { inputChatHandler } = require("./handler");

const routes = [
    {
        method: 'GET',
        path: '/',
        handler: inputChatHandler => {},
    },
];

module.exports = routes