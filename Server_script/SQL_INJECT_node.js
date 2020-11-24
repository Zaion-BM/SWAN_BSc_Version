var topic = " INSERT INTO \"SWAN\" (\"ID\"\,\"moisture\"\,\"temperature\"\,\"pressure\"\,\"status\"\,\"battery\") VALUES ('"+msg.payload[0]+"\'\,\'"+msg.payload[1]+"\'\,\'"+msg.payload[2]+"\'\,\'"+msg.payload[3]+"\'\,\'"+msg.payload[4]+"\'\,\'"+msg.payload[5]+"\')";
var newmsg={}
newmsg.topic = topic;
return newmsg;