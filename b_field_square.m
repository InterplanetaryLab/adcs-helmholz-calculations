function output = b_field_square(z,I,a,h,N)
	output = 2*4*10^(-7)*I*N*a^2*(1./((a^2+(z+(h/2)).^2).*((2*a^2+(z+h/2).^2).^(1/2)))+1./((a^2+(z-(h/2)).^2).*((2*a^2+(z-h/2).^2).^(1/2))));
end

