import 'dotenv/config'

import { server } from './apollo'

server.listen().then(({ url }) => {
  console.log(`🚀 Server ready at ${url}`)
})
