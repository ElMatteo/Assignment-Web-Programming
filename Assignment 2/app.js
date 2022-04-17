import express from 'express';
import * as url from 'url'

// Create a new express application instance
const app = express()
// Mount a new route handler on the default path "/"
const port = 3000

const di_rname = url.fileURLToPath(new URL('.', import.meta.url));

app.use(express.static(di_rname + "/public"));


app.get('/', (req, res) => {
  res.sendFile(di_rname + "/pages/index.html")
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

export { some_function }