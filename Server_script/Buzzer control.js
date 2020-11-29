if (msg.payload === true){
    msg.payload = "lost";
}
else {
    msg.payload = "found";
}

return msg;