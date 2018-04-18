ardObject = arduino();

addOnShield = addon(ardObject, 'AdaFruit\MotorShieldV2');
dcMotorObject = dcmotor(addOnShield,1);

for i=1:n	%n= size of y (output vector (1/0) )
	
	if(y(i) == 1)	%Hand closed					
	dcMotorObject.Speed = 0.05;
	start(dcMotorObject);
	pause(5)
	stop(dcMotorObject);
	
	if(y(i) == 0)	%Hand open
	dcMotorObject.Speed = -0.05;
	start(dcMotorObject);
	pause(5)
	stop(dcMotorObject);
	
	%CleanUp
	
	clear arduinoObject addOnShield dcMotorObject