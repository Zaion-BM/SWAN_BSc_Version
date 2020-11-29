if (msg.payload === true){
    msg.payload = "banned";
}
else {
    msg.payload = "enabled";
}

return msg;