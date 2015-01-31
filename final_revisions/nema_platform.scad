translate([-middlePlatform_X/12+75,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4-25,panelHeight+51/2+(6.25*2)/2-51+570+200-(6.25*2)])
import("ss_standoff.stl");

translate([-middlePlatform_X/12-75,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4-25,panelHeight+51/2+(6.25*2)/2-51+570+200-(6.25*2)])
import("ss_standoff.stl");

translate([-middlePlatform_X/12+75,-bottomPlatform_Y/2+(bottomPlatform_Y-middlePlatform_Y)/4+25,panelHeight+51/2+(6.25*2)/2-51+570+200-(6.25*2)])
import("ss_standoff.stl");

translate([-middlePlatform_X/12-75,-bottomPlatform_Y/2+(bottomPlatform_Y-middlePlatform_Y)/4+25,panelHeight+51/2+(6.25*2)/2-51+570+200-(6.25*2)])
import("ss_standoff.stl");

translate([-middlePlatform_X/12-75,(bottomPlatform_Y-middlePlatform_Y)/2,panelHeight+51/2+(6.25*2)/2-51+570+200-(6.25*2)])
import("ss_standoff.stl");

translate([-middlePlatform_X/12+75,(bottomPlatform_Y-middlePlatform_Y)/2,panelHeight+51/2+(6.25*2)/2-51+570+200-(6.25*2)])
import("ss_standoff.stl");

translate([-middlePlatform_X/12+75,-(bottomPlatform_Y-middlePlatform_Y)/2,panelHeight+51/2+(6.25*2)/2-51+570+200-(6.25*2)])
import("ss_standoff.stl");

translate([-middlePlatform_X/12-75,-(bottomPlatform_Y-middlePlatform_Y)/2,panelHeight+51/2+(6.25*2)/2-51+570+200-(6.25*2)])
import("ss_standoff.stl");

difference(){



minkowski() {
				translate([-middlePlatform_X/12,0,panelHeight+570+200-51-(6.25*2)+thickness/2])
 				cube([middlePlatform_X/4,bottomPlatform_Y-50,thickness], center=true);
 				cylinder(r=platformOffset,h=(thickness));
			}



	translate([-middlePlatform_X/12,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4-50,panelHeight+51/2+(6.25*2)/2-51+570-(6.25*2)-75])
		cylinder(r=24/2, h=100, $fn=50);

translate([-middlePlatform_X/12,-bottomPlatform_Y/2+(bottomPlatform_Y-middlePlatform_Y)/4+50,panelHeight+51/2+(6.25*2)/2-51+570-(6.25*2)-75])
		cylinder(r=24/2, h=100, $fn=50);

translate([-middlePlatform_X/12-35,-bottomPlatform_Y/2+(bottomPlatform_Y-middlePlatform_Y)/4+50-60,0])
cylinder(r=12, h=panelHeight+570+(6.25*2)/2-(6.25*2), $fn=50);

translate([-middlePlatform_X/12-35,bottomPlatform_Y/2-(bottomPlatform_Y-middlePlatform_Y)/4-50+60,0])
cylinder(r=12, h=panelHeight+570+(6.25*2)/2-(6.25*2), $fn=50);

}