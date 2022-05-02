const express = require('express');
const environment = 'development'
const config = require('./knexfile.js')[environment]
const knex = require('knex')(config)
const app = express()
const port = 3000
app.use(express.json());
app.use(express.urlencoded());
app.use(express.static(__dirname + "/public"));

app.post('/insert', (req,res) => {
    console.log(req.body)
    if (req.body.city && req.body.zipcode && req.body.state){
    let request = {
      namecity: req.body.city,
      zipcity: req.body.zipcode,
      statecity: req.body.state
    }
    knex('city').insert(request).returning('idcity')
      .then(up => {
        knex("city").where("idcity", up[0]["idcity"]).select().then(down => {
          res.json(down[0])
        })
      })
    }
})

app.post('/update', (req,res) => {
  if (req.body.cityUp && req.body.zipcodeUp && req.body.stateUp){
  let request = {
    namecity: req.body.cityUp,
    zipcity: req.body.zipcodeUp,
    statecity: req.body.stateUp
  }
  console.log(req.body)
  knex('city').where('namecity', req.body.cityUp)
        .update({
          zipcity: req.body.zipcodeUp,
          statecity: req.body.stateUp
          }).then(up => {
            if(up == 1){
              res.json({
                success: true
              })
            }
          })
          }
          
        })

app.post("/delete" , (req,res) => {
  console.log(req.body)
  if(req.body.id) {
    knex("city").where("idcity", req.body.id).del().then(up => {
      if(up == 1) {
        res.json({
          success: true
        })
      }
    })
  }
})

app.post("/retrieval", (req,res) => {
  if(req.body.cityRet) {
    knex("city").where("namecity","like","%"+req.body.cityRet+"%").select().then(up => {
      res.json(up[0])
    })
  }
})
app.get('/', (req, res) => {
  res.sendFile(__dirname + "/pages/index.html")
})

app.get('/api/:id', (req, res) => some_function(req, res))

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})

function some_function(req, res) {
  var displayText =""
  
  for(var i = 1 ; i <= req.params.id ; i++) {
      displayText += i+" "
  }

    res.json({id: displayText})
}