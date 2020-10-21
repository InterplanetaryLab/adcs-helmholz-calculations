z= linspace(-1,1,3000);
V = 24
R = 8.051/1000*(1/.3048) % resistance for 19 awg wire per meter
I = 2
a = .5
h = 1.089*a;
%N = 113
N = V/(I*8*a*R) 

B2 = b_field_square(z,I,a,h,N);

max(B2)

figure(1)
plot(z,B2)
axis([-1 1 0 10^(-3)])
title(sprintf('Plot of B along axis of uniformity: \n N= %d \n I= %.2f \n a= %.2f \n h= %.2f',N,I,a,h))
xlabel("Displacement from the center point (meters)")
ylabel("Field Strength (Tesla)")

error = (b_field_square(0,I,a,h,N)-b_field_square(-.25,I,a,h,N))/b_field_square(0,I,a,h,N);

disp(sprintf("Uniformity percent error about +/- .25 m : %.3f",error*100))

r_total = R*N*8*a