module piulita(raza_exterior, raza_interior, grosime)
{
    difference(){
        cylinder(h = grosime, r = raza_exterior, $fn = 6);
    
        translate ([0, 0, -1]) cylinder(h = grosime + 2, r = raza_interior, $fn = 26);
    }
}
//-----------------------------------
module piulita_M4()

{
    piulita(3.5, 2, 4); 
   }

//------------------------
color ("red") piulita(10, 4, 4);
color ("yellow") translate ([25, 0, 0]) piulita(14, 2, 4);

color("blue") translate ([50, 0, 0]) rotate([90, 0, 0]) piulita(6, 4, 6);
   
   translate([ 0, 0, 20]) piulita_M4();
   
   mirror ([0, 0, 1]) translate([ 0, 0, 20]) piulita_M4();