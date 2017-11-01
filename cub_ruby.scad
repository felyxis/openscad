color("Brown")
difference(){
intersection(){
cube(20, center=true);
sphere(15,$fn=20);
    }
translate([10,0,0])
sphere(2, $fn=20); //1
translate ([-5,5,-10])
sphere(2,$fn=20);
translate ([5,-5,-10])
sphere(2,$fn=20);//2
translate ([0,10,0])
sphere(2,$fn=20);
translate ([-5,10,5])
sphere(2,$fn=20);
translate ([5,10,-5])
sphere(2,$fn=20);//3
translate ([-5,-10,5])
sphere(2,$fn=20);
translate ([5,-10,-5])
sphere(2,$fn=20);
translate ([-5,-10,-5])
sphere(2,$fn=20);
translate ([5,-10,5])
sphere(2,$fn=20);//4
translate ([0,0,10])
sphere(2,$fn=20);
translate ([5,5,10])
sphere(2,$fn=20);
translate ([-5,-5,10])
sphere(2,$fn=20);
translate ([-5,5,10])
sphere(2,$fn=20);
translate ([5,-5,10])
sphere(2,$fn=20);//5
translate ([-10,-5,-5])
sphere(2,$fn=20);
translate ([-10,5,-5])
sphere(2,$fn=20);
translate ([-10,-5,5])
sphere(2,$fn=20);
translate ([-10,5,5])
sphere(2,$fn=20);
translate ([-10,-5,0])
sphere(2,$fn=20);
translate ([-10,5,0])
sphere(2,$fn=20);//6
}

