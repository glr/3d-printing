p=3.175;
o=4.175;
bx=21.59;
by=38.989;
bz=14.605;

difference() {
	cube([bx+2*o,by+2*o,bz+o]);
	translate([1,1,-1]){
		cube([bx+2*p, by+2*p, bz+p+1]);
	}
	translate([-5, by/2+o, 0]) {
		rotate([90, 0, 90]) {
			cylinder(h=40, r=8.5, ,$fa=5, $fs=0.1);
		}
	}
}