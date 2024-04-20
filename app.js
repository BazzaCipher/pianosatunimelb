import express from "express"
const app = express()
const PORT = 3507;

app.use(express.static('dist'))
app.listen(PORT, _ => console.log(`Server listening on port ${PORT}`))
