difference(){
cube([700,700,12.7], center=true);
	
	//holes for leveling legs
	translate([-350,-350,-1]) 
   	cylinder(r=10,h=12.7+10, center=true, $fn=100);
	translate([350,350,-1]) 
      cylinder(r=10,h=12.7+10, center=true, $fn=100);
	translate([350,-350,-1]) 
      cylinder(r=10,h=12.7+10, center=true, $fn=100);
	translate([-350,350,-1]) 
   	cylinder(r=10,h=12.7+10, center=true, $fn=100);
	
	//mounting holes
	translate([-285,-285,-1]) 
   	cylinder(r=10,h=12.7+10, center=true, $fn=100);
	translate([285,285,-1]) 
   	cylinder(r=10,h=12.7+10, center=true, $fn=100);
	translate([-285,285,-1]) 
   	cylinder(r=10,h=12.7+10, center=true, $fn=100);
	translate([285,-285,-1]) 
   	cylinder(r=10,h=12.7+10, center=true, $fn=100);	

	//inlay for panels
	translate([-350+6.35/2,0,101.6/2 ])
		cube([6.35+1,600+1,101.6], center=true);
	translate([350-6.35/2,0,101.6/2 ])
		cube([6.35+1,600+1,101.6], center=true);
}



///////////////////////////////////

//circles at each corner
difference(){
   translate([-350,-350]) 
	cylinder(r=50, h=12.7, center=true);
    translate([-350,-350,-1]) 
      cylinder(r=10,h=12.7+10, center=true, $fn=100);
}

difference(){
   translate([350,350]) 
	cylinder(r=50, h=12.7, center=true);
   translate([350,350,-1]) 
   cylinder(r=10,h=12.7+10, center=true, $fn=100);
}

difference(){
   translate([350,-350]) 
	cylinder(r=50, h=12.7, center=true);
   translate([350,-350,-1]) 
      cylinder(r=10,h=12.7+10, center=true, $fn=100);
}

difference(){
   translate([-350,350]) 
	cylinder(r=50, h=12.7, center=true);
   translate([-350,350,-1]) 
      cylinder(r=10,h=12.7+10, center=true, $fn=100);
}


/////////////////////////////


difference(){
	translate([0,0,101.6])
		cube([700,700,12.7], center=true);

//mountng holes
	translate([-285,-285,100]) 
   	cylinder(r=10,h=12.7+10, center=true, $fn=100);
	translate([285,285,100]) 
   	cylinder(r=10,h=12.7+10, center=true, $fn=100);
	translate([-285,285,100]) 
   	cylinder(r=10,h=12.7+10, center=true, $fn=100);
	translate([285,-285,100]) 
   	cylinder(r=10,h=12.7+10, center=true, $fn=100);	

//concave corners
	translate([-350,-350,100]) 
		cylinder(r=50, h=20, center=true);
	translate([350,350,100]) 
		cylinder(r=50, h=20, center=true);
	translate([-350,350,100]) 
		cylinder(r=50, h=20, center=true);
	translate([350,-350,100]) 
		cylinder(r=50, h=20, center=true);

	//inlay for panels
	translate([350-6.35/2,0,101.6/2 ])
		cube([6.35+1,600+1,101.6], center=true);
	translate([-350+6.35/2,0,101.6/2 ])
		cube([6.35+1,600+1,101.6], center=true);
}

////////////////////////////////


//rods
	translate([-285,-285,333.7]) 
   	cylinder(r=10,h=700, center=true, $fn=100);
	translate([285,285,333.7]) 
   	cylinder(r=10,h=700, center=true, $fn=100);
	translate([-285,285,333.7]) 
   	cylinder(r=10,h=700, center=true, $fn=100);
	translate([285,-285,333.7]) 
   	cylinder(r=10,h=700, center=true, $fn=100);

/////////////////////////////////


//top plate
difference(){
	
	translate([0,0,101.6+570])
		cube([700,700,12.7], center=true);

//mountng holes
	translate([-285,-285,101.6+570]) 
   	cylinder(r=10,h=12.7+10, center=true, $fn=100);
	translate([285,285,101.6+570]) 
   	cylinder(r=10,h=12.7+10, center=true, $fn=100);
	translate([-285,285,101.6+570]) 
   	cylinder(r=10,h=12.7+10, center=true, $fn=100);
	translate([285,-285,101.6+570]) 
   	cylinder(r=10,h=12.7+10, center=true, $fn=100);	

//concave corners
	translate([-350,-350,101.6+570]) 
		cylinder(r=50, h=20, center=true);
	translate([350,350,101.6+570]) 
		cylinder(r=50, h=20, center=true);
	translate([-350,350,101.6+570]) 
		cylinder(r=50, h=20, center=true);
	translate([350,-350,101.6+570]) 
		cylinder(r=50, h=20, center=true);

//logo
	
	translate([100,-185,101.6+570+4.5],center=true)
	rotate([0,0,90])
	resize([400,0,0], auto=true)
		dxf_linear_extrude(file="project_zen_logo.dxf", height=8);




	
}
///////////////////////////


//translate([-285,-285,50])
//	cube([35,35,10], center=true);

//////////////////////////

//panels
	translate([-350+6.35/2,0,101.6/2 ])
		cube([6.35,600,101.6], center=true);
	translate([350-6.35/2,0,101.6/2 ])
		cube([6.35,600,101.6], center=true);




