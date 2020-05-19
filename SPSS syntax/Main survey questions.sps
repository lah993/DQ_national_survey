Open SPSS and import raw data (CSV or Microsoft excel). Use the data dictionary to define raw data content, format and structure.

DATA MANAGEMENT (PROIR TO THE STUDY COMMENCING)

* Run frequencies and the sum for data management (prior to study commencing) variables: data_dictionary, develop_crfs, definition_deviation, monitoring_plan, data_monitoring_outsource, guidelines_dm

FREQUENCIES VARIABLES=data_dictionary develop_crfs definition_deviation monitoring_plan 
    data_monitoring_outsource guidelines_dm
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

* Run frequencies and the sum for national and international regulations, guidelines and/or standards for data monitoring variables: guidelines_dm_combinedYes_and_DK, guidelines_dm_combinedYes_and_DK_remove_NA

FREQUENCIES VARIABLES=guidelines_dm_combinedYes_and_DK guidelines_dm_combinedYes_and_DK_remove_NA
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

* Run frequencies and the sum for which regulations, guidelines and/or standards are followed.

FREQUENCIES VARIABLES=regulations_imp_national_state regulations_imp_TGA_handbook 
    regulations_imp_GCP regulations_imp_ISO regulations_imp_FDA_21CRF regulations_imp_FDA_monitor 
    regulations_imp_HL7 regulations_imp_aDaM regulations_imp_ODM regulations_imp_LONIC 
    regulations_imp_CDASH regulations_imp_ICD regulations_imp_SNOMED_CT regulations_imp_SDTM 
    regulations_imp_DK regulations_imp_other
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

* Define multiple response variable set for which regulations, guidelines and/or standards are followed. Include variables: regulations_imp_national_state, regulations_imp_TGA_handbook, regulations_imp_GCP, regulations_imp_ISO, regulations_imp_FDA_21CRF, regulations_imp_FDA_monitor, regulations_imp_HL7, regulations_imp_aDaM, regulations_imp_ODM, regulations_imp_LONIC, regulations_imp_CDASH, regulations_imp_ICD, regulations_imp_SNOMED_CT, regulations_imp_SDTM, regulations_imp_DK, regulations_imp_other
* Run frequencies for defined multiple response variable set.

MULT RESPONSE GROUPS=$guidelines 'guidelines' (regulations_imp_national_state 
    regulations_imp_tga_handbook regulations_imp_gcp regulations_imp_iso regulations_imp_fda_21crf 
    regulations_imp_fda_monitor regulations_imp_hl7 regulations_imp_adam regulations_imp_odm 
    regulations_imp_lonic regulations_imp_cdash regulations_imp_icd regulations_imp_snomed_ct 
    regulations_imp_sdtm regulations_imp_dk regulations_imp_other (1))
  /FREQUENCIES=$guidelines.

DATA COLLECTION 

* Run frequencies and the sum for data collection process and procedure variables: pocesses_standardised, procedure_miss_data

FREQUENCIES VARIABLES=pocesses_standardised procedure_miss_data
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

* Run frequencies and the sum for data capture instrument(s) used to record source data. 

FREQUENCIES VARIABLES=capture_SD_paper capture_SD_mobile capture_SD_eCRF capture_SD_DB_tool 
    capture_SD_excel capture_SD_automated capture_SD_DK capture_SD_other 
    SD_capture_instruments_combined SD_capture_instruments_combined_condensed
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

* Define multiple response variable set for data capture instrument(s) used to record source data. Include variables: capture_SD_paper, capture_SD_mobile, capture_SD_eCRF, capture_SD_DB_tool, capture_SD_excel, capture_SD_automated, capture_SD_DK, capture_SD_other
* Run frequencies for defined multiple response variable set.

MULT RESPONSE GROUPS=$SD_record 'SD_record' 
  (capture_sd_paper capture_sd_mobile capture_sd_ecrf capture_sd_db_tool capture_sd_excel capture_sd_automated capture_sd_dk capture_sd_other (1))
  /FREQUENCIES=$SD_record.

* Run frequencies and the sum for clinical data management tools used to store data. 

FREQUENCIES VARIABLES=software_RAVE software_MACRO software_REDCap software_TRialDB software_PhOSCo 
    software_CLINTRIAL software_openCDMS software_OpenClinica software_eClinicalsuite software_ORACLE 
    software_yes_implment_common software_yes_implment_common_condensed software_none software_NA 
    software_DK software_other
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

* Define multiple response variable set for clinical data management tools used to store data. Include variables: software_RAVE, software_MACRO, software_REDCap, software_TRialDB, software_PhOSCo, software_CLINTRIAL, software_openCDMS, software_OpenClinica, software_eClinicalsuite, software_ORACLE, software_none, software_NA, software_DK, software_other
* Run frequencies for defined multiple response variable set.

MULT RESPONSE GROUPS=$storage_management_tool 'storage_management_tool' 
  (software_rave software_macro software_redcap software_trialdb software_phosco software_clintrial software_opencdms software_openclinica software_eclinicalsuite software_oracle software_none software_na software_dk software_other (1))
  /FREQUENCIES=$storage_management_tool.

* Run frequencies and the sum for common clinical data management tools used to store data variables: software_yes_implment_common, software_yes_implment_common_condensed, Software_all_combined, software_all_combined_yes_no

FREQUENCIES VARIABLES=software_yes_implment_common software_yes_implment_common_condensed 
    Software_all_combined software_all_combined_yes_no
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

PROCESS AND SYSTEMS APPLIED TO AUDIT AND MONITOR DATA 

* Run frequencies and the sum for data monitoring procedure variables: logic_range_and_consistenc, logic_range_and_consistenc_remove_DK, logic_range_and_consistenc_remove_DKNA, double_data_entry, double_data_entry_remove_DK, double_data_entry_remove_DKNA, statistical_techniques, statistical_techniques_remove_DK, statistical_techniques_remove_DKNA, risk_based_targeted_monito, risk_based_targeted_monito_remove_DK, risk_based_targeted_monito_remove_DKNA, risk_based_triggered_monit, risk_based_triggered_monit_removed_DK, risk_based_triggered_monit_removed_DKNA, remote_monitoring, remote_monitoring_remove_DK, remote_monitoring_remove_DKNA, centralised_monitoring, centralised_monitoring_remove_DK, centralised_monitoring_remove_DKNA, onsite_monitoring, onsite_monitoring_remove_DK, onsite_monitoring_remove_DKNA, source_data_verification, source_data_verification_remove_DK, source_data_verification_remove_DKNA, dp_procedure_other

FREQUENCIES VARIABLES=logic_range_and_consistenc logic_range_and_consistenc_remove_DK 
    logic_range_and_consistenc_remove_DKNA double_data_entry double_data_entry_remove_DK 
    double_data_entry_remove_DKNA statistical_techniques statistical_techniques_remove_DK 
    statistical_techniques_remove_DKNA risk_based_targeted_monito risk_based_targeted_monito_remove_DK 
    risk_based_targeted_monito_remove_DKNA risk_based_triggered_monit 
    risk_based_triggered_monit_removed_DK risk_based_triggered_monit_removed_DKNA remote_monitoring 
    remote_monitoring_remove_DK remote_monitoring_remove_DKNA centralised_monitoring 
    centralised_monitoring_remove_DK centralised_monitoring_remove_DKNA onsite_monitoring 
    onsite_monitoring_remove_DK onsite_monitoring_remove_DKNA source_data_verification 
    source_data_verification_remove_DK source_data_verification_remove_DKNA dp_procedure_other
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

DATA ANALYSIS AND TRANSLATING DATA

* Run frequencies and the sum for data analysis and translating data variables: error_acceptance, error_acceptance_remove_DK, error_acceptance_remove_DKNA, high_error_further_mon, error_equation, error_equation_remove_DK, error_equation_remove_DKNA, quality_consis_reports, quality_consis_reports_remove_DK, quality_consis_reports_remove_DKNA, feedback_cqi, feedback_cqi_remove_DK, feedback_cqi_remove_DKNA

FREQUENCIES VARIABLES=error_acceptance error_acceptance_remove_DK error_acceptance_remove_DKNA 
    high_error_further_mon error_equation error_equation_remove_DK error_equation_remove_DKNA 
    quality_consis_reports quality_consis_reports_remove_DK quality_consis_reports_remove_DKNA 
    feedback_cqi feedback_cqi_remove_DK feedback_cqi_remove_DKNA
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

* Run frequencies and the sum for who reviews the reports of data quality and consistency. 

FREQUENCIES VARIABLES=reports_rev_spon reports_rev_audit_mon reports_rev_data_enrty reports_rev_CI reports_rev_senior_man reports_rev_noone reports_rev_DK reports_reviewer_other
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

* Define multiple response variable set for who reviews the reports of data quality and consistency. Include variables: reports_rev_spon, reports_rev_audit_mon, reports_rev_data_enrty, reports_rev_CI, reports_rev_senior_man, reports_rev_noone, reports_rev_DK, reports_reviewer_other
* Run frequencies for defined multiple response variable set.

MULT RESPONSE GROUPS=$reports 'reports' (reports_rev_spon reports_rev_audit_mon reports_rev_data_enrty reports_rev_ci reports_rev_senior_man reports_rev_noone reports_rev_dk reports_reviewer_other (1))
  /FREQUENCIES=$reports.

EDUCATION AND TRAINING

* Run frequencies and the sum for education and training variables: sitestaff_min_education, sitestaff_min_experience, sitestaff_train_devel, dm_min_education, dm_min_experience, dm_train_develop

FREQUENCIES VARIABLES=sitestaff_min_education sitestaff_min_experience sitestaff_train_devel dm_min_education dm_min_experience dm_train_develop
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

* Run frequencies and the sum for education and training areas, delivery and timing variables: sitestaff_train_areas_mon, sitestaff_train_areas_prot, sitestaff_train_areas_skill, sitestaff_train_areas_spec_area, sitestaff_train_areas_SOP, sitestaff_train_areas_GCP, sitestaff_train_areas_DK, sitestaff_train_areas_other, sitestaff_train_del_group, sitestaff_train_del_one, sitestaff_train_del_online, sitestaff_train_del_other, sitestaff_train_time_prior, sitestaff_train_time_throughout, sitestaff_train_time_trigg, sitestaff_train_time_other, dm_train_areas_mon, dm_train_areas_proto, dm_train_areas_skills, dm_train_areas_spec_area, dm_train_areas_SOP, dm_train_areas_GCP, dm_train_areas_DK, dm_train_areas_other, dm_train_del_group, dm_train_del_one, dm_train_del_online, dm_train_del_other, dm_train_time_prior, dm_train_time_through, dm_train_time_trigg, dm_train_time_other

FREQUENCIES VARIABLES=sitestaff_train_areas_mon sitestaff_train_areas_prot 
    sitestaff_train_areas_skill sitestaff_train_areas_spec_area sitestaff_train_areas_SOP 
    sitestaff_train_areas_GCP sitestaff_train_areas_DK sitestaff_train_areas_other 
    sitestaff_train_del_group sitestaff_train_del_one sitestaff_train_del_online 
    sitestaff_train_del_other sitestaff_train_time_prior sitestaff_train_time_throughout 
    sitestaff_train_time_trigg sitestaff_train_time_other dm_train_areas_mon dm_train_areas_proto 
    dm_train_areas_skills dm_train_areas_spec_area dm_train_areas_SOP dm_train_areas_GCP 
    dm_train_areas_DK dm_train_areas_other dm_train_del_group dm_train_del_one dm_train_del_online 
    dm_train_del_other dm_train_time_prior dm_train_time_through dm_train_time_trigg dm_train_time_other    
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

* Define multiple response variable set for data entry staff training areas. Include variables: sitestaff_train_areas_mon, sitestaff_train_areas_prot, sitestaff_train_areas_skill, sitestaff_train_areas_spec_area, sitestaff_train_areas_SOP, sitestaff_train_areas_GCP, sitestaff_train_areas_DK, sitestaff_train_areas_other
* Run frequencies for defined multiple response variable set.

MULT RESPONSE GROUPS=$dataentry_areas 'dataentry_areas' (sitestaff_train_areas_mon 
    sitestaff_train_areas_prot sitestaff_train_areas_skill sitestaff_train_areas_spec_area 
    sitestaff_train_areas_sop sitestaff_train_areas_gcp sitestaff_train_areas_dk 
    sitestaff_train_areas_other (1))
  /FREQUENCIES=$dataentry_areas 

* Define multiple response variable set for data entry staff training delivery. Include variables: sitestaff_train_del_group, sitestaff_train_del_one, sitestaff_train_del_online, sitestaff_train_del_other
* Run frequencies for defined multiple response variable set.

MULT RESPONSE GROUPS=$dataentry_delivery 'dataentry_delivery' 
    (sitestaff_train_del_group sitestaff_train_del_one sitestaff_train_del_online 
    sitestaff_train_del_other (1))
  /FREQUENCIES=$dataentry_delivery

* Define multiple response variable set for data entry staff training timing. Include variables: sitestaff_train_time_prior, sitestaff_train_time_throughout, sitestaff_train_time_trigg, sitestaff_train_time_other
* Run frequencies for defined multiple response variable set.

MULT RESPONSE GROUPS=$dataentry_time 'dataentry_time' (sitestaff_train_time_prior 
    sitestaff_train_time_throughout sitestaff_train_time_trigg sitestaff_train_time_other (1))
  /FREQUENCIES=$dataentry_time

* Define multiple response variable set for data monitor training areas. Include variables: dm_train_areas_mon, dm_train_areas_proto, dm_train_areas_skills, dm_train_areas_spec_area, dm_train_areas_SOP, dm_train_areas_GCP, dm_train_areas_DK, dm_train_areas_other
* Run frequencies for defined multiple response variable set.

MULT RESPONSE GROUPS=$datamon_areas 'datamon_areas' (dm_train_areas_mon dm_train_areas_proto dm_train_areas_skills 
    dm_train_areas_spec_area dm_train_areas_sop dm_train_areas_gcp dm_train_areas_dk 
    dm_train_areas_other (1))
  /FREQUENCIES=$datamon_areas

* Define multiple response variable set for data monitor training delivery. Include variables: dm_train_del_group, dm_train_del_one, dm_train_del_online, dm_train_del_other
* Run frequencies for defined multiple response variable set.

MULT RESPONSE GROUPS=$datamon_delivery 'datamon_delivery' (dm_train_del_group dm_train_del_one 
    dm_train_del_online dm_train_del_other (1))
  /FREQUENCIES= $datamon_delivery
  
* Define multiple response variable set for data monitor training timing. Include variables: dm_train_time_prior, dm_train_time_through, dm_train_time_trigg, dm_train_time_other

MULT RESPONSE GROUPS=$datamon_time 'datamon_time' (dm_train_time_prior 
    dm_train_time_through dm_train_time_trigg dm_train_time_other (1))
 /FREQUENCIES=$datamon_time

* Run frequencies and the sum for skills and performance of data monitor assessed. 

FREQUENCIES VARIABLES=dm_skills_evaluate
  /STATISTICS=SUM
  /ORDER=ANALYSIS.
