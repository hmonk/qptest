function getblock(from, to){
  for (i=from; i<=to; i++){
    var block = eth.getBlock(i);
    with (block){
      var t = new Date(timestamp*1000);
      var hour = t.getHours();
      var min = "0" + t.getMinutes();
      var sec = "0" + t.getSeconds();
      var time = hour + ':' + min.substr(-2) + ':' + sec.substr(-2);
      console.log(number,
                  miner,
                  size,
                  gasLimit,
                  gasUsed,
                  time,
                  transactions.length);
    }

  }
}
getblock(521673,521936);
