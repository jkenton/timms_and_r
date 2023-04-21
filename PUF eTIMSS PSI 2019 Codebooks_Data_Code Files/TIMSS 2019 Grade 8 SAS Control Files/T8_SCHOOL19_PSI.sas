*------------------------------------------------------------------------------*
|                                                                              |
|                 TIMSS 2019 Grade 8 - US Public Use [School] PSI              |
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

   VALUE V12F (DEFAULT=70)

       840="840: United States";

   VALUE V14F (DEFAULT=70)

       1="1: Less than 10 percent"
       2="2: 10 to 24.9 percent"
       3="3: 25 to 49.9 percent"
       4="4: 50 to 74.9 percent"
       5="5: 75 percent or more"
       9="9: Omitted or invalid";

   VALUE V15F (DEFAULT=70)

       1="1: Public"
       2="2: Private"
       9="9: Omitted or invalid";
*/

* Read the data file;

DATA;
INFILE "[FILE SPECIFICATION]" LRECL=22;
INPUT
   IDCNTRY 1-3 IDSCHOOL 4-7 BCXG06 8-9 BCXG07 10-11 BCXG09 12 BCXG22A 13
   BCXG22B 14 BCXG22C 15 BCXG22D 16 BCXG23A 17 BCXG23B 18 BCXG23C 19 BCXG23D
   20 PCTFRPL 21 PUBPRIV 22;

* Assign variable labels;

LABEL
   IDCNTRY="*COUNTRY ID - NUMERIC ISO CODE*"
   IDSCHOOL="*SCHOOL ID*"
   BCXG06="NAT\PERCENT ENROLLED LEP/ELL"
   BCXG07="NAT\TYPE OF SCHOOL"
   BCXG09="NAT\AVG INCOME LEVEL SCH IMMEDIATE AREA"
   BCXG22A="NAT\TEACHER EVAL\MATH\OBSERV BY PRIN OR SNR STAFF"
   BCXG22B="NAT\TEACHER EVAL\MATH\OBSERV BY EXTERNAL PERSONS"
   BCXG22C="NAT\TEACHER EVAL\MATH\STUDENT ACHIEVE"
   BCXG22D="NAT\TEACHER EVAL\MATH\TEACHER PEER REVIEW"
   BCXG23A="NAT\TEACHER EVAL\SCIENCE\OBSERV BY PRIN OR SNR STAFF"
   BCXG23B="NAT\TEACHER EVAL\SCIENCE\OBSERV BY EXTERNAL PERSONS"
   BCXG23C="NAT\TEACHER EVAL\SCIENCE\STUDENT ACHIEVE"
   BCXG23D="NAT\TEACHER EVAL\SCIENCE\TEACHER PEER REVIEW"
   PCTFRPL="*NAT\PERCENT STUD FREE REDUCE LUNCH-CATEGORIZED*"
   PUBPRIV="*NAT\PUBLIC PRIVATE SCHOOL INDICATOR*";

* Recode user-defined numeric missing data codes
to SAS sysmis code;

/*
IF BCXG06=99 THEN BCXG06=.;
IF BCXG07=99 THEN BCXG07=.;
IF BCXG09=9 THEN BCXG09=.;
IF BCXG22A=9 THEN BCXG22A=.;
IF BCXG22B=9 THEN BCXG22B=.;
IF BCXG22C=9 THEN BCXG22C=.;
IF BCXG22D=9 THEN BCXG22D=.;
IF BCXG23A=9 THEN BCXG23A=.;
IF BCXG23B=9 THEN BCXG23B=.;
IF BCXG23C=9 THEN BCXG23C=.;
IF BCXG23D=9 THEN BCXG23D=.;
IF PCTFRPL=9 THEN PCTFRPL=.;
IF PUBPRIV=9 THEN PUBPRIV=.;
*/

* Assign user-defined formats;

/*
FORMAT
   BCXG06 V1F. BCXG07 V2F. BCXG09 V3F. BCXG22A BCXG22B BCXG22C BCXG22D BCXG23A
   BCXG23B BCXG23C BCXG23D V4F. IDCNTRY V12F. PCTFRPL V14F. PUBPRIV V15F.;
*/
RUN;
