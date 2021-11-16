load HackComputer.hdl,              
output-file loop.out,              
output-list RAM64[16]%D1.10.1 RAM64[17]%D1.10.1 ;     

ROM32K load loop.hack ;

set reset 1,                       

tick, tock , output ;

set reset 0,                        

repeat 1420 {                        
	tick, tock,                               
}
 
output;  
