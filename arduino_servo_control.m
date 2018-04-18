clear arduino_board servo_motor
port = 'COM6';
board = 'Uno';

arduino_board = arduino(port, board, 'Libraries', 'Servo');
servo_motor = servo(arduino_board, 'D8');

writePosition(servo_motor, 1);

for angle = 1:-0.2:0

   writePosition(servo_motor, angle);

   current_position = readPosition(servo_motor);

   current_position = current_position * 180;   

   fprintf('Current position is %d\n', current_position);   

   pause(2);

end

for angle = 0:0.2:1

   writePosition(servo_motor, angle);

   current_position = readPosition(servo_motor);

   current_position = current_position * 180;   

   fprintf('Current position is %d\n', current_position);   

   pause(2);

end