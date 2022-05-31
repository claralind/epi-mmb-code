function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = two_sector_vcu_binding.static_resid_tt(T, y, x, params);
end
residual = zeros(132, 1);
lhs = y(10);
rhs = 1/(y(6)-y(6)*params(2))-params(2)*params(6)/(y(6)-y(6)*params(2));
residual(1) = lhs - rhs;
lhs = y(10);
rhs = y(11)+y(12);
residual(2) = lhs - rhs;
residual(3) = y(10)*y(16)*y(20)-y(11)+y(11)*params(6)*(1-params(8));
lhs = y(9);
rhs = (1-params(8))*y(9)+0.0000000000001;
residual(4) = lhs - rhs;
lhs = y(16)*y(9);
rhs = params(11)*y(20)^params(10);
residual(5) = lhs - rhs;
lhs = y(14);
rhs = params(12)*y(13);
residual(6) = lhs - rhs;
lhs = y(3);
rhs = params(12)*(y(17)-params(13));
residual(7) = lhs - rhs;
lhs = y(16);
rhs = y(4)*params(1)*T(2)/(y(20)*y(9));
residual(8) = lhs - rhs;
lhs = y(15);
rhs = y(4)*T(2)*(1-params(1))/y(18);
residual(9) = lhs - rhs;
lhs = y(13);
rhs = (y(1)*(1-params(9))/y(3))^T(1);
residual(10) = lhs - rhs;
lhs = y(1);
rhs = T(6)^(1+params(3));
residual(11) = lhs - rhs;
lhs = y(4);
rhs = T(7)*T(8);
residual(12) = lhs - rhs;
lhs = y(1);
rhs = params(11)*y(20)^(1+params(10))/(1+params(10))+0.0000000000001+y(5);
residual(13) = lhs - rhs;
lhs = y(17)-params(15);
rhs = (y(17)-params(15))*params(4)+y(22)+x(1);
residual(14) = lhs - rhs;
lhs = y(18)-params(16);
rhs = params(4)*(y(18)-params(16))+y(59)+x(2);
residual(15) = lhs - rhs;
lhs = y(7);
rhs = 0.0000000000001;
residual(16) = lhs - rhs;
lhs = y(5);
rhs = y(6)*y(21);
residual(17) = lhs - rhs;
lhs = y(21)-1;
rhs = params(4)*(y(21)-1)+y(96);
residual(18) = lhs - rhs;
lhs = log(y(19));
rhs = log(y(19))*params(5)+x(3);
residual(19) = lhs - rhs;
lhs = 0.0000000000001;
rhs = y(21)*y(8);
residual(20) = lhs - rhs;
lhs = y(1);
rhs = y(21)*y(2);
residual(21) = lhs - rhs;
lhs = y(22);
rhs = y(23);
residual(22) = lhs - rhs;
lhs = y(23);
rhs = y(24);
residual(23) = lhs - rhs;
lhs = y(24);
rhs = y(25);
residual(24) = lhs - rhs;
lhs = y(25);
rhs = y(26);
residual(25) = lhs - rhs;
lhs = y(26);
rhs = y(27);
residual(26) = lhs - rhs;
lhs = y(27);
rhs = y(28);
residual(27) = lhs - rhs;
lhs = y(28);
rhs = y(29);
residual(28) = lhs - rhs;
lhs = y(29);
rhs = y(30);
residual(29) = lhs - rhs;
lhs = y(30);
rhs = y(31);
residual(30) = lhs - rhs;
lhs = y(31);
rhs = y(32);
residual(31) = lhs - rhs;
lhs = y(32);
rhs = y(33);
residual(32) = lhs - rhs;
lhs = y(33);
rhs = y(34);
residual(33) = lhs - rhs;
lhs = y(34);
rhs = y(35);
residual(34) = lhs - rhs;
lhs = y(35);
rhs = y(36);
residual(35) = lhs - rhs;
lhs = y(36);
rhs = y(37);
residual(36) = lhs - rhs;
lhs = y(37);
rhs = y(38);
residual(37) = lhs - rhs;
lhs = y(38);
rhs = y(39);
residual(38) = lhs - rhs;
lhs = y(39);
rhs = y(40);
residual(39) = lhs - rhs;
lhs = y(40);
rhs = y(41);
residual(40) = lhs - rhs;
lhs = y(41);
rhs = y(42);
residual(41) = lhs - rhs;
lhs = y(42);
rhs = y(43);
residual(42) = lhs - rhs;
lhs = y(43);
rhs = y(44);
residual(43) = lhs - rhs;
lhs = y(44);
rhs = y(45);
residual(44) = lhs - rhs;
lhs = y(45);
rhs = y(46);
residual(45) = lhs - rhs;
lhs = y(46);
rhs = y(47);
residual(46) = lhs - rhs;
lhs = y(47);
rhs = y(48);
residual(47) = lhs - rhs;
lhs = y(48);
rhs = y(49);
residual(48) = lhs - rhs;
lhs = y(49);
rhs = y(50);
residual(49) = lhs - rhs;
lhs = y(50);
rhs = y(51);
residual(50) = lhs - rhs;
lhs = y(51);
rhs = y(52);
residual(51) = lhs - rhs;
lhs = y(52);
rhs = y(53);
residual(52) = lhs - rhs;
lhs = y(53);
rhs = y(54);
residual(53) = lhs - rhs;
lhs = y(54);
rhs = y(55);
residual(54) = lhs - rhs;
lhs = y(55);
rhs = y(56);
residual(55) = lhs - rhs;
lhs = y(56);
rhs = y(57);
residual(56) = lhs - rhs;
lhs = y(57);
rhs = y(58);
residual(57) = lhs - rhs;
lhs = y(58);
rhs = x(4);
residual(58) = lhs - rhs;
lhs = y(59);
rhs = y(60);
residual(59) = lhs - rhs;
lhs = y(60);
rhs = y(61);
residual(60) = lhs - rhs;
lhs = y(61);
rhs = y(62);
residual(61) = lhs - rhs;
lhs = y(62);
rhs = y(63);
residual(62) = lhs - rhs;
lhs = y(63);
rhs = y(64);
residual(63) = lhs - rhs;
lhs = y(64);
rhs = y(65);
residual(64) = lhs - rhs;
lhs = y(65);
rhs = y(66);
residual(65) = lhs - rhs;
lhs = y(66);
rhs = y(67);
residual(66) = lhs - rhs;
lhs = y(67);
rhs = y(68);
residual(67) = lhs - rhs;
lhs = y(68);
rhs = y(69);
residual(68) = lhs - rhs;
lhs = y(69);
rhs = y(70);
residual(69) = lhs - rhs;
lhs = y(70);
rhs = y(71);
residual(70) = lhs - rhs;
lhs = y(71);
rhs = y(72);
residual(71) = lhs - rhs;
lhs = y(72);
rhs = y(73);
residual(72) = lhs - rhs;
lhs = y(73);
rhs = y(74);
residual(73) = lhs - rhs;
lhs = y(74);
rhs = y(75);
residual(74) = lhs - rhs;
lhs = y(75);
rhs = y(76);
residual(75) = lhs - rhs;
lhs = y(76);
rhs = y(77);
residual(76) = lhs - rhs;
lhs = y(77);
rhs = y(78);
residual(77) = lhs - rhs;
lhs = y(78);
rhs = y(79);
residual(78) = lhs - rhs;
lhs = y(79);
rhs = y(80);
residual(79) = lhs - rhs;
lhs = y(80);
rhs = y(81);
residual(80) = lhs - rhs;
lhs = y(81);
rhs = y(82);
residual(81) = lhs - rhs;
lhs = y(82);
rhs = y(83);
residual(82) = lhs - rhs;
lhs = y(83);
rhs = y(84);
residual(83) = lhs - rhs;
lhs = y(84);
rhs = y(85);
residual(84) = lhs - rhs;
lhs = y(85);
rhs = y(86);
residual(85) = lhs - rhs;
lhs = y(86);
rhs = y(87);
residual(86) = lhs - rhs;
lhs = y(87);
rhs = y(88);
residual(87) = lhs - rhs;
lhs = y(88);
rhs = y(89);
residual(88) = lhs - rhs;
lhs = y(89);
rhs = y(90);
residual(89) = lhs - rhs;
lhs = y(90);
rhs = y(91);
residual(90) = lhs - rhs;
lhs = y(91);
rhs = y(92);
residual(91) = lhs - rhs;
lhs = y(92);
rhs = y(93);
residual(92) = lhs - rhs;
lhs = y(93);
rhs = y(94);
residual(93) = lhs - rhs;
lhs = y(94);
rhs = y(95);
residual(94) = lhs - rhs;
lhs = y(95);
rhs = x(5);
residual(95) = lhs - rhs;
lhs = y(96);
rhs = y(97);
residual(96) = lhs - rhs;
lhs = y(97);
rhs = y(98);
residual(97) = lhs - rhs;
lhs = y(98);
rhs = y(99);
residual(98) = lhs - rhs;
lhs = y(99);
rhs = y(100);
residual(99) = lhs - rhs;
lhs = y(100);
rhs = y(101);
residual(100) = lhs - rhs;
lhs = y(101);
rhs = y(102);
residual(101) = lhs - rhs;
lhs = y(102);
rhs = y(103);
residual(102) = lhs - rhs;
lhs = y(103);
rhs = y(104);
residual(103) = lhs - rhs;
lhs = y(104);
rhs = y(105);
residual(104) = lhs - rhs;
lhs = y(105);
rhs = y(106);
residual(105) = lhs - rhs;
lhs = y(106);
rhs = y(107);
residual(106) = lhs - rhs;
lhs = y(107);
rhs = y(108);
residual(107) = lhs - rhs;
lhs = y(108);
rhs = y(109);
residual(108) = lhs - rhs;
lhs = y(109);
rhs = y(110);
residual(109) = lhs - rhs;
lhs = y(110);
rhs = y(111);
residual(110) = lhs - rhs;
lhs = y(111);
rhs = y(112);
residual(111) = lhs - rhs;
lhs = y(112);
rhs = y(113);
residual(112) = lhs - rhs;
lhs = y(113);
rhs = y(114);
residual(113) = lhs - rhs;
lhs = y(114);
rhs = y(115);
residual(114) = lhs - rhs;
lhs = y(115);
rhs = y(116);
residual(115) = lhs - rhs;
lhs = y(116);
rhs = y(117);
residual(116) = lhs - rhs;
lhs = y(117);
rhs = y(118);
residual(117) = lhs - rhs;
lhs = y(118);
rhs = y(119);
residual(118) = lhs - rhs;
lhs = y(119);
rhs = y(120);
residual(119) = lhs - rhs;
lhs = y(120);
rhs = y(121);
residual(120) = lhs - rhs;
lhs = y(121);
rhs = y(122);
residual(121) = lhs - rhs;
lhs = y(122);
rhs = y(123);
residual(122) = lhs - rhs;
lhs = y(123);
rhs = y(124);
residual(123) = lhs - rhs;
lhs = y(124);
rhs = y(125);
residual(124) = lhs - rhs;
lhs = y(125);
rhs = y(126);
residual(125) = lhs - rhs;
lhs = y(126);
rhs = y(127);
residual(126) = lhs - rhs;
lhs = y(127);
rhs = y(128);
residual(127) = lhs - rhs;
lhs = y(128);
rhs = y(129);
residual(128) = lhs - rhs;
lhs = y(129);
rhs = y(130);
residual(129) = lhs - rhs;
lhs = y(130);
rhs = y(131);
residual(130) = lhs - rhs;
lhs = y(131);
rhs = y(132);
residual(131) = lhs - rhs;
lhs = y(132);
rhs = x(6);
residual(132) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
