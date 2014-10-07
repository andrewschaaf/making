w = 40;
d = 18;
h = 4;
r = 5.3 / 2;
spacing = 20;
difference() {
	cube([w, d, h], center=true);
	for (dx = [-(spacing/2), (spacing/2)]) {
		translate([dx, 0, 0])
		cylinder(r=r, h=2*h, center=true, $fn=50);
	}
}
