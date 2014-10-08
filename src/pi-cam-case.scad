// TODO: refactor

rscrew = 2.5 / 2;
dhexmin = 4 + 0.2;
dhexmax = 4.47 + 0.5;
hhex = 1.27 + 0.4;
h = hhex + 2;
huge = 100;

wcam = 25 + 0.4;
dcam = 24 + 0.5;

hbase = 1.4;
hbase2 = 2 + 0.5;
hwalls = 6.5;
htotal = hbase + hbase2 + hwalls;
wrails = 2;
toprail = 2.4;
padding = 4;
huge = 1000;

xhole = wcam/2 - 1.75 - 0.2;


difference() {
	translate([0, 0, htotal/2]) {
		cube([wcam + padding, dcam + padding, htotal], center=true);
	}
	
	union() {

		// screws
		for (x = [-xhole, xhole]) {
			for (dy = [0, -13]) {
				translate([x, xhole - 0.6 + dy, 0]) {
					cylinder(r=rscrew, h=huge, $fn=50, center=true);
				}
			}
		}

		// cam hole
		translate([0, -2.25, 0]) {
			cube([8 + 0.6, 13 - 0.6 - 2 - 0.2 - 1.5, huge], center=true);
		}

		translate([0, toprail, htotal - hwalls - hbase2/2]) {
			difference() {
				union() {
					cube([wcam - wrails, dcam - toprail, hbase2], center=true);
					translate([-wcam/4, toprail/2 - 2, 0]) {
						cube([wcam/2, dcam - 4, hbase2], center=true);
					}
				}
				union() {
					translate([wcam/2 - 5/2, 0, 0]) {
						cube([5, huge, huge], center=true);
					}
					translate([-(wcam/2 - 5/2), dcam/2, 0]) {
						cube([5, dcam, huge], center=true);
					}
					translate([0, dcam/2, 0]) {
						cube([huge, huge, huge]);
					}
				}
			}
		}

		for (dy = [0, -5]) {
			translate([0, dy, htotal - hwalls/2]) {
				cube([wcam, dcam, hwalls], center=true);
			}
		}
	}
}
