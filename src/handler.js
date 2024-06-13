require('dotenv').config();
const moment = require('moment-timezone');

const { insertQuery, selectAQuery } = require("./db_query");

const saveHistoryHandler = async (request, h) => {
    try {
        const { email, disease_name, akurasi } = request.payload;
        // const testData = {
        //     email: 'ivankurniawan474@gmail.com',
        //     disease_name: 'aeromonas',
        //     akurasi: '0,99'
        // };

        // konversi date js ke format SQL
        const date = new Date();
        const jakartaMoment = moment.tz(date, "Asia/Jakarta");
        const dateTimeSql = jakartaMoment.format('YYYY-MM-DD HH:mm:ss');
        // const dateTimeSql = date.toISOString().slice(0, 19).replace('T', ' ');

        // deklarasi data
        const data = {
            email: email,
            date_time: dateTimeSql,
            disease_name: disease_name,
            akurasi: akurasi
        }

        // simpan data ke database
        const sqlInsert = 'INSERT INTO history_scan SET ?';
        await insertQuery(sqlInsert, data);

        const response = h.response({
            status: 'success',
            message: 'Data berhasil ditambahkan',
            data: { data: data }
        });

        response.code(201);
        return response;

    } catch (err) {
        console.log("Error:", err);
        return h.response({ message: "Server error" }).code(500);
    }
}

const getHistoryhandler = async (request, h) => {
    try {
        const { email, dateTime } = request.payload
        // example format for dateTime = 2024-05-29T11:12:15Z
        // const dateTimeSql = new Date(dateTime).toISOString().slice(0, 19).replace('T', ' ');

        const sql = `SELECT * FROM history_scan WHERE email = '${email}' && date_time = STR_TO_DATE('${dateTime}', '%Y-%m-%d %H:%i:%s')`;
        const result = await selectAQuery(sql);

        if (result[0] !== undefined) {
            const data = result[0];

            // data.date_time = new Date(data.date_time).toISOString().slice(0, 19).replace('T', ' ');
            data.date_time = data.date_time.toISOString().slice(0, 19).replace('T', ' ');

            const response = h.response({
                status: 'success',
                message: 'Data history didapatkan',
                data: { data: data }
            });

            response.code(201);
            return response;
        }

        const response = h.response({
            status: 'failed',
            message: 'Data history tidak ditemukan'
        });

        response.code(401);
        return response;

    } catch (err) {
        console.log("Error:", err);
        return h.response({ message: "Server error" }).code(500);
    }
}

const getAllHistoryhandler = async (request, h) => {
    try {
        const { email } = request.payload

        const sql = `SELECT * FROM history_scan WHERE email = '${email}'`;
        const result = await selectAQuery(sql);

        if (result[0] !== undefined) {
            const data = result.map(element => element);

            data.forEach(element => {
                element.date_time = element.date_time.toISOString().slice(0, 19).replace('T', ' ');;
            });

            const response = h.response({
                status: 'success',
                message: 'Data history didapatkan',
                data: { data: data }
            });

            response.code(201);
            return response;
        }

        const response = h.response({
            status: 'failed',
            message: 'Data history tidak ditemukan'
        });

        response.code(401);
        return response;
    } catch (err) {
        console.log("Error:", err);
        return h.response({ message: "Server error" }).code(500);
    }
}

module.exports = { saveHistoryHandler, getHistoryhandler, getAllHistoryhandler };