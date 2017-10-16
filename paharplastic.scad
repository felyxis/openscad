module pahar_plastic();
{
    difference() {
  
     union(){
   //union uneste 2obiecte ca fiind 1singur obiect
   cylinder(h=60, r1=15, r2=30); 
        translate([0, 0, 60]) cylinder(h=2, r=32);
     }
     translate([0, 0, 1]) cylinder( h=62, r1=15-1, r2=30-1);
        
    }
}


pahar_plastic();
