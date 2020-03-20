//////////
// CONFIG
// Skapa en express-app (vår server)
const express = require("express")
const app = express()
// express behöver body-parser för att läsa in request body (som json)
const bodyParser = require("body-parser")
app.use(bodyParser.json({limit: "50mb"}))
// porten vi servar på (som i http://localhost:3000 )
const port = 3000


// Konfigurera databasanslutningen
const mysql = require("mysql")
const db = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "mysql", // ""
  database: "auctionista"
})
// gör om metoderna connect och query till promise-metoder,
// så vi kan använda async / await:
const util = require("util")
db.connect = util.promisify(db.connect)
db.query = util.promisify(db.query)
// Anslut till databasen
db.connect()

/////////////////
// data routes
/*
app.get("/data/people", async (req, res) => {
  let query = "SELECT * FROM people"
  let result = await db.query(query)
  res.json(result)
}) */

// route där front-end hämtar data ifrån databasen
app.get("/data/:table", async (req, res) => {
  let query = "SELECT * FROM ??"
  let result = await db.query(query, [req.params.table])
  res.json(result)
})

app.post("/data/users", async (req, res) => {
  console.log("req.body", req.body)
  let query = "INSERT INTO users SET user_name = ?, user_email = ?"
  let result = await db.query(query, [req.body.user_name, req.body.user_email])
  res.json(result)
})

app.post("/data/items", async (req, res) => {
  console.log("req.body", req.body)
  let query = "INSERT INTO items SET seller_id = ?, item_name = ?, item_desc = ?, item_img = ?, reserved_price = ?, auction_start = ?, auction_end = ?"
  let result = await db.query(query, [req.body.seller_id, req.body.item_name, req.body.item_desc, req.body.item_img, req.body.reserved_price, req.body.auction_start, req.body.auction_end])
  res.json(result)
})

app.post("/data/bids", async (req, res) => {
  console.log("req.body", req.body)
  let query = "INSERT INTO bids SET bid_item = ?, bid_user = ?, bid_price = ?, bid_time = ?"
  let result = await db.query(query, [req.body.bid_item, req.body.bid_user, req.body.bid_price, req.body.bid_time ])
  res.json(result)
})

/*
// route där front-end skickar data till databasen
app.post("/data/people", async (req, res) => {
  console.log("req.body", req.body)
  let query = "INSERT INTO people SET name = ?, email = ?"
  let result = await db.query(query, [req.body.name, req.body.email])
  res.json(result)
}) */



/////////////////
// FRONTEND files (Inuti client-mappen vill vi lägga vår index.html och kopplade filer (bilder, css, js))
app.use(express.static("./client/"))

// servern startas
app.listen(port, () => {
  console.log("server running on port " + port)
})
