export default {
  Query: {
    orders: (parent, args, { models }) => {
      return Object.values(models.orders);
    },
    /* user: (parent, { id }, { models }) => {
      return models.users[id];
    },
    me: (parent, args, { me }) => {
      return me;
    }, */
  },

  /* User: {
    messages: (user, args, { models }) => {
      return Object.values(models.messages).filter(
        message => message.userId === user.id,
      );
    },
  }, */
};
