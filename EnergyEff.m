%%
%% Effective Transmit Power
%%
EnergyEff_.mu_BS = 0.6;     %% efficiency of the power amplifier
EnergyEff_.mu_UE = 0.6;     %% efficiency of the power amplifier to the UE

EnergyEff_.ETP = 10^(0.1*(Conf_.MBS_Pmax_dB-30))/EnergyEff_.mu_BS + Conf_.NumUEs*10^(0.1*(Conf_.UE_Pmax_dB-30))/EnergyEff_.mu_UE;

%%
%% Circuit Power
%%
EnergyEff_.P_fix = 10;      %% constant value (10W)
EnergyEff_.PBS = 40;         %% Power to let the components run (1W)

EnergyEff_.CP = EnergyEff_.P_fix  + EnergyEff_.PBS/10e6*Conf_.BW;

%%
%% Power Consumption
%%
EnergyEff_.PowerCons = EnergyEff_.ETP + EnergyEff_.CP;

%%
%% EnergyEff
%%
fprintf("mu_BS = %f\n", EnergyEff_.mu_BS)
fprintf("mu_UE = %f\n", EnergyEff_.mu_UE)
fprintf("ETP = %f\n", EnergyEff_.ETP)
fprintf("P_fix = %f\n", EnergyEff_.P_fix)
fprintf("PBS = %f\n", EnergyEff_.PBS)
fprintf("CP = %f\n", EnergyEff_.CP)
fprintf("PowerCons = %f\n", EnergyEff_.PowerCons)
