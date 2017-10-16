module pahar_plastic(inaltime_pahar, raza_baza_pahar, raza_sus_pahar, raza_buza, inaltime_buza, grosime_perete)
{
    difference() {
  
     union(){
   cylinder(h=inaltime_pahar, r1=raza_baza_pahar, r2=raza_sus_pahar); 
        translate([0, 0, inaltime_pahar]) cylinder(h=inaltime_buza, r=raza_buza);
     }
     translate([0, 0, grosime_perete]) cylinder( h=inaltime_pahar+inaltime_buza, r1= raza_baza_pahar- grosime_perete, r2=raza_sus_pahar - grosime_perete);
        
    }
}


pahar_plastic(inaltime_pahar=60, raza_baza_pahar=15, raza_sus_pahar=30, raza_buza=32, inaltime_buza=2, grosime_perete=1);
