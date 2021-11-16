load HackComputer.hdl,
output-file arithmetic.out,
output-list RAM64[16]%D1.10.1 RAM64[17]%D1.10.1 RAM64[18]%D1.10.1 RAM64[19]%D1.10.1 ;

ROM32K load arithmetic.hack ,

set RAM64[16] 20 ,  //assign 20
set RAM64[17] 30 ,  //assign 30
set RAM64[18] 40 ,  //assign 40

set reset 1,
tick, tock ;

set reset 0 ,

repeat 10 {
    tick, tock ,
}
output;	//print

set RAM64[16] 11 ,  //assign 11
set RAM64[17] 22 ,  //assign 22
set RAM64[18] 33 ,  //assign 33

set reset 1,
tick, tock ;

set reset 0 ,

repeat 10 {
    tick, tock ,
}
output;	//print


set RAM64[16] 120 ,  //assign 120
set RAM64[17] 210 ,  //assign 210
set RAM64[18] 333 ,  //assign 333

set reset 1,
tick, tock ;

set reset 0 ,

repeat 10 {
    tick, tock ,
}
output;	//print
