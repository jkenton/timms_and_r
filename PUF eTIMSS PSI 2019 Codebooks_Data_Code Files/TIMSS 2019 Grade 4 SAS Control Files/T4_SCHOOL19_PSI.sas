*------------------------------------------------------------------------------*
|                                                                              |
|                 TIMSS 2019 Grade 4 - US Public Use [School] PSI              |
|                                                                              |
|                                                                              |
|                        SAS Data Definition Statements                        |
|                                                                              |
|                         Generated: 12AUG22:09:45:57                          |
|                                                                              |
|  The PROC FORMAT statement generates user-defined formats by concatenating   |
|  codes with code descriptions.                                               |
|                                                                              |
|  PROC FORMAT NOTE: One or more code descriptions have been truncated.        |
|                                                                              |
|  The PROC FORMAT statement has been commented out.  To use                   |
|  code descriptions to format data values, remove the comment statements      |
|  '/* */' before and after the PROC FORMAT statement.                         |
|                                                                              |
|  The DATA statement begins the SAS DATA step and names an output SAS data    |
|  set.                                                                        |
|                                                                              |
|  The INFILE statement specifies the name of the data file to read.           |
|                                                                              |
|  The INPUT statement specifies the name, type, decimal specification,        |
|  and location in the data file for each variable.                            |
|                                                                              |
|  The LABEL statement assigns variable labels.                                |
|                                                                              |
|  User-defined missing values are recoded to the SAS sysmis code '.'.         |
|  The recode statements are commented out.  To recode user-defined missing    |
|  values to the SAS sysmis code, remove the comment statements '/* */'        |
|  before and after the recode statements.                                     |
|                                                                              |
|  The FORMAT statement assigns user-defined formats to variables.  The FORMAT |
|  statement is commented out.  To use code descriptions to format data values,|
|  remove the comment statements '/* */' before and after the FORMAT statement.|
|                                                                              |
*------------------------------------------------------------------------------;

* Generate user-defined formats;

/*
PROC FORMAT;

   VALUE V1F (DEFAULT=70)

       1="1: 0%"
       2="2: 1-5%"
       3="3: 6-10%"
       4="4: 11-25%"
       5="5: 26-50%"
       6="6: 51-75%"
       7="7: 76-90%"
       8="8: Over 90%"
       99="99: Omitted or invalid"
       .="BLANK: Blank";

   VALUE V2F (DEFAULT=70)

       1="1: Regular public school"
       2="2: A regular public school with a magnet program"
       3="3: A magnet school or school with a special program emphasis"
       4="4: Special education"
       5="5: Alternative"
       6="6: Vocational"
       7="7: Charter school"
       8="8: Private (independent)"
       9="9: Private (religiously affiliated)"
       10="10: Other"
       99="99: Omitted or invalid"
       .="BLANK: Blank";

   VALUE V3F (DEFAULT=70)

       1="1: High"
       2="2: Medium"
       3="3: Low"
       9="9: Omitted or invalid"
       .="BLANK: Blank";

   VALUE V4F (DEFAULT=70)

       1="1: Yes"
       2="2: No"
       9="9: Omitted or invalid"
       .="BLANK: Blank";

   VALUE V8F (DEFAULT=70)

       840="840: United States";

   VALUE V10F (DEFAULT=70)

       1="1: Less than 10 percent"
       2="2: 10 to 24.9 percent"
       3="3: 25 to 49.9 percent"
       4="4: 50 to 74.9 percent"
       5="5: 75 percent or more"
       9="9: Omitted or invalid";

   VALUE V11F (DEFAULT=70)

       1="1: Public"
       2="2: Private"
       9="9: Omitted or invalid";
*/

* Read the data file;

DATA;
INFILE "[FILE SPECIFICATION]" LRECL=19;
INPUT
   IDCNTRY 1-3 IDSCHOOL 4-7 ACXG06 8-9 ACXG07 10-12 ACXG09 13 ACXG21A 14
   ACXG21B 15 ACXG21C 16 ACXG21D 17 PCTFRPL 18 PUBPRIV 19;

* Assign variable labels;

LABEL
   IDCNTRY="*COUNTRY ID - NUMERIC ISO CODE*"
   IDSCHOOL="*SCHOOL ID*"
   ACXG06="NAT\PERCENT ENROLLED LEP/ELL"
   ACXG07="NAT\TYPE OF SCHOOL"
   ACXG09="NAT\AVG INCOME LEVEL SCH IMMEDIATE AREA"
   ACXG21A="NAT\TEACHER EVAL\OBSERV BY PRIN OR SNR STAFF"
   ACXG21B="NAT\TEACHER EVAL\OBSERV BY EXTERNAL PERSONS"
   ACXG21C="NAT\TEACHER EVAL\STUDENT ACHIEVE"
   ACXG21D="NAT\TEACHER EVAL\TEACHER PEER REVIEW"
   PCTFRPL="*NAT\PERCENT STUD FREE REDUCE LUNCH-CATEGORIZED*"
   PUBPRIV="*NAT\PUBLIC PRIVATE SCHOOL INDICATOR*";

* Recode user-defined numeric missing data codes
to SAS sysmis code;

/*
IF ACXG06=99 THEN ACXG06=.;
IF ACXG07=99 THEN ACXG07=.;
IF ACXG09=9 THEN ACXG09=.;
IF ACXG21A=9 THEN ACXG21A=.;
IF ACXG21B=9 THEN ACXG21B=.;
IF ACXG21C=9 THEN ACXG21C=.;
IF ACXG21D=9 THEN ACXG21D=.;
IF PCTFRPL=9 THEN PCTFRPL=.;
IF PUBPRIV=9 THEN PUBPRIV=.;
*/

* Assign user-defined formats;

/*
FORMAT
   ACXG06 V1F. ACXG07 V2F. ACXG09 V3F. ACXG21A ACXG21B ACXG21C ACXG21D V4F.
   IDCNTRY V8F. PCTFRPL V10F. PUBPRIV V11F.;
*/
RUN;
