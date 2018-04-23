function getblock(from, to){
  for (i=from; i<=to; i++){
    var block = eth.getBlock(i);
    with (block){
      var t = new Date(timestamp);
      var time = t.getHours()+":"+t.getMinutes()+":"+t.getSeconds()
      console.log(number,
                  miner,
                  size,
                  gasLimit,
                  gasUsed,
                  time);

    }

  }
}
getblock(368324,368519);
