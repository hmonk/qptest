function getblock(from, to){
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
}
