module bottomPlatform(X, Y, R, feetX, feetY, feetRadius, inlayThickness, inlayLength, rodOffset, rodRadius, panelHeight){

feetHoleOffset=0.5;

difference(){
	minkowski() {
 				cube([X-R,Y-R,12.7], center=true);
 				cylinder(r=R,h=12.7);
			}
	
	//holes for leveling legs//
	translate([-feetX,-feetY,0]) 
   		cylinder(r=feetRadius+feetHoleOffset,h=12.7+26, center=true, $fn=100);
	
	translate([feetX,feetY,0]) 
      	cylinder(r=feetRadius+feetHoleOffset,h=12.7+26, center=true, $fn=100);
	
	translate([feetX,-feetY,0]) 
      	cylinder(r=feetRadius+feetHoleOffset,h=12.7+26, center=true, $fn=100);
	
	translate([-feetX,feetY,0]) 
   		cylinder(r=feetRadius+feetHoleOffset,h=12.7+26, center=true, $fn=100);
	
	//mounting holes
	translate([-rodOffset,-rodOffset,0]) 
   		cylinder(r=rodRadius,h=12.7+10, center=true, $fn=100);
	
	translate([rodOffset,rodOffset,-1]) 
   		cylinder(r=rodRadius,h=12.7+10, center=true, $fn=100);
	
	translate([-rodOffset,rodOffset,-1]) 
   		cylinder(r=rodRadius,h=12.7+10, center=true, $fn=100);
	
	translate([rodOffset,-rodOffset,-1]) 
   		cylinder(r=rodRadius,h=12.7+10, center=true, $fn=100);	

	//inlay for panels
	translate([-rodOffset+inlayThickness/2,0,panelHeight/2 ])
		cube([inlayThickness+1,inlayLength-inlayThickness*2+1,panelHeight], center=true);
	
	translate([rodOffset-inlayThickness/2,0,panelHeight/2 ])
		cube([inlayThickness+1,inlayLength+1,panelHeight], center=true);
	
	threadedRods();

sidePanel_right();
sidePanel_left();
}
}

