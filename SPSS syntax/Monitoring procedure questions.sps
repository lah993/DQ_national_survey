Open SPSS and import raw data (CSV or Microsoft excel). Use the data dictionary to define raw data content, format and structure.

PROCESS AND SYSTEMS APPLIED TO AUDIT AND MONITOR DATA 

* Run frequencies and the sum for data monitoring procedure variables: risk_based_targeted_monito, risk_based_triggered_monit, remote_monitoring,
    centralised_monitoring, onsite_monitoring, source_data_verification, dp_procedure_other
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=risk_based_targeted_monito risk_based_triggered_monit remote_monitoring
    centralised_monitoring onsite_monitoring source_data_verification dp_procedure_other
  /STATISTICS=SUM
  /ORDER=ANALYSIS.


RISK-BASED TARGETED MONITORING 

* Run frequencies and the sum for use of a risk-based targeted monitoring procedure variables: risk_targ_guide_central, risk_targ_guide_site, risk_targ_replace_onsite, risk_targ_replace_other
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=risk_targ_guide_central risk_targ_guide_site risk_targ_replace_onsite 
    risk_targ_replace_other
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

* Run frequencies and the sum for the types of data targeted for risk-based targeted monitoring: risk_targ_prone_safety risk_targ_prone_patient_visit risk_targ_prone_clincial 
    risk_targ_prone_NA risk_targ_prone_DK risk_targ_prone_other
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=risk_targ_prone_safety risk_targ_prone_patient_visit risk_targ_prone_clincial 
    risk_targ_prone_NA risk_targ_prone_DK risk_targ_prone_other
  /STATISTICS=SUM
  /ORDER=ANALYSIS.


RISK-BASED TRIGGERED MONITORING 

* Run frequencies and the sum for use of a risk-based triggered monitoring procedure variables: trigg_guide_centralised, trigg_guide_onsite, trigg_replace_oniste, risk_based_trigg_other
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=trigg_guide_centralised trigg_guide_onsite trigg_replace_oniste 
    risk_based_trigg_other
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

* Define multiple response variable set for factors likely to trigger a non-scheduled site monitoring visits. Include variables: trigger_site_mon_fraud, trigger_site_mon_rate_enrol, trigger_site_mon_screen_fail, trigger_site_mon_lab_data_signal, trigger_site_mon_no_queries, trigger_site_mon_subject_dropout, trigger_site_mon_incid_ae, trigger_site_mon_geo_location, trigger_site_mon_no_protocol_deviations, trigger_site_mon_lack_of_exp, trigger_site_mon_missing_crf, trigger_site_mon_none, trigger_site_mon_na, trigger_site_mon_other
* Run frequencies for defined multiple response variable set.

MULT RESPONSE GROUPS=$riskbased_trig_nonschedual 'riskbased trig nonschedual'
    (trigger_site_mon_fraud trigger_site_mon_rate_enrol trigger_site_mon_screen_fail
    trigger_site_mon_lab_data_signal trigger_site_mon_no_queries trigger_site_mon_subject_dropout
    trigger_site_mon_incid_ae trigger_site_mon_geo_location trigger_site_mon_no_protocol_deviations
    trigger_site_mon_lack_of_exp trigger_site_mon_missing_crf trigger_site_mon_none trigger_site_mon_na
    trigger_site_mon_other (1)) 
  /FREQUENCIES=$riskbased_trig_nonschedual.

* Define multiple response variable set for kinds of data are used to trigger a non-scheduled site monitoring visits. Include variables: data_used_trig_sit_mon_lab, data_used_trig_sit_mon_crf, data_used_trig_sit_mon_perform, data_used_trig_sit_mon_external, data_used_trig_sit_mon_na, data_used_trig_sit_mon_dk, data_used_trig_sit_mon_other
* Run frequencies for defined multiple response variable set.

MULT RESPONSE GROUPS=$riskbased_trig_data_nonschedual 'riskbased trig data nonschedual'
    (data_used_trig_sit_mon_lab data_used_trig_sit_mon_crf data_used_trig_sit_mon_perform
    data_used_trig_sit_mon_external data_used_trig_sit_mon_na data_used_trig_sit_mon_dk
    data_used_trig_sit_mon_other (1))
  /FREQUENCIES=$riskbased_trig_data_nonschedual.

* Define multiple response variable set for type of data analyses likely to trigger a non-scheduled site monitoring visits. Include variables: data_analy_trig_site_mon_missing, data_analy_trig_site_mon_plausib, data_analy_trig_site_mon_complex, data_analy_trig_site_mon_descriptive, data_analy_trig_site_mon_multivariate,   data_analy_trig_site_mon_none, data_analy_trig_site_mon_na, data_analy_trig_site_mon_dk, data_analy_trig_site_mon_other
* Run frequencies for defined multiple response variable set.

MULT RESPONSE GROUPS=$riskbased_trigger_nonschedual 'riskbased trigger nonschedual'
    (data_analy_trig_site_mon_missing data_analy_trig_site_mon_plausib data_analy_trig_site_mon_complex
    data_analy_trig_site_mon_descriptive data_analy_trig_site_mon_multivariate
    data_analy_trig_site_mon_none data_analy_trig_site_mon_na data_analy_trig_site_mon_dk
    data_analy_trig_site_mon_other (1))
  /FREQUENCIES=$riskbased_trigger_nonschedual.


REMOTE MONITORING 

* Run frequencies and the sum for use of a remote monitoring procedure variables: remote_tele_video_con, remote_central_avail_data, remote_other

FREQUENCIES VARIABLES=remote_tele_video_con remote_central_avail_data remote_other
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

* Run frequencies and the sum for is there a tracking/reminder system for expected case report forms: remote_trac_remind

FREQUENCIES VARIABLES=remote_trac_remind
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

* Run frequencies and the sum for is there a set amount of time between data capture and sending file/reports: remote_set_time

FREQUENCIES VARIABLES=remote_set_time
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

* Run frequencies and the sum for the amount of time between data capture and when files/reports must be sent (weeks): remote_set_time_amount

FREQUENCIES VARIABLES=remote_set_time_amount
  /STATISTICS=SUM
  /ORDER=ANALYSIS.


CENTRALISED MONITORING 

* Run frequencies and the sum for use of a centralised monitoring procedure variables: cent_guide_site_visits, cent_replase_onsite, cm_other

FREQUENCIES VARIABLES=cent_guide_site_visits cent_replase_onsite cm_other
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

* Run frequencies and the sum for periodic audits of a subset of data, sites, centres or participants: cm_periodic_auidt

FREQUENCIES VARIABLES=cm_periodic_auidt
  /STATISTICS=SUM
  /ORDER=ANALYSIS

* Run frequencies and the sum for sample: cm_sample_of

FREQUENCIES VARIABLES=cm_sample_of
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

* Run frequencies and the sum for percentage: cm_percent_sample

FREQUENCIES VARIABLES=cm_percent_sample
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

* Define multiple response variable set for factors likely to trigger a non-scheduled site monitoring visits. Include variables: cm_trig_site_mon_fraud, cm_trig_site_mon_rate_enrol, cm_trig_site_mon_screen_fail_rate cm_trig_site_mon_lab_data_sign, cm_trig_site_mon_no_queries, cm_trig_site_mon_sub_dropout, cm_trig_site_mon_incid_ae, cm_trig_site_mon_geo_location, cm_trig_site_mon_no_proto_deviation, cm_trig_site_mon_lack_experience, cm_trig_site_mon_miss_crf, cm_trig_site_mon_none, cm_trig_site_mon_na, cm_trig_site_mon_other
* Run frequencies for defined multiple response variable set.

MULT RESPONSE GROUPS=$centralisedmon_fact_trigg_sit (cm_trig_site_mon_fraud
    cm_trig_site_mon_rate_enrol cm_trig_site_mon_screen_fail_rate cm_trig_site_mon_lab_data_sign
    cm_trig_site_mon_no_queries cm_trig_site_mon_sub_dropout cm_trig_site_mon_incid_ae
    cm_trig_site_mon_geo_location cm_trig_site_mon_no_proto_deviation cm_trig_site_mon_lack_experience
    cm_trig_site_mon_miss_crf cm_trig_site_mon_none cm_trig_site_mon_na cm_trig_site_mon_other (1))
     /FREQUENCIES=$centralisedmon_fact_trigg_sit.

* Define multiple response variable set for kinds of data are used to trigger a non-scheduled site monitoring visits. Include variables: cm_data_trig_mon_lab, cm_data_trig_mon_crf, cm_data_trig_mon_perform, cm_data_trig_mon_external, cm_data_trig_mon_na, cm_data_trig_mon_dk, cm_data_trig_mon_other
* Run frequencies for defined multiple response variable set.

MULT RESPONSE GROUPS=$centralisedmon_data_trigg_site 'centralisedmon data trigg site' (cm_data_trig_mon_lab
    cm_data_trig_mon_crf cm_data_trig_mon_perform cm_data_trig_mon_external cm_data_trig_mon_na
    cm_data_trig_mon_dk cm_data_trig_mon_other (1)) 
  /FREQUENCIES=$centralisedmon_data_trigg_site.

* Define multiple response variable set for what analyses of centralised data are used to trigger a site monitoring visit. Include variables: cm_data_anlay_trigm_miss, cm_data_anlay_trigm_pausibility, cm_data_anlay_trigm_complex, cm_data_anlay_trigm_simple, cm_data_anlay_trigm_multivariate, cm_data_anlay_trigm_na, cm_data_anlay_trigm_dk, cm_data_anlay_trigm_other
* Run frequencies for defined multiple response variable set.

MULT RESPONSE GROUPS=$centralisedmon_analyses 'centralisedmon analyses'
    (cm_data_anlay_trigm_miss cm_data_anlay_trigm_pausibility cm_data_anlay_trigm_complex
    cm_data_anlay_trigm_simple cm_data_anlay_trigm_multivariate cm_data_anlay_trigm_na
    cm_data_anlay_trigm_dk cm_data_anlay_trigm_other (1))
  /FREQUENCIES=$centralisedmon_analyses.


ON-SITE MONITORING 

* Run frequencies and the sum for data variables included in onsite monitoring: osm_data_variables

FREQUENCIES VARIABLES=osm_data_variables
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

* Run frequencies and the sum for perform onsite monitoring visits for only a subset of data, sites, centres or participants: osm_subset

FREQUENCIES VARIABLES=osm_subset
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

* Run frequencies and the sum for on-site monitoring sample: osm_subset_sample

REQUENCIES VARIABLES=osm_subset_sample
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

* Run frequencies and the sum for on-site monitoring percentage: osm_percentage

FREQUENCIES VARIABLES=osm_percentage
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

* Run frequencies and the sum for how data monitor selects the sample of data, sites, centres or participants for onsite monitoring: osm_sample_select

FREQUENCIES VARIABLES=osm_sample_select
  /STATISTICS=SUM
  /ORDER=ANALYSIS

* Run frequencies and the sum for minimum frequency of onsite monitoring visits: osm_min_freq

FREQUENCIES VARIABLES=osm_min_freq
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

* Run frequencies and the sum for frequency of onsite monitoring visits: osm_frequency

FREQUENCIES VARIABLES=osm_frequency
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

* Define multiple response variable set for what analyses of centralised data are used to trigger a site monitoring visit. Include variables: osm_det_freq_budget, osm_det_freq_study_design,  osm_det_freq_study_pop, osm_det_freq_prac_org, osm_det_freq_mon_plan_proto, osm_det_freq_study_require, osm_det_freq_predef_risk, osm_det_freq_sop, osm_det_freq_na, osm_det_freq_other

MULT RESPONSE GROUPS=$osm_frequency 'osm frequency' (osm_det_freq_budget osm_det_freq_study_design
    osm_det_freq_study_pop osm_det_freq_prac_org osm_det_freq_mon_plan_proto osm_det_freq_study_require
    osm_det_freq_predef_risk osm_det_freq_sop osm_det_freq_na osm_det_freq_other (1))
  /FREQUENCIES=$osm_frequency.


SOURCE DATA VERIFICATION 

* Run frequencies and the sum for use of source data verification variables: sdv_paper_v_electronic, sdv_paper_to_crf, sdv_data_100

FREQUENCIES VARIABLES=sdv_paper_v_electronic sdv_paper_to_crf sdv_data_100
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

* Run frequencies and the sum for minimum frequency of 100% source data verification visits: sdv_100_frequency

FREQUENCIES VARIABLES=sdv_100_frequency
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

* Run frequencies and the sum for 100% source data verification frequency: sdv_100_freq_quantity

FREQUENCIES VARIABLES=sdv_100_freq_quantity
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

* Run frequencies and the sum for proportion verified using source data verification variables: sdv_consent, sdv_eligibility_crit, sdv_critical_data, sdv_noncritical_data, sdv_adverse_events, sdv_nonserious_adverse_event

FREQUENCIES VARIABLES=sdv_consent sdv_eligibility_crit sdv_critical_data sdv_noncritical_data 
    sdv_adverse_events sdv_nonserious_adverse_event
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

* Run frequencies and the sum for perform source data verification for only a subset of data, sites, centres or participants: sdv_subset

FREQUENCIES VARIABLES=sdv_subset
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

* Run frequencies and the sum for source data verification sample: sdv_subset_sample

FREQUENCIES VARIABLES=sdv_subset_sample
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

* Run frequencies and the sum for source data verification percentage: sdv_percentage

FREQUENCIES VARIABLES=sdv_percentage
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

* Run frequencies and the sum how data monitor selects the sample of data, sites, centres or participants for source data verification: sdv_sampling_participants

FREQUENCIES VARIABLES=sdv_sampling_participants
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

* Run frequencies and the sum for minimum frequency of source data verification visits: sdv_frequency

FREQUENCIES VARIABLES=sdv_frequency
  /STATISTICS=SUM
  /ORDER=ANALYSIS.

* Run frequencies and the sum for frequency of source data verification visits: sdv_frequency_yes

FREQUENCIES VARIABLES=sdv_frequency_yes
  /STATISTICS=SUM
  /ORDER=ANALYSIS.
