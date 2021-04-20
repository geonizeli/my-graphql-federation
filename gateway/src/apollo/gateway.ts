import { ApolloGateway } from '@apollo/gateway'

export const gateway = new ApolloGateway({
  serviceList: [
    { name: 'comments-api', url: process.env.COMMENT_GRAPHQL_URL },
    { name: 'articles-api', url: process.env.ARTICLE_GRAPHQL_URL },
  ],
})
