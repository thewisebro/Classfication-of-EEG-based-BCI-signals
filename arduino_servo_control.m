clear arduino_board servo_motor
port = 'COM6';
board = 'Uno';

arduino_board = arduino(port, board, 'Libraries', 'Servo');
servo_motor = servo(arduino_board, 'D8');

writePosition(servo_motor, 0);
pause(5);
writePosition(servo_motor, 1);
pause(5);

clear servo_motor arduino_board
