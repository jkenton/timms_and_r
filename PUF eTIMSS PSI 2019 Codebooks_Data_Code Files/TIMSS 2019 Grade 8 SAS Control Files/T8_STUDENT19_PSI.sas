*------------------------------------------------------------------------------*
|                                                                              |
|               TIMSS 2019 Grade 8 - US Public Use [Student] PSI               |
|                                                                              |
|                                                                              |
|                        SAS Data Definition Statements                        |
|                                                                              |
|                         Generated: 10AUG22:14:44:04                          |
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

       1="1: Spanish"
       2="2: Other"
       9="9: Omitted or invalid"
       .="BLANK: Blank";

   VALUE V3F (DEFAULT=70)

       1="1: Yes"
       2="2: No"
       9="9: Omitted or invalid"
       .="BLANK: Blank";

   VALUE V10F (DEFAULT=70)

       1="1: None"
       2="2: 1 or 2 days"
       3="3: 3 or 4 days"
       4="4: 5 to 10 days"
       5="5: More than 10 days"
       9="9: Omitted or invalid"
       .="BLANK: Blank";

   VALUE V13F (DEFAULT=70)

       1="1: Easier than other tests"
       2="2: About as hard as other tests"
       3="3: Harder than other tests"
       4="4: Much harder than other tests"
       9="9: Omitted or invalid"
       .="BLANK: Blank";

   VALUE V14F (DEFAULT=70)

       1="1: Not as hard as on other tests"
       2="2: About as hard as on other tests"
       3="3: Harder than on other tests"
       4="4: Much harder than on other tests"
       9="9: Omitted or invalid"
       .="BLANK: Blank";

   VALUE V15F (DEFAULT=70)

       1="1: Not very important"
       2="2: Somewhat important"
       3="3: Important"
       4="4: Very important"
       9="9: Omitted or invalid"
       .="BLANK: Blank";

   VALUE V16F (DEFAULT=70)

       840="840: United States";

   VALUE V19F (DEFAULT=70)

       1="1: White"
       2="2: Black"
       3="3: Hispanic"
       4="4: Asian"
       5="5: Two or more races"
       6="6: Other"
       9="9: Omitted or invalid"
       .="BLANK: Blank";
*/

* Read the data file;

DATA;
INFILE "[FILE SPECIFICATION]" LRECL=55;
INPUT
   IDCNTRY 1-3 IDSCHOOL 4-7 IDSTUD 8-15 BSXG03B 16 BSXG03BT $ 17-41 BSXG10A 42
   BSXG10B 43 BSXG10C 44 BSXG10D 45 BSXG11A 46 BSXG11B 47 BSXG11C 48 BSXG12B
   49 BSXG13A 50 BSXG13B 51 BSXG31 52 BSXG32 53 BSXG33 54 MSRACE2 55;

* Assign variable labels;

LABEL
   IDCNTRY="*COUNTRY ID - NUMERIC ISO CODE*"
   IDSCHOOL="*SCHOOL ID*"
   IDSTUD="*STUDENT ID*"
   BSXG03B="NAT\LANGUAGE SPOKEN AT HOME"
   BSXG03BT="NAT\LANGUAGE SPOKEN AT HOME\OTHER"
   BSXG10A="NAT\ACTIVITIES OUTSIDE SCHOOL - SPORTS TEAM"
   BSXG10B="NAT\ACTIVITIES OUTSIDE SCHOOL - MUSICAL INSTRUMENT"
   BSXG10C="NAT\ACTIVITIES OUTSIDE SCHOOL - STUDYING IN CLASS"
   BSXG10D="NAT\ACTIVITIES OUTSIDE SCHOOL - CLUB"
   BSXG11A="NAT\PARTICIPATED IN SCIENCE ACTIVITIES\SCIENCE FAIR"
   BSXG11B="NAT\PARTICIPATED IN SCIENCE ACTIVITIES\SCIENCE CLUB"
   BSXG11C="NAT\PARTICIPATED IN SCIENCE ACTIVITIES\SCIENCE COMPETITION"
   BSXG12B="NAT\DAYS ABSENT FROM SCHOOL"
   BSXG13A="NAT\REPEAT GRADE\ELEMENTARY"
   BSXG13B="NAT\REPEAT GRADE\MIDDLE OR JUNIOR HIGH SC"
   BSXG31="NAT\HOW HARD WAS TEST"
   BSXG32="NAT\HOW HARD DID YOU TRY ON TEST"
   BSXG33="NAT\HOW IMPORTANT TO DO WELL"
   MSRACE2="*NAT\DERIVED RACE-COLLAPSED*";

* Recode user-defined numeric missing data codes
to SAS sysmis code;

/*
IF BSXG03B=9 THEN BSXG03B=.;
IF BSXG10A=9 THEN BSXG10A=.;
IF BSXG10B=9 THEN BSXG10B=.;
IF BSXG10C=9 THEN BSXG10C=.;
IF BSXG10D=9 THEN BSXG10D=.;
IF BSXG11A=9 THEN BSXG11A=.;
IF BSXG11B=9 THEN BSXG11B=.;
IF BSXG11C=9 THEN BSXG11C=.;
IF BSXG12B=9 THEN BSXG12B=.;
IF BSXG13A=9 THEN BSXG13A=.;
IF BSXG13B=9 THEN BSXG13B=.;
IF BSXG31=9 THEN BSXG31=.;
IF BSXG32=9 THEN BSXG32=.;
IF BSXG33=9 THEN BSXG33=.;
IF MSRACE2=9 THEN MSRACE2=.;
*/

* Assign user-defined formats;

/*
FORMAT
   BSXG03B V1F. BSXG10A BSXG10B BSXG10C BSXG10D BSXG11A BSXG11B BSXG11C
   BSXG13A BSXG13B V3F. BSXG12B V10F. BSXG31 V13F. BSXG32 V14F. BSXG33 V15F.
   IDCNTRY V16F. MSRACE2 V19F.;
*/
RUN;
