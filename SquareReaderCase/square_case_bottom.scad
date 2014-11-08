p=3.175;
bx=21.59;
by=38.989;
bz=14.605;

difference() {
	cube([bx+2*p,by+2*p,bz+p]);
	union() {
		translate([10.8+p,21.6+p,8.382+p]) {
			union() {
				translate([-1.778,3.556,0]) {
					cube([3.556,14.224,30]);
				}
				translate([-2.7432,0,0]) {
					cube([5.4864,3.596,30]);
				}
				translate([-10.8,-21.6,0]) {
					cube([21.6,21.6,30]);
				}
	
				translate([0,3.554,0]) {
					rotate([-90,0.0]) {
						cylinder(h=14.224, r=1.778,$fa=5, $fs=0.1);
					}
				}
				rotate([-90,0,0]) {
					cylinder(h=3.556, r=2.7432,$fa=5, $fs=0.1);
				}
				translate([-10.8,-21.59,-8.382]) {
					cube([21.6,21.6,14.605]);
				}
			}
		}
		translate([bx/2+p,5,bz+p]){
			rotate([90, 0, 0]) {
				cylinder(h=10, r=8.5, ,$fa=5, $fs=0.1);
			}
		}
	}
};
