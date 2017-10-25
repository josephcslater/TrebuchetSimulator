%Trebuchet Simulator
clear all
global l1 l2 l3 l4 l5 m1 m2 m3 g h N mu i

l1= 1; 
l2= 2;
l3= 4;
l4= 2;
l5= 10;

h=6;

m1=200;
m2=2;
m3=1;

g=9.8;

mu=.1;

simtime=3;

deltat=.02;

phi2init=pi/3; %Set by user

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% End of user settings.


phi1init=0;

phi3init=phi1init;

y3=-l5*cos(phi2init)-l3*cos(phi3init);



flag=1;
N=1;

if -y3>=h
  % The projectile is setting on the ground.
  
  phi3init = -abs(acos((h - l5*cos(phi2init))/l3));
  
  flag=0;
  
end

phi1=phi1init
phi2=phi2init
phi3=phi3init

%Plot initial state
x1=-l2 * sin(phi2)+l1*sin(phi1);
y1=l2 *cos(phi2)-l1 * cos(phi1);
x4=-l2 * sin(phi2);
y4=l2 * cos(phi2);
x5=l5 * sin(phi2);
y5=-l5 * cos(phi2);
x3=l5 * sin(phi2)+l3 * sin(phi3);
y3=-l5 * cos(phi2)-l3 * cos(phi3);

ymin=-h*1.1;
ymax=(l5+l3)*1.1;
xmin=-max([l1+l2,l5+l3])*1.1;
xmax=-xmin;


plot([x1  x4  x5  x3 ]',[y1  y4  y5  y3 ]')
axis([xmin,xmax, ymin,ymax])
axis('equal') 
grid
drawnow
pause



z(:,1)=[phi1init;0;phi2init;0;phi3init;0];
i=1;t=0;



% Simulation while projectile is still on the ground.

while (N>0) & (t < simtime) & (flag == 0) & (z(5,i)<1.4*pi)
   i=i+1;
   t=t+deltat;


   zt=vtb9_3('trebconst',zeros(6,2),[0 deltat], z(:,i-1));
   z(:,i)=zt(:,2);
   z(:,i);
   [zd]=trebconst(z(:,i),[0 deltat],[0 deltat]);
   N
   if isreal(N) == 0  
     i=i-1;
     flag=1;
   end
   
end

% Since N is not positive, the projectile is not sitting on the ground anymore.

disp('Take off')

z(:,i);
while (t < simtime) & (z(5,i)<1.4*pi)
   i=i+1;

%disp('zt')
   zt=vtb9_3('trebuncon',zeros(6,2),[0 deltat], z(:,i-1));
   z(:,i)=zt(:,2);


   t=t+deltat;
   
end
phi1=z(1,:);
phi2=z(3,:);
phi3=z(5,:);

x1=-l2 * sin(phi2)+l1*sin(phi1);
y1=l2 *cos(phi2)-l1 * cos(phi1);
x4=-l2 * sin(phi2);
y4=l2 * cos(phi2);
x5=l5 * sin(phi2);
y5=-l5 * cos(phi2);
x3=l5 * sin(phi2)+l3 * sin(phi3);
y3=-l5 * cos(phi2)-l3 * cos(phi3);

ymin=-h*1.1;
ymax=(l5+l3)*1.1;
xmin=-max([l1+l2,l5+l3])*1.1;
xmax=-xmin;
disp('Press return to see simulation')
pause
for j=1:10

for i=1:length(phi1);
  plot([x1(i) x4(i) x5(i) x3(i)]',[y1(i) y4(i) y5(i) y3(i)]')
  axis([xmin,xmax, ymin,ymax])
  axis('equal') 
  drawnow
end

pause
end

