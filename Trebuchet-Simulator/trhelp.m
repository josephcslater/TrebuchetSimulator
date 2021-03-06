%TREBDSGN Simulates the throw of a Trebuchet and estimates
%maximum distance an object could be thrown if released at
%the right time. The help for TREBDSGN is much more helpful
%if accessed from withing TREBDSGN. Type TREBDSGN (in lower 
%case) and select the red help button.
%
%TREBDSGN allows you to interactively enter design variables
%and obtain performance estimates for the trebuchet shown.
%The trebuchet as shown throws the object to the left. The
%counter mass is at the left hanging from the rope, and the 
%projectile is on the ground at the otherend of the device.
%Apon release, the counter mass drops, and the projectile 
%is dragged to the right initially, then it continues in a 
%counter clockwise fashion about the pivot point. Select 
%"show movies" and push "go" to simulate the motion and show 
%a movie of it. The meanings of the variables on the right 
%hand side of the main window are shown in the figure above 
%and in descriptions below. Various bits of simulation re-
%sults are available by selecting the appropriate check boxes 
%to the bottom left. All units used must be consistant units. 
%For SI, use kg-m-s (N) units, and for English units, use 
%slug-ft-s (lbf) units. All angles are in radians.
%
%                     VARIABLE DEFINITIONS
%  
%  l1, l2, l3, and l5 are clear from the diagram.
%  l4       is the distance from the pivot point to the center 
%              of the lever arm.
%  m1       is the mass of the counterweight.
%  m2       is the mass of the lever arm.
%  m3       is the mass of the projectile.
%  J        is the mass moment of inertia of the lever arm. 
%              For a uniform cross section arm, it is equal to
%              m2*((l2+l5)^2)/12+l4^2)
%  T Final  is the total simulation time. 
%  Height   is the height of the trebuchet pivot point above 
%              the ground.
%  Phi Init is the initial amount the trebuchet is cocked in 
%              radians. It is zero when the counter mass is 
%              directly above the pivot point. 0 is better.
%              In plots, it is the angle Phi2.
%  Phi1, Phi2, Phi3 are shown in the figure above. They can be
%              viewed as a function of simulated time by 
%              selecting the appropriate checkboxes before
%              a simulation run.
%             
%  To change any of the variables, select the appropriate box
%  and edit the variable. The variable will be accepted when
%  you hit return (or enter) or when you select another box.
%  
