module roata(raza, grosime, raza_gaura, nr_gauri)
    {
        difference() {
        cylinder(h=grosime, r=raza);
            for(i=[0:360/nr_gauri:359])
                rotate([0,0,i])
            translate([raza/2,0,-1])
            cylinder(r=raza_gaura, h=grosime+2);
        }
   }
   
   module masina(distanta_osii, lungime_osie)
   {
       //----roti fata
       
       rotate([90,0,0])
       rotate([0,0,$t*360])
       roata(raza=100, grosime=10,raza_gaura=10, nr_gauri=10);
       
       translate([0,lungime_osie,0])
          rotate([90,0,0])
       rotate([0,0,$t*360])
       roata(raza=100, grosime=10,raza_gaura=10, nr_gauri=10);
       
       //----roti spate
       
       translate([distanta_osii,0,0]) {
          rotate([90,0,0])
       rotate([0,0,$t*360])
       roata(raza=100, grosime=10,raza_gaura=10, nr_gauri=10);
       
       translate([0,lungime_osie,0])
          rotate([90,0,0])
       rotate([0,0,$t*360])
       roata(raza=100, grosime=10,raza_gaura=10, nr_gauri=10);
       
       }
   }
   translate([-$t*300,0,0])
   masina(distanta_osii=500, lungime_osie=300);
  
