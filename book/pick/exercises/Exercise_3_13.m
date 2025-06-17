% Roll-pitch-Yaw to Rotation matrix give [r, p, y] = [r, -pi/2, y]

syms r p y




Rx = [1,      0,       0;
      0, cos(r), -sin(r);
      0, sin(r),  cos(r)];


Ry = [cos(p),  0, sin(p);
           0,  1,      0;
     -sin(p),  0, cos(p)];


Rz = [cos(y), -sin(y), 0;
      sin(y),  cos(y), 0;
           0,       0, 1];

R_AD = Rz * Ry * Rx;

R_AD_val = simplify(subs(R_AD, p, -pi/2))