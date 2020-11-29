var state = context.get('state') || false;

if (msg.topic == 'switch') {
    state = msg.payload;
    context.set('state', state);
}

return {payload: state};
