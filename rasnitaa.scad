module corp_rasnita(inaltime_cub,lungime_cub,inaltime_sfera,raza_sfera)

color("MediumSpringGreen")
difference(){ 
intersection(){
translate([0,0,inaltime_cub])cube(lungime_cub, center=true);
translate ([0,0,inaltime_sfera])sphere(raza_sfera,$fn=90);      
    }
}

corp_rasnita(inaltime_cub=10,lungime_cub=20,inaltime_sfera=10,raza_sfera=15);