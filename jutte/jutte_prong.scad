dowelDiameter = 20;

jutte(dowelDiameter);

module jutte(diameter) {
	diameter = (diameter < 20)?20:diameter;
	difference() {
		union() {
			cylinder(25, d=diameter+2);
			translate([diameter/2 -2, -7.5, 0]) {
				cube([30, 15, 25]);
				translate([30, 0, 0]) {
					cube([10,15,75]);
					translate([5, 15, 75]) {
						rotate([90, 0, 0]) {
							cylinder(15, d=10);
						}
					}
				}			
			}
		}
		translate([0, 0, -125]) {
			cylinder(500, d=diameter);
		}
	}
}