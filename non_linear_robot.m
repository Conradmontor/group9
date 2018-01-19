function xdot = non_linear_robot(t, x, m_1, m_2, l_1, l_2, g, c_1, c_2)
t_1 = 0;
t_2 = 0;
xdot = [x(2);
        (3*(4*l_2*t_1 - 4*l_2*t_2 - 6*l_1*t_2*cos(x(3)) - 4*c_1*l_2*x(2) + 4*c_2*l_2*x(4) + 6*c_2*l_1*x(4)*cos(x(3)) + 2*l_1*l_2^2*m_2*x(2)^2*sin(x(3)) + 2*l_1*l_2^2*m_2*x(4)^2*sin(x(3)) - 2*g*l_1*l_2*m_1*cos(x(1)) - 4*g*l_1*l_2*m_2*cos(x(1)) + 3*g*l_1*l_2*m_2*cos(x(1) + x(3))*cos(x(3)) + 3*l_1^2*l_2*m_2*x(2)^2*cos(x(3))*sin(x(3)) + 4*l_1*l_2^2*m_2*x(2)*x(4)*sin(x(3))))/(4*l_1^2*l_2*m_1 + 12*l_1^2*l_2*m_2 - 9*l_1^2*l_2*m_2*cos(x(3))^2);
        x(4);
        -(3*(4*l_2^2*m_2*t_1 - 12*l_1^2*m_2*t_2 - 4*l_1^2*m_1*t_2 - 4*l_2^2*m_2*t_2 - 4*c_1*l_2^2*m_2*x(2) + 4*c_2*l_1^2*m_1*x(4) + 12*c_2*l_1^2*m_2*x(4) + 4*c_2*l_2^2*m_2*x(4) + 2*l_1*l_2^3*m_2^2*x(2)^2*sin(x(3)) + 6*l_1^3*l_2*m_2^2*x(2)^2*sin(x(3)) + 2*l_1*l_2^3*m_2^2*x(4)^2*sin(x(3)) + 6*g*l_1^2*l_2*m_2^2*cos(x(1) + x(3)) - 4*g*l_1*l_2^2*m_2^2*cos(x(1)) + 6*l_1*l_2*m_2*t_1*cos(x(3)) - 12*l_1*l_2*m_2*t_2*cos(x(3)) + 2*l_1^3*l_2*m_1*m_2*x(2)^2*sin(x(3)) + 4*l_1*l_2^3*m_2^2*x(2)*x(4)*sin(x(3)) + 3*g*l_1*l_2^2*m_2^2*cos(x(1) + x(3))*cos(x(3)) + 6*l_1^2*l_2^2*m_2^2*x(2)^2*cos(x(3))*sin(x(3)) + 3*l_1^2*l_2^2*m_2^2*x(4)^2*cos(x(3))*sin(x(3)) - 6*c_1*l_1*l_2*m_2*x(2)*cos(x(3)) + 12*c_2*l_1*l_2*m_2*x(4)*cos(x(3)) - 6*g*l_1^2*l_2*m_2^2*cos(x(1))*cos(x(3)) + 2*g*l_1^2*l_2*m_1*m_2*cos(x(1) + x(3)) - 2*g*l_1*l_2^2*m_1*m_2*cos(x(1)) + 6*l_1^2*l_2^2*m_2^2*x(2)*x(4)*cos(x(3))*sin(x(3)) - 3*g*l_1^2*l_2*m_1*m_2*cos(x(1))*cos(x(3))))/(12*l_1^2*l_2^2*m_2^2 + 4*l_1^2*l_2^2*m_1*m_2 - 9*l_1^2*l_2^2*m_2^2*cos(x(3))^2)];      
end
