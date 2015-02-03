/////////////////////
//DEFINED VARIABLES//
/////////////////////

//thickness
thickness=6.25;

//panel height
panelHeight=101.6;

//rod radius
rodRadius=(6.25*2) / 2;


//outer radius of circular corners
circleRadius=50;

//cartesian plane coordinates where the threaded rods pass through
rodCoordinates=420;

//cartesian plane coordinates where the leveling feet mount/pass through


bottomPlatform_Y=900;



//length and width
middlePlatform_X=1000;

//Radius of rounded edges
platformOffset=15;

feetOffset=15;
feetCoordinates_X=middlePlatform_X/2-feetOffset;
feetCoordinates_Y=450-feetOffset;
//leveling feet radius
feetRadius=4.5;
feetHoleOffset=0.5;

middlePlatform_Y=600+thickness*4;
///////////////////////////////////////////////////////////////////////////////////////


module frontPanel(){

difference(){	
	translate([(middlePlatform_X/2)-thickness/2,0,panelHeight/2 ])
		cube([thickness,middlePlatform_Y,panelHeight], center=true);


translate([middlePlatform_X/2-thickness-1,200,panelHeight/2 ], center=true)
rotate([0,0,-90])
import("20x4_lcd.stl");

translate([middlePlatform_X/2-thickness-1,200-40,panelHeight/2-15 ], center=true)
cube([50,80,30]);

//usb cut out #4
	translate([middlePlatform_X/2-thickness-1,-235,panelHeight/2 ], center=true)
		cube([thickness*2+1,15,8]);

	translate([middlePlatform_X,0,0])
		usbHoles();

	translate([325,175-135,40])
		panelHole();

	translate([325,175,40])
	
		panelHole();
	translate([1,0,0])
		bracketHoles();

	translate([1,-285*2,0])
		bracketHoles();

	translate([1,-285*2,54])
		bracketHoles();

	translate([1,0,54])
		bracketHoles();

translate([1,middlePlatform_Y/2-thickness/2-thickness,panelHeight/2+panelHeight/5])
		cube([middlePlatform_X,thickness,panelHeight/5], center=true);

translate([1,middlePlatform_Y/2-thickness/2-thickness,panelHeight/2-panelHeight/5+.25])
		cube([middlePlatform_X,thickness,panelHeight/5-.5], center=true);

translate([1,-middlePlatform_Y/2+thickness/2+thickness,panelHeight/2-panelHeight/5+.25])
		cube([middlePlatform_X,thickness,panelHeight/5-.5], center=true);

translate([1,-middlePlatform_Y/2+thickness/2+thickness,panelHeight/2+panelHeight/5])
		cube([middlePlatform_X,thickness,panelHeight/5], center=true);

}	
}

//frontPanel();


