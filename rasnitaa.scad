module corp_rasnita(inaltime_cub,lungime_cub,inaltime_sfera,raza_sfera)

color("MediumSpringGreen")
difference(){ 
intersection(){
translate([0,0,inaltime_cub])cube(lungime_cub, center=true);
translate ([0,0,inaltime_sfera])sphere(raza_sfera,$fn=90);      
    }
}
module capac_rasnita(grosime_cilindru,raza_cilindru,inaltime_cilindru)
   color("Brown")
        translate([0, 0, inaltime_cilindru]) cylinder(h=grosime_cilindru,r= raza_cilindru, $fn=80);

module sfere_mici(inaltime_sfere,raze_sfere)

union(){
    
color("LightSlateGray")
     translate([0,-5,inaltime_sfere])
sphere(raze_sfere, $fn=50);
     color("LightSlateGray")
     translate([-5,0,inaltime_sfere])
sphere(raze_sfere, $fn=50);
     color("LightSlateGray")
     translate([5,0,inaltime_sfere])
sphere(raze_sfere, $fn=50);
     color("LightSlateGray")
     translate([0,5,inaltime_sfere])
sphere(raze_sfere, $fn=50);
     color("LightSlateGray")
     translate([0,0,inaltime_sfere])
sphere(raze_sfere, $fn=50);
}

module gauri_rasnita(inaltime_sfr,raze_sfr,raza_clndr)
{
    difference()
    {
        sfere_mici(inaltime_sfere=inaltime_sfr, raze_sfere=raze_sfr);
        translate([0, 0, inaltime_sfr]) cylinder(h=raze_sfr, r=raza_clndr, $fn=80); 
        }
}

difference(){
    
    rotate([0,0,180])
    
capac_rasnita(grosime_cilindru=4, raza_cilindru=10,inaltime_cilindru=20);
translate([0,0,0.1])gauri_rasnita(inaltime_sfr=24,raze_sfr=1,raza_clndr=10);
}

corp_rasnita(inaltime_cub=10,lungime_cub=20,inaltime_sfera=10,raza_sfera=15);

gauri_rasnita(inaltime_sfr=24,raze_sfr=1,raza_clndr=10);