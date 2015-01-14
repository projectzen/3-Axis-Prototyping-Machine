side = 1;
sideb = 1.25;

width = 5;
length = 4;
boostheight=8.25;
height = 14;

screwhole=1.5;
minihole=1.2;

postspacing=42;

blockwidth=105;
blocklength=16;
blockheight = 5;

m3hole = 1.8;
m3postsize=10;
m3postheight=20;

rotate([90,0,0]){

difference(){

union(){
cube([blockwidth,blocklength,blockheight]);

//translate([0,0,-m3postheight])
//cube([m3postsize,m3postsize,m3postheight]);

//translate([blockwidth-m3postsize,0,-m3postheight])
//cube([m3postsize,m3postsize,m3postheight]);

translate([(blockwidth-postspacing)/2,0,blockheight]){
post();

translate([postspacing,0,0])
mirror([1,0,0])
post();
}
}

//m3 screws
//translate([m3postsize/2,m3postsize/2,-m3postheight-1])
//rotate([0,-90,-90])
//#teardrop(m3hole, m3postheight*4, 90);

//translate([m3postsize/2+blockwidth-m3postsize,m3postsize/2,-m3postheight-1])
//rotate([0,-90,-90])
//#teardrop(m3hole, m3postheight*4, 90);

}
}



module post(){
totalheight = height+boostheight;
extra_tune_space = 0.4;

difference(){

union(){
cube([side, length, totalheight]);
cube([width+extra_tune_space, sideb, totalheight]);
cube([width+extra_tune_space, length, boostheight]);
translate([-1,0,0])
cube([width*2, length*2, 2]);
}

rotate([90,0,0])
translate([width/2+side/2,totalheight-screwhole-1.5,-side-1])
cylinder(r=screwhole,h=side+3, $fn=25);

rotate([90,0,0])
translate([width/2+side/2,totalheight-screwhole-1.5-7,-side-1])
cylinder(r=screwhole,h=side+3, $fn=25);

rotate([90,0,0])
translate([width/2+side/2,totalheight-minihole-1.5-3.5-(screwhole-minihole),-side-1])
cylinder(r=minihole,h=side+3, $fn=25);

}
}

module teardrop(radius, length, angle) {
	rotate([0, angle, 0]) union() {
		linear_extrude(height = length, center = true, convexity = radius, twist = 0)
			circle(r = radius, center = true, $fn = 30);
		linear_extrude(height = length, center = true, convexity = radius, twist = 0)
			projection(cut = false) rotate([0, -angle, 0]) translate([0, 0, radius * sin(45) * 1.5]) cylinder(h = radius * sin(45), r1 = radius * sin(45), r2 = 0, center = true, $fn = 30);
	}
}
