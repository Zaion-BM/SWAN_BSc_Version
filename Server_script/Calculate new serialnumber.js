if (msg.payload[0].maxkey === null){
    msg.payload = 1;}
else{msg.payload = msg.payload[0].maxkey + 1 };



return msg;