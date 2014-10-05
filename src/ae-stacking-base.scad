n = 4;
xthickness = 4;
ythickness = 4;
wcell = 20.5;

dcell = (20 - ythickness) / 2;
h = 50;

w = (n * wcell) + ((n + 1) * xthickness);
d = (2 * dcell) + ythickness;

translate([-w/2, -d/2, -h/2]) {
	difference() {

		cube([w, d, h]);

		union() {

			cube([w, (d - ythickness - dcell), h]);

			for (iy = [0, 1]) {
				for (ix = [0 : (n - 1)]) {
					translate([
							(ix * wcell)+ ((ix + 1) * xthickness),
							iy * (dcell + ythickness),
							0])
					{
						cube([wcell, dcell, h]);
					}
				}
			}
		};
	}
}
