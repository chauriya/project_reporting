import { gql } from 'apollo-server-express';

export default gql`
  extend type Query {
    orders: [Order!]
  }

  type Order {
    id: ID!
    date: String!
    name: String!
    shipTo: String!
    paymentMethod: String!
    amount: String!
  }
`;
