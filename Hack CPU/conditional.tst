load HackComputer.hdl,
output-file conditional.out,
output-list RAM64[16]%D1.10.1 RAM64[17]%D1.10.1 RAM64[18]%D1.10.1 ;

ROM32K load conditional.hack ,

//case 1:- a<b , 12 iterations required. (n>12 will do)

set RAM64[16] 200 ,  //a = 200
set RAM64[17] 300 ,  //b = 300

set reset 1,
tick, tock ;

set reset 0 ,

repeat 20 {
    tick, tock , 
}

output;

//case 2:- a>b , 8 iterations required. (n>8 will do)

set RAM64[16] 67 , //a = 67
set RAM64[17] 24 , //b = 24

set reset 1,
tick, tock ;

set reset 0 ,

repeat 20 {
    tick, tock ,
}
output;

//case 3:- a=b , 12 iterations required. (n>12 will do)

set RAM64[16] 74 , //a = 74
set RAM64[17] 74 , //b = 74

set reset 1,
tick, tock ;

set reset 0 ,

repeat 20 {
    tick, tock , 
}
output;