var date = new Date();
var hours;
var minutes;
var seconds;


for (i=1; i<120; i++){
	date = new Date();
	hours = date.getHours();
	minutes = "0" + date.getMinutes();
	seconds = "0" + date.getSeconds();
	time = hours + ':' + minutes.substr(-2) + ':' + seconds.substr(-2);

	console.log(time , txpool.status.pending, txpool.status.queued)
	console.log('"pending":',  txpool.status.pending, ',')
	console.log('"queued":',  txpool.status.queued)
	console.log("}")
	admin.sleep(1)
}
