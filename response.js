'use strict'

exports.status = (status, values, res) => {

    const data = {
        "status": status,
        "values": values
    }

    res.status(data.satus)
    res.json(data)
    res.end()

}