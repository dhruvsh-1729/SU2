lc = 1e-4;

Point(1) = {0,0,0,lc};
Point(2) = {0.5,0,0,lc};
Point(3) = {1.5,0.176,0,lc};
Point(4) = {1.5,1.2,0,lc};
Point(5) = {0,1.2,0,lc};

Line(1) = {1,2};
Line(2) = {2,3};
Line(3) = {3,4};
Line(4) = {4,5};
Line(5) = {5,1};

Curve Loop(1) = {1,2,3,4,5};
Plane Surface(1) = {1};

Physical Point("points") = {1,2,3,4,5};

Physical Line("inlet") = {5};
Physical Line("outlet") = {3};
Physical Line("upper") = {4};
Physical Line("lower") = {1,2};

Physical Surface("domain") = {1};

Transfinite Line {3,5} = 50;
Transfinite Line {1} = 25;
Transfinite Line {2} = 50;
Transfinite Line {4} = 75;

