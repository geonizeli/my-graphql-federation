import { ApolloServerPlugin } from 'apollo-server-plugin-base'

export const LoggingPlugin: ApolloServerPlugin = {
  // Fires whenever a GraphQL request is received from a client.
  requestDidStart(requestContext) {
    console.log('Request started! Query:\n' + requestContext.request.query)

    return {
      // Fires whenever Apollo Server will parse a GraphQL
      // request to create its associated document AST.
      // eslint-disable-next-line @typescript-eslint/no-unused-vars
      parsingDidStart(_requestContext) {
        console.log('Parsing started!')
      },

      // Fires whenever Apollo Server will validate a
      // request's document AST against your GraphQL schema.
      // eslint-disable-next-line @typescript-eslint/no-unused-vars
      validationDidStart(_requestContext) {
        console.log('Validation started!')
      },
    }
  },
}
