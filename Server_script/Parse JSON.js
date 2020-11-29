var avgtemp;
var avgmoist;
var avgpres;
var status= msg.payload.status;
var id=msg.payload.Client;
var battery = msg.payload.Battery_Voltage;

avgtemp = (msg.payload.temp[0]+msg.payload.temp[1]+msg.payload.temp[2]+msg.payload.temp[3]+msg.payload.temp[4])/5;
avgpres = (msg.payload.pressure[0]+msg.payload.pressure[1]+msg.payload.pressure[2]+msg.payload.pressure[3]+msg.payload.pressure[4])/5;
avgmoist = (msg.payload.U_moisture[0]+msg.payload.U_moisture[1]+msg.payload.U_moisture[2]+msg.payload.U_moisture[3]+msg.payload.U_moisture[4])/5;


temp = avgtemp.toFixed(2);
pres = avgpres.toFixed(2);
moist = avgmoist.toFixed(2);

var data = {payload: [id,moist,temp,pres,status,battery]};

return data;