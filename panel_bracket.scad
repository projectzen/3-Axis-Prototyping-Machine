module panelBracket(){

module test5(){


module test2(){


module mount(){


difference(){
translate([302,270,0])
cube([45,30,40]);

//translate([297,270,0])
//cube([50,20,60]);
translate([220,310,344])
test();

}
translate([285,285,0])
cylinder(r=15, h=20);

}

difference(){

translate([285,270,0])
cube([50,30,20]);

translate([285,285,-50]) 
cylinder(r=6.00/2, h=100, $fn=100);



}
difference(){
mount();

translate([285,285,-50]) 
cylinder(r=6.00/2, h=100, $fn=100);

}

module test(){
rotate([90,90,0])
translate([285,90,0]) 
cylinder(r=40, h=100, $fn=100);
}



}

difference(){

test2();


translate([300,270+5,-50])
cube([40,20,200]);

test4();
}


module test3(){
rotate([0,90,0])
translate([0,0,0])
cylinder(r=3, h=20, $fn=100);
}

module test4(){
translate([335,285,25])
test3();

translate([335,285,10])
test3();

}
}


translate([-285,-285,0])
test5();

}

panelBracket();