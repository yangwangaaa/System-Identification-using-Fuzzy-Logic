
load mgdata.dat
a = mgdata;
time = a(:, 1);
x_t = a(:, 2);

trn_data = zeros(500, 5);
chk_data = zeros(500, 5);

% prepare training data
trn_data(:, 1) = x_t(101:600);
trn_data(:, 2) = x_t(107:606);
trn_data(:, 3) = x_t(113:612);
trn_data(:, 4) = x_t(119:618);
trn_data(:, 5) = x_t(125:624);


% prepare checking data
chk_data(:, 1) = x_t(601:1100);
chk_data(:, 2) = x_t(607:1106);
chk_data(:, 3) = x_t(613:1112);
chk_data(:, 4) = x_t(619:1118);
chk_data(:, 5) = x_t(625:1124);


%For sum squared error calculation

fis_data=evalfis(chk_data(:,1:4),FIS3);
error= chk_data(:,5)-fis_data;

plot(error);
xlabel('Time');
ylabel('Error');
title('FSTrianguka');

%For sum squared error
sserror3=sum(error.^2)




