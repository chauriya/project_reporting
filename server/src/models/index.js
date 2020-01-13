let users = {
  1: {
    id: '1',
    username: 'Robin Wieruch',
    messageIds: [1],
  },
  2: {
    id: '2',
    username: 'Dave Davids',
    messageIds: [2],
  },
};

let messages = {
  1: {
    id: '1',
    text: 'Hello World',
    userId: '1',
  },
  2: {
    id: '2',
    text: 'By World',
    userId: '2',
  },
};
let orders = {
  1: {
    id: 1,
    date: '16 Mar, 2019',
    name: 'Elvis Presley',
    shipTo: 'Tupelo, MS',
    paymentMethod: 'VISA ⠀•••• 3719',
    amount: 312.44
    /* createData(1, '16 Mar, 2019', 'Paul McCartney', 'London, UK', 'VISA ⠀•••• 2574', 866.99),
    createData(2, '16 Mar, 2019', 'Tom Scholz', 'Boston, MA', 'MC ⠀•••• 1253', 100.81),
    createData(3, '16 Mar, 2019', 'Michael Jackson', 'Gary, IN', 'AMEX ⠀•••• 2000', 654.39),
    createData(4, '15 Mar, 2019', 'Bruce Springsteen', 'Long Branch, NJ', 'VISA ⠀•••• 5919', 212.79), */
  },
  /* 2: {
    id: 0,
    date: '16 Mar, 2019',
    name: 'Elvis Presley',
    shipTo: 'Tupelo, MS',
    paymentMethod: 'VISA ⠀•••• 3719',
    amount: 312.44
  }, */
};

export default {
  users,
  messages,
  orders
};
