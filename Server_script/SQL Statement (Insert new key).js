var tempnum = msg.payload[0].maxkey+1;
serialnumber = tempnum.toString();


var topic = " INSERT INTO \"SERIALNUMBERS\" (\"key\") VALUES ('"+serialnumber+"\')";
var newmsg={}
newmsg.topic = topic;
return newmsg;