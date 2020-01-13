import React, { Fragment } from 'react';
import Table from '@material-ui/core/Table';
import TableBody from '@material-ui/core/TableBody';
import TableCell from '@material-ui/core/TableCell';
import TableHead from '@material-ui/core/TableHead';
import TableRow from '@material-ui/core/TableRow';
import { Query } from 'react-apollo';
import gql from "graphql-tag"
import Title from './Title';

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

const Orders = () => (

  <Query query={GET_ORDERS} >
    {({ data, loading, error }) => {
      if (!data) {
        return (
          <div>
            There are no messages yet ... Try to create one by
            yourself.
          </div>
        );
      }
      
      const { orders } = data;
      if (loading || !orders) {
        return 'loading ...';
      }
      if (error) return `Error! ${error.message}`;
console.log(orders);
      return (
        <Fragment>
          <Title>Recent Orders</Title>
          <Table size="small">
            <TableHead>
              <TableRow>
                <TableCell>Date</TableCell>
                <TableCell>Name</TableCell>
                <TableCell>Ship To</TableCell>
                <TableCell>Payment Method</TableCell>
                <TableCell align="right">Sale Amount</TableCell>
              </TableRow>
            </TableHead>
            <TableBody>
              {orders.map(row => (
                <TableRow key={row.id}>
                  <TableCell>{row.date}</TableCell>
                  <TableCell>{row.name}</TableCell>
                  <TableCell>{row.shipTo}</TableCell>
                  <TableCell>{row.paymentMethod}</TableCell>
                  <TableCell align="right">{row.amount}</TableCell>
                </TableRow>
              ))}
            </TableBody>
          </Table>
        </Fragment>
      );
    }}
  </Query>
)

export default Orders;