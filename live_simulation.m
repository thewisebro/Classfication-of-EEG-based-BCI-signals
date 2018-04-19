clear servo_motor arduino_board
s = size(y_val);
port = 'COM6';
board = 'Uno';

arduino_board = arduino(port, board, 'Libraries', 'Servo');
servo_motor = servo(arduino_board, 'D8');
axis([0 inf -2 2]);
hold on;
for i = 1:s
    stairs(0:i-1,y_val(1:i));
    writePosition(servo_motor,y_val(i));
    pause(2);
end
    