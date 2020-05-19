Open SPSS and import raw data (CSV or Microsoft excel). Use the data dictionary to define raw data content, format and structure.

* Run chi square analysis to determine the potential association between data quality monitoring variables and clinical study type. 

CROSSTABS
  /TABLES=observational_intervention BY health_workforce_count_inc_other_condensed 
    organisation_admin_academic_uni organisation_admin_coopgroup_consortium organisation_admin_govt 
    organisation_admin_hosp organisation_admin_indep_institue organisation_admin_industry 
    organisation_admin_NGO phase_type_remove_DKNA trial_sites trial_sites_number trial_site_combined 
    trial_site_combined_V2 trial_site_combined_V3 comb_collect_sett_health_centre 
    comb_collect_sett_hosp comb_collect_sett_indep_institute comb_collect_sett_inhome_care 
    comb_collect_sett_private_prac comb_collect_sett_uni comb_collect_sett_other participants_baseline 
    participants_baseline_condensed data_monitor_remove_DKNA data_dictionary_remove_DKNA 
    develop_crfs_remove_DK definition_deviation_remove_DKNA monitoring_plan_remove_DKNA 
    data_monitoring_outsource_remove_DKNA guidelines_dm_combinedYes_and_DK_remove_NA 
    pocesses_standardised_remove_DKNA procedure_miss_data_remove_DKNA 
    SD_capture_instruments_combined_condensed software_all_combined_yes_no 
    logic_range_and_consistenc_remove_DKNA double_data_entry_remove_DKNA 
    statistical_techniques_remove_DKNA risk_based_targeted_monito_remove_DKNA 
    risk_based_triggered_monit_removed_DKNA remote_monitoring_remove_DKNA 
    centralised_monitoring_remove_DKNA onsite_monitoring_remove_DKNA 
    source_data_verification_remove_DKNA error_acceptance_remove_DKNA error_equation_remove_DK 
    quality_consis_reports_remove_DKNA feedback_cqi_remove_DKNA
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT 
  /COUNT ROUND CELL.
