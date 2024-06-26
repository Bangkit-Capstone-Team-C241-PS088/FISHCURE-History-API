const { saveHistoryHandler, getAllHistoryhandler, getHistoryhandler } = require("./handler");

const routes = [
    {
        // menyimpan data scan ke database history
        method: 'POST',
        path: '/saveHistory',
        handler: saveHistoryHandler
    },
    {
        // mengambil sebuah data scan dari database history
        method: 'POST',
        path: '/getHistory',
        handler: getHistoryhandler
    },
    {
        // mengambil semua data scan dari database history
        method: 'POST',
        path: '/getAllHistory',
        handler: getAllHistoryhandler
    },
];

module.exports = routes;