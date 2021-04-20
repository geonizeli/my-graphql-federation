import { ApolloServer } from 'apollo-server'

import { gateway } from './gateway'

export const server = new ApolloServer({
  gateway,
  subscriptions: false,
})
