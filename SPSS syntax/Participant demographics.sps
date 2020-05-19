Open SPSS and import raw data (CSV or Microsoft excel). Use the data dictionary to define raw data contents, format and structure.

PARTICIPANT DEMOGRAPHICS

* Run frequencies and the sum for participant demographic items: gender, education, length_of_employment_range, length_of_employment_range_condensed, appointment, contact_duration_range
FREQUENCIES VARIABLES=gender education Length_of_employment_range
    Length_of_employment_range_condensed appointment contact_duration_range
  /STATISTICS=SUM
  /ORDER=ANALYSIS.
