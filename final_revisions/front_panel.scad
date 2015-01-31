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