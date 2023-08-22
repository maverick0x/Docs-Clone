const express = require('express')
const mongoose = require('mongoose');
const authRouter = require('./routes/auth');

const app = express()
const PORT = process.env.PORT | 3001

const DB = "mongodb+srv://maverick:PROgrammer@cluster0.e0ejzfu.mongodb.net/?retryWrites=true&w=majority";

mongoose
    .connect(DB)
    .then(() => {
        console.log(`Connection Successful!`)
    })
    .catch((err) => {
        console.log(err)
    })

app.use(express.json())
app.use(authRouter)

app.listen(PORT, "0.0.0.0", () => {
    console.log(`Server is running on port ${PORT}`)
})