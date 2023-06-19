function timedCount(){
    for(var index= 0; index <= 20; index++ ){
        let pow = index*index;
    console.log(index,'*',index,"=",index*index);
    postMessage(pow);
    setTimeout("timedCount()", 500);
    }
    }
    timedCount();

