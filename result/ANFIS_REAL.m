error_yaw_asli = [10, 5, -3, 8, -7, 15];             %dari IMU = yaw sekarang
kontrol_asli = [8.5, 4.2, -2.8, 6.8, -5.9, 14.7];   %

data_asli = [error_yaw_asli', kontrol_asli']; %dataset rl
modul_lama = readfis('anfis_trained.fis'); %modul simulasi

opt = anfisOptions('InitialFIS', modul_lama, 'EpochNumber', 200, 'StepSizeDecreaseRate', 0.01);

disp('Training ulang ANFIS dengan data nyata \n');
FIS_final = anfis(data_asli, opt);

writeFIS(FIS_final, 'anfis_final.fis'); %modul final
disp('Model ANFIS final (real) telah disimpan!');

test_error = [10; 9; -3; 12]; %tes input baru
control_lama = evalfis(modul_lama, test_error); %simulasi
control_baru = evalfis(FIS_final, test_error); %data asli

fprintf('\nPerbandingan Output Kontrol:\n');
fprintf('%8s %15s %15s\n', 'Error', 'Simulasi', 'Real-Finetune');
fprintf('%8s %15s %15s\n', '------', '--------', '-----------');
for i = 1:length(test_error)
    fprintf('%8.1f %15.2f %15.2f\n', test_error(i), control_lama(i), control_baru(i));
end

