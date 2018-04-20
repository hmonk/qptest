var from = 1;
var to = 100;
  for (i=from; i<=to; i++){
    var block = eth.getblock(i);
    with (block){
      var time = DATE(timestamp);
      console.log(number,
                  miner,
                  size,
                  gasLimit,
                  gasUsed,
                  time);

    }

  }
