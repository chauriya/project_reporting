import { gql } from '@apollo/client';

const GET_ORDERS = gql`
  {
    orders {
        id,
        date,
        name,
        shipTo,
        paymentMethod,
        amount
    }
  }
`;

export default {
    GET_ORDERS
}