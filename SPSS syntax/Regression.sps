Open SPSS and import raw data (CSV or Microsoft excel). Use the data dictionary to define raw data content, format and structure.

LOGISTIC REGRESSION 
The dependent variable was an intervention (clinical) trial or not (i.e. an observational study). 

Any independent variables which achieved significance at p<0.2 from the chi square analysis were considered for inclusion in the multivariate analysis. Independent variables included: comb_collect_sett_hosp, comb_collect_sett_uni, comb_collect_sett_other, definition_deviation_remove_DKNA, monitoring_plan_remove_DKNA, guidelines_dm_combinedYes_and_DK_remove_NA, risk_based_triggered_monit_removed_DKNA, remote_monitoring_remove_DKNA, source_data_verification_remove_DKNA, feedback_cqi_remove_DKNA, participants_baseline_condensed


FORCED ENTRY 

* Test for cross-sectional associations between clinical study demographics, data collection setting and data quality monitoring procedures and those classified as an intervention (clinical) trial using forced entry method. 

LOGISTIC REGRESSION VARIABLES observational_intervention
  /METHOD=ENTER participants_baseline_condensed comb_collect_sett_hosp comb_collect_sett_uni 
    comb_collect_sett_other definition_deviation_remove_DKNA monitoring_plan_remove_DKNA 
    guidelines_dm_combinedYes_and_DK_remove_NA risk_based_triggered_monit_removed_DKNA 
    remote_monitoring_remove_DKNA source_data_verification_remove_DKNA feedback_cqi_remove_DKNA 
  /CONTRAST (comb_collect_sett_hosp)=Indicator(1)
  /CONTRAST (comb_collect_sett_uni)=Indicator(1)
  /CONTRAST (comb_collect_sett_other)=Indicator(1)
  /CONTRAST (definition_deviation_remove_DKNA)=Indicator(1)
  /CONTRAST (monitoring_plan_remove_DKNA)=Indicator(1)
  /CONTRAST (guidelines_dm_combinedYes_and_DK_remove_NA)=Indicator(1)
  /CONTRAST (risk_based_triggered_monit_removed_DKNA)=Indicator(1)
  /CONTRAST (remote_monitoring_remove_DKNA)=Indicator(1)
  /CONTRAST (source_data_verification_remove_DKNA)=Indicator(1)
  /CONTRAST (feedback_cqi_remove_DKNA)=Indicator(1)
  /CONTRAST (participants_baseline_condensed)=Indicator(1)
  /CLASSPLOT
  /CASEWISE OUTLIER(2)
  /PRINT=GOODFIT CORR ITER(1)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).


FORWARDS LR STEPWISE 

* Test for cross-sectional associations between clinical study demographics, data collection setting and data quality monitoring procedures and those classified as an intervention (clinical) trial using forwards LR stepwise method. 

LOGISTIC REGRESSION VARIABLES observational_intervention
  /METHOD=FSTEP(LR) participants_baseline_condensed comb_collect_sett_hosp comb_collect_sett_uni 
    comb_collect_sett_other definition_deviation_remove_DKNA monitoring_plan_remove_DKNA 
    guidelines_dm_combinedYes_and_DK_remove_NA risk_based_triggered_monit_removed_DKNA 
    remote_monitoring_remove_DKNA source_data_verification_remove_DKNA feedback_cqi_remove_DKNA 
  /CONTRAST (comb_collect_sett_hosp)=Indicator(1)
  /CONTRAST (comb_collect_sett_uni)=Indicator(1)
  /CONTRAST (comb_collect_sett_other)=Indicator(1)
  /CONTRAST (definition_deviation_remove_DKNA)=Indicator(1)
  /CONTRAST (monitoring_plan_remove_DKNA)=Indicator(1)
  /CONTRAST (guidelines_dm_combinedYes_and_DK_remove_NA)=Indicator(1)
  /CONTRAST (risk_based_triggered_monit_removed_DKNA)=Indicator(1)
  /CONTRAST (remote_monitoring_remove_DKNA)=Indicator(1)
  /CONTRAST (source_data_verification_remove_DKNA)=Indicator(1)
  /CONTRAST (feedback_cqi_remove_DKNA)=Indicator(1)
  /CONTRAST (participants_baseline_condensed)=Indicator(1)
  /CLASSPLOT
  /CASEWISE OUTLIER(2)
  /PRINT=GOODFIT CORR ITER(1)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).


BACKWARDS LR STEPWISE

* Test for cross-sectional associations between clinical study demographics, data collection setting and data quality monitoring procedures and those classified as an intervention (clinical) trial using backward LR stepwise method. 

LOGISTIC REGRESSION VARIABLES observational_intervention
  /METHOD=BSTEP(LR) participants_baseline_condensed comb_collect_sett_hosp comb_collect_sett_uni 
    comb_collect_sett_other definition_deviation_remove_DKNA monitoring_plan_remove_DKNA 
    guidelines_dm_combinedYes_and_DK_remove_NA risk_based_triggered_monit_removed_DKNA 
    remote_monitoring_remove_DKNA source_data_verification_remove_DKNA feedback_cqi_remove_DKNA 
  /CONTRAST (comb_collect_sett_hosp)=Indicator(1)
  /CONTRAST (comb_collect_sett_uni)=Indicator(1)
  /CONTRAST (comb_collect_sett_other)=Indicator(1)
  /CONTRAST (definition_deviation_remove_DKNA)=Indicator(1)
  /CONTRAST (monitoring_plan_remove_DKNA)=Indicator(1)
  /CONTRAST (guidelines_dm_combinedYes_and_DK_remove_NA)=Indicator(1)
  /CONTRAST (risk_based_triggered_monit_removed_DKNA)=Indicator(1)
  /CONTRAST (remote_monitoring_remove_DKNA)=Indicator(1)
  /CONTRAST (source_data_verification_remove_DKNA)=Indicator(1)
  /CONTRAST (feedback_cqi_remove_DKNA)=Indicator(1)
  /CONTRAST (participants_baseline_condensed)=Indicator(1)
  /CLASSPLOT
  /CASEWISE OUTLIER(2)
  /PRINT=GOODFIT CORR ITER(1)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).
