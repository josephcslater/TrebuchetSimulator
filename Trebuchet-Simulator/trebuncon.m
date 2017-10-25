function [zd]=rfunc(z,u,t)
%    function for Constrained motion of Trebuchet (mass on ground, sliding)
% Nov 27, 1996
% Joseph C. Slater

phi1=z(1);phi2=z(3);phi3=z(5);
phi1d=z(2);phi2d=z(4);phi3d=z(6);

global l1 l2 l3 l4 l5 m1 m2 m3 g h mu

zd(1)=z(2);

zd(3)=z(4);

zd(5)=z(6);

zd(2)= (-((g*sin(phi1) - l2*sin(phi1 - phi2)*...
          power(phi2d,2))/l1) - ...
    l2*cos(phi1 - phi2)*(-(l1*l3*l5*m3*cos(phi2 - phi3)*...
           (g*sin(phi3) - l5*sin(phi2 - phi3)*...
              power(phi2d,2))) + ...
        l3*(l1*l2*m1*cos(phi1 - phi2)*...
            (g*sin(phi1) - l2*sin(phi1 - phi2)*...
               power(phi2d,2)) + ...
           l1*(-(g*l2*m1*sin(phi2)) + g*l4*m2*sin(phi2) + ...
              g*l5*m3*sin(phi2) + ...
              l1*l2*m1*sin(phi1 - phi2)*...
               power(phi1d,2) + ...
              l3*l5*m3*sin(phi2 - phi3)*...
               power(phi3d,2))))/...
     (l1*(l3*(l1*(power(l2,2)*m1 + power(l4,2)*m2 + power(l5,2)*m3) - ...
            l1*power(l2,2)*m1*power(cos(phi1 - phi2),2)) - ...
         l1*l3*power(l5,2)*m3*power(cos(phi2 - phi3),2))));



zd(4)= (-((-(l1*l3*l5*m3*cos(phi2 - phi3)*...
           (g*sin(phi3) - l5*sin(phi2 - phi3)*...
              power(phi2d,2))) + ...
        l3*(l1*l2*m1*cos(phi1 - phi2)*...
            (g*sin(phi1) - l2*sin(phi1 - phi2)*...
               power(phi2d,2)) + ...
           l1*(-(g*l2*m1*sin(phi2)) + g*l4*m2*sin(phi2) + ...
              g*l5*m3*sin(phi2) + ...
              l1*l2*m1*sin(phi1 - phi2)*...
               power(phi1d,2) + ...
              l3*l5*m3*sin(phi2 - phi3)*...
               power(phi3d,2))))/...
      (l3*(l1*(power(l2,2)*m1 + power(l4,2)*m2 + power(l5,2)*m3) - ...
           l1*power(l2,2)*m1*power(cos(phi1 - phi2),2)) - ...
        l1*l3*power(l5,2)*m3*power(cos(phi2 - phi3),2))));


zd(6)= (-((g*sin(phi3) - l5*sin(phi2 - phi3)*...
          power(phi2d,2))/l3) + ...
    l5*cos(phi2 - phi3)*(-(l1*l3*l5*m3*cos(phi2 - phi3)*...
           (g*sin(phi3) - l5*sin(phi2 - phi3)*...
              power(phi2d,2))) + ...
        l3*(l1*l2*m1*cos(phi1 - phi2)*...
            (g*sin(phi1) - l2*sin(phi1 - phi2)*...
               power(phi2d,2)) + ...
           l1*(-(g*l2*m1*sin(phi2)) + g*l4*m2*sin(phi2) + ...
              g*l5*m3*sin(phi2) + ...
              l1*l2*m1*sin(phi1 - phi2)*...
               power(phi1d,2) + ...
              l3*l5*m3*sin(phi2 - phi3)*...
               power(phi3d,2))))/...
     (l3*(l3*(l1*(power(l2,2)*m1 + power(l4,2)*m2 + power(l5,2)*m3) - ...
            l1*power(l2,2)*m1*power(cos(phi1 - phi2),2)) - ...
         l1*l3*power(l5,2)*m3*power(cos(phi2 - phi3),2))));

zd=zd';
end;
