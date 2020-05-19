Open SPSS and import raw data (CSV or Microsoft excel). Use the data dictionary to define raw data content, format and structure.

### CLINICAL STUDY DEMOGRAPHICS

* Run frequencies and the sum for health professionals’ part of the clinical study team.

FREQUENCIES VARIABLES=health_workforce_ABTSIW health_workforce_Audiology 
    health_workforce_chinese_med health_workforce_chiro health_workforce_denist 
    health_workforce_dietetics health_workforce_exercise_phys health_workforce_genetic_counsil 
    health_workforce_GP health_workforce_med_radiation health_workforce_nurse 
    health_workforce_nutrition health_workforce_OT health_workforce_optometry health_workforce_osteo 
    health_workforce_ortho health_workforce_paramedic health_workforce_pharma health_workforce_physio 
    health_workforce_podiatry health_workforce_prosethics health_workforce_psych 
    health_workforce_social_work health_workforce_speech_path health_workforce_other 
    health_workforce_count_not_inc_other health_workforce_count_inc_other_condensed
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

* Run frequencies and the sum for the organisation(s) that administers the clinical study.

FREQUENCIES VARIABLES=organisation_admin_academic_uni 
  organisation_admin_coopgroup_consortium organisation_admin_govt organisation_admin_hosp 
  organisation_admin_indep_institue organisation_admin_industry 
  organisation_admin_NGO organisation_admin_NA 
  organisation_admin_DK organisation_admin_other
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

* Define multiple response variable set for the organisation(s) that administers the clinical study. Include data items: organisation_admin_academic_uni, organisation_admin_coopgroup_consortium, organisation_admin_govt, organisation_admin_hosp, organisation_admin_indep_institue, organisation_admin_industry, organisation_admin_NGO, organisation_admin_NA, organisation_admin_DK, organisation_admin_other
* Run frequencies for defined multiple response variable set.

MULT RESPONSE GROUPS=$organ_admin_multi_respon 'organ_admin_multi_respon' 
    (organisation_admin_academic_uni organisation_admin_coopgroup_consortium organisation_admin_govt 
    organisation_admin_hosp organisation_admin_indep_institue organisation_admin_industry 
    organisation_admin_ngo organisation_admin_na organisation_admin_dk organisation_admin_other (1))
  /FREQUENCIES=$organ_admin_multi_respon.

* Run frequencies and the sum for clinical study type. 

FREQUENCIES VARIABLES=observational_intervention
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

* Run frequencies and the sum for type of intervention.

FREQUENCIES VARIABLES=intervention_type
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

* Run frequencies and the sum for study phase.

FREQUENCIES VARIABLES=phase_type
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

* Run frequencies and the sum for the number of clinical trial sites. 

FREQUENCIES VARIABLES=trial_sites trial_sites_number trial_site_combined trial_site_combined_V2 trial_site_combined_V3 international
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

* Run frequencies and the sum for combined single and multi-site data collection setting. 

FREQUENCIES VARIABLES=comb_collect_sett_health_centre comb_collect_sett_hosp 
    comb_collect_sett_indep_institute comb_collect_sett_inhome_care comb_collect_sett_private_prac 
    comb_collect_sett_uni comb_collect_sett_other
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

* Define multiple response variable set for combined single and multi-site data collection setting. Include data items: comb_collect_sett_health_centre, comb_collect_sett_hosp, comb_collect_sett_indep_institute, comb_collect_sett_inhome_care, comb_collect_sett_private_prac, comb_collect_sett_uni, comb_collect_sett_other
* Run frequencies for defined multiple response variable set.

MULT RESPONSE GROUPS=$data_collect_setting 'data_collect_setting' (comb_collect_sett_health_centre 
    comb_collect_sett_hosp comb_collect_sett_indep_institute comb_collect_sett_inhome_care 
    comb_collect_sett_private_prac comb_collect_sett_uni comb_collect_sett_other (1))
  /FREQUENCIES=$data_collect_setting.

* Run frequencies and the sum for part of an international study.

FREQUENCIES VARIABLES=international
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

* Run frequencies and the sum for participants targeted for baseline enrolment. 

FREQUENCIES VARIABLES=participants_baseline participants_baseline_condensed
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

* Run frequencies and the sum for employ a data monitor.

FREQUENCIES VARIABLES=data_monitor
  /STATISTICS=SUM
  /ORDER=ANALYSIS.
