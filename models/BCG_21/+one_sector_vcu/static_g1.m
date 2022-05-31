function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
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
%   g1
%

if T_flag
    T = one_sector_vcu.static_g1_tt(T, y, x, params);
end
g1 = zeros(128, 128);
g1(1,5)=(-((-(1-params(2)))/((y(5)-y(5)*params(2))*(y(5)-y(5)*params(2)))-(-(params(2)*params(6)*(1-params(2))))/((y(5)-y(5)*params(2))*(y(5)-y(5)*params(2)))));
g1(1,9)=1;
g1(2,9)=1;
g1(2,10)=T(3);
g1(3,9)=y(13)*y(16);
g1(3,10)=params(6)*(1-params(8))-1;
g1(3,13)=y(9)*y(16);
g1(3,16)=y(9)*y(13);
g1(4,6)=T(3);
g1(4,8)=1-(1-params(8));
g1(5,8)=y(13);
g1(5,13)=y(8);
g1(5,16)=(-(params(10)*getPowerDeriv(y(16),params(9),1)));
g1(6,3)=(-(params(1)/(y(16)*y(8))));
g1(6,8)=(-((-(y(16)*params(1)*y(3)))/(y(16)*y(8)*y(16)*y(8))));
g1(6,13)=1;
g1(6,16)=(-((-(y(8)*params(1)*y(3)))/(y(16)*y(8)*y(16)*y(8))));
g1(7,3)=(-((1-params(1))/y(14)));
g1(7,12)=1;
g1(7,14)=(-((-(y(3)*(1-params(1))))/(y(14)*y(14))));
g1(8,1)=1;
g1(8,3)=T(3);
g1(9,3)=1;
g1(9,8)=(-(T(2)*y(16)*T(4)));
g1(9,14)=(-(T(1)*y(15)*T(5)));
g1(9,15)=(-(T(1)*y(14)*T(5)));
g1(9,16)=(-(T(2)*y(8)*T(4)));
g1(10,1)=1;
g1(10,4)=T(3);
g1(10,6)=T(3);
g1(10,16)=(-(params(10)*getPowerDeriv(y(16),1+params(9),1)/(1+params(9))));
g1(11,14)=1-params(4);
g1(11,55)=T(3);
g1(12,11)=1;
g1(13,4)=1;
g1(13,5)=(-y(17));
g1(13,17)=(-y(5));
g1(14,17)=1-params(4);
g1(14,92)=T(3);
g1(15,15)=1/y(15)-params(5)*1/y(15);
g1(16,6)=1;
g1(16,7)=(-y(17));
g1(16,17)=(-y(7));
g1(17,1)=1;
g1(17,2)=(-y(17));
g1(17,17)=(-y(2));
g1(18,18)=1;
g1(18,19)=T(3);
g1(19,19)=1;
g1(19,20)=T(3);
g1(20,20)=1;
g1(20,21)=T(3);
g1(21,21)=1;
g1(21,22)=T(3);
g1(22,22)=1;
g1(22,23)=T(3);
g1(23,23)=1;
g1(23,24)=T(3);
g1(24,24)=1;
g1(24,25)=T(3);
g1(25,25)=1;
g1(25,26)=T(3);
g1(26,26)=1;
g1(26,27)=T(3);
g1(27,27)=1;
g1(27,28)=T(3);
g1(28,28)=1;
g1(28,29)=T(3);
g1(29,29)=1;
g1(29,30)=T(3);
g1(30,30)=1;
g1(30,31)=T(3);
g1(31,31)=1;
g1(31,32)=T(3);
g1(32,32)=1;
g1(32,33)=T(3);
g1(33,33)=1;
g1(33,34)=T(3);
g1(34,34)=1;
g1(34,35)=T(3);
g1(35,35)=1;
g1(35,36)=T(3);
g1(36,36)=1;
g1(36,37)=T(3);
g1(37,37)=1;
g1(37,38)=T(3);
g1(38,38)=1;
g1(38,39)=T(3);
g1(39,39)=1;
g1(39,40)=T(3);
g1(40,40)=1;
g1(40,41)=T(3);
g1(41,41)=1;
g1(41,42)=T(3);
g1(42,42)=1;
g1(42,43)=T(3);
g1(43,43)=1;
g1(43,44)=T(3);
g1(44,44)=1;
g1(44,45)=T(3);
g1(45,45)=1;
g1(45,46)=T(3);
g1(46,46)=1;
g1(46,47)=T(3);
g1(47,47)=1;
g1(47,48)=T(3);
g1(48,48)=1;
g1(48,49)=T(3);
g1(49,49)=1;
g1(49,50)=T(3);
g1(50,50)=1;
g1(50,51)=T(3);
g1(51,51)=1;
g1(51,52)=T(3);
g1(52,52)=1;
g1(52,53)=T(3);
g1(53,53)=1;
g1(53,54)=T(3);
g1(54,54)=1;
g1(55,55)=1;
g1(55,56)=T(3);
g1(56,56)=1;
g1(56,57)=T(3);
g1(57,57)=1;
g1(57,58)=T(3);
g1(58,58)=1;
g1(58,59)=T(3);
g1(59,59)=1;
g1(59,60)=T(3);
g1(60,60)=1;
g1(60,61)=T(3);
g1(61,61)=1;
g1(61,62)=T(3);
g1(62,62)=1;
g1(62,63)=T(3);
g1(63,63)=1;
g1(63,64)=T(3);
g1(64,64)=1;
g1(64,65)=T(3);
g1(65,65)=1;
g1(65,66)=T(3);
g1(66,66)=1;
g1(66,67)=T(3);
g1(67,67)=1;
g1(67,68)=T(3);
g1(68,68)=1;
g1(68,69)=T(3);
g1(69,69)=1;
g1(69,70)=T(3);
g1(70,70)=1;
g1(70,71)=T(3);
g1(71,71)=1;
g1(71,72)=T(3);
g1(72,72)=1;
g1(72,73)=T(3);
g1(73,73)=1;
g1(73,74)=T(3);
g1(74,74)=1;
g1(74,75)=T(3);
g1(75,75)=1;
g1(75,76)=T(3);
g1(76,76)=1;
g1(76,77)=T(3);
g1(77,77)=1;
g1(77,78)=T(3);
g1(78,78)=1;
g1(78,79)=T(3);
g1(79,79)=1;
g1(79,80)=T(3);
g1(80,80)=1;
g1(80,81)=T(3);
g1(81,81)=1;
g1(81,82)=T(3);
g1(82,82)=1;
g1(82,83)=T(3);
g1(83,83)=1;
g1(83,84)=T(3);
g1(84,84)=1;
g1(84,85)=T(3);
g1(85,85)=1;
g1(85,86)=T(3);
g1(86,86)=1;
g1(86,87)=T(3);
g1(87,87)=1;
g1(87,88)=T(3);
g1(88,88)=1;
g1(88,89)=T(3);
g1(89,89)=1;
g1(89,90)=T(3);
g1(90,90)=1;
g1(90,91)=T(3);
g1(91,91)=1;
g1(92,92)=1;
g1(92,93)=T(3);
g1(93,93)=1;
g1(93,94)=T(3);
g1(94,94)=1;
g1(94,95)=T(3);
g1(95,95)=1;
g1(95,96)=T(3);
g1(96,96)=1;
g1(96,97)=T(3);
g1(97,97)=1;
g1(97,98)=T(3);
g1(98,98)=1;
g1(98,99)=T(3);
g1(99,99)=1;
g1(99,100)=T(3);
g1(100,100)=1;
g1(100,101)=T(3);
g1(101,101)=1;
g1(101,102)=T(3);
g1(102,102)=1;
g1(102,103)=T(3);
g1(103,103)=1;
g1(103,104)=T(3);
g1(104,104)=1;
g1(104,105)=T(3);
g1(105,105)=1;
g1(105,106)=T(3);
g1(106,106)=1;
g1(106,107)=T(3);
g1(107,107)=1;
g1(107,108)=T(3);
g1(108,108)=1;
g1(108,109)=T(3);
g1(109,109)=1;
g1(109,110)=T(3);
g1(110,110)=1;
g1(110,111)=T(3);
g1(111,111)=1;
g1(111,112)=T(3);
g1(112,112)=1;
g1(112,113)=T(3);
g1(113,113)=1;
g1(113,114)=T(3);
g1(114,114)=1;
g1(114,115)=T(3);
g1(115,115)=1;
g1(115,116)=T(3);
g1(116,116)=1;
g1(116,117)=T(3);
g1(117,117)=1;
g1(117,118)=T(3);
g1(118,118)=1;
g1(118,119)=T(3);
g1(119,119)=1;
g1(119,120)=T(3);
g1(120,120)=1;
g1(120,121)=T(3);
g1(121,121)=1;
g1(121,122)=T(3);
g1(122,122)=1;
g1(122,123)=T(3);
g1(123,123)=1;
g1(123,124)=T(3);
g1(124,124)=1;
g1(124,125)=T(3);
g1(125,125)=1;
g1(125,126)=T(3);
g1(126,126)=1;
g1(126,127)=T(3);
g1(127,127)=1;
g1(127,128)=T(3);
g1(128,128)=1;
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
