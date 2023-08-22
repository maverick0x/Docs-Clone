const express = require('express')
const User = require('../models/user')

const authRouter = express.Router()

authRouter.post('/api/signup', async (req, res) => {
    try {
        const { name, email, profilePic } = req.body

        // Check if the email already exists
        let user = await User.findOne({ email })

        // If the email does not exist already
        if (!user) {
            // Store user data
            user = new User({
                name,
                email,
                profilePic,
            })
            user = await user.save()
            res.json({
                data: `User ${user.name} saved successfully`,
                user
            })
        } else {
            res.json({
                data: `User data already in database!`,
                user
            })
        }
    } catch (error) {
        res.status(500).json({ error: error.message })
    }
})

module.exports = authRouter