var date = new Date();
var hours;
var minutes;
var seconds;


for (i=1; i<600; i++){
	date = new Date();
	hours = date.getHours();
	minutes = "0" + date.getMinutes();
	seconds = "0" + date.getSeconds();
	time = hours + ':' + minutes.substr(-2) + ':' + seconds.substr(-2);

	console.log(time);
  free -m;
	admin.sleep(1)
}
