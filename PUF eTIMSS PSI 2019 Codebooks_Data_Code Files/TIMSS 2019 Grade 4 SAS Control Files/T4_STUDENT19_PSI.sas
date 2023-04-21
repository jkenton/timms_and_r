*------------------------------------------------------------------------------*
|                                                                              |
|               TIMSS 2019 Grade 4 - US Public Use [Student] PSI                |
|                                                                              |
|                                                                              |
|                        SAS Data Definition Statements                        |
|                                                                              |
|                         Generated: 10AUG22:11:15:57                          |
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

   VALUE V9F (DEFAULT=70)

       1="1: None"
       2="2: 1 or 2 days"
       3="3: 3 or 4 days"
       4="4: 5 to 10 days"
       5="5: More than 10 days"
       9="9: Omitted or invalid"
       .="BLANK: Blank";

   VALUE V10F (DEFAULT=70)

       1="1: Easier than other tests"
       2="2: About as hard as other tests"
       3="3: Harder than other tests"
       4="4: Much harder than other tests"
       9="9: Omitted or invalid"
       .="BLANK: Blank";

   VALUE V11F (DEFAULT=70)

       1="1: Not as hard as on other tests"
       2="2: About as hard as on other tests"
       3="3: Harder than on other tests"
       4="4: Much harder than on other tests"
       9="9: Omitted or invalid"
       .="BLANK: Blank";

   VALUE V12F (DEFAULT=70)

       1="1: Not very important"
       2="2: Somewhat important"
       3="3: Important"
       4="4: Very important"
       9="9: Omitted or invalid"
       .="BLANK: Blank";

   VALUE V13F (DEFAULT=70)

       840="840: United States";

   VALUE V16F (DEFAULT=70)

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
INFILE "[FILE SPECIFICATION]" LRECL=52;
INPUT
   IDCNTRY 1-3 IDSCHOOL 4-7 IDSTUD 8-15 ASXG03B 16 ASXG03BT $ 17-41 ASXG08A 42
   ASXG08B 43 ASXG08C 44 ASXG08D 45 ASXG09 46 ASXG10 47 ASXG11B 48 ASXG24 49
   ASXG25 50 ASXG26 51 MSRACE2 52;

* Assign variable labels;

LABEL
   IDCNTRY="*COUNTRY ID - NUMERIC ISO CODE*"
   IDSCHOOL="*SCHOOL ID*"
   IDSTUD="*STUDENT ID*"
   ASXG03B="NAT\LANGUAGE SPOKEN AT HOME"
   ASXG03BT="NAT\LANGUAGE SPOKEN AT HOME\OTHER"
   ASXG08A="NAT\ACTIVITIES OUTSIDE SCHOOL - SPORTS TEAM"
   ASXG08B="NAT\ACTIVITIES OUTSIDE SCHOOL - MUSICAL INSTRUMENT"
   ASXG08C="NAT\ACTIVITIES OUTSIDE SCHOOL - STUDYING IN CLASS"
   ASXG08D="NAT\ACTIVITIES OUTSIDE SCHOOL - CLUB"
   ASXG09="NAT\PARTICIPATED IN SCIENCE CLUB, FAIR, OR COMPETITION"
   ASXG10="NAT\REPEATED A GRADE IN ELEM SCHOOL"
   ASXG11B="NAT\DAYS ABSENT FROM SCHOOL"
   ASXG24="NAT\HOW HARD WAS TEST"
   ASXG25="NAT\HOW HARD DID YOU TRY ON TEST"
   ASXG26="NAT\HOW IMPORTANT TO DO WELL"
   MSRACE2="*NAT\DERIVED RACE-COLLAPSED*";

* Recode user-defined numeric missing data codes
to SAS sysmis code;

/*
IF ASXG03B=9 THEN ASXG03B=.;
IF ASXG08A=9 THEN ASXG08A=.;
IF ASXG08B=9 THEN ASXG08B=.;
IF ASXG08C=9 THEN ASXG08C=.;
IF ASXG08D=9 THEN ASXG08D=.;
IF ASXG09=9 THEN ASXG09=.;
IF ASXG10=9 THEN ASXG10=.;
IF ASXG11B=9 THEN ASXG11B=.;
IF ASXG24=9 THEN ASXG24=.;
IF ASXG25=9 THEN ASXG25=.;
IF ASXG26=9 THEN ASXG26=.;
IF MSRACE2=9 THEN MSRACE2=.;
*/

* Assign user-defined formats;

/*
FORMAT
   ASXG03B V1F. ASXG08A ASXG08B ASXG08C ASXG08D ASXG09 ASXG10 V3F. ASXG11B V9F.
   ASXG24 V10F. ASXG25 V11F. ASXG26 V12F. IDCNTRY V13F. MSRACE2 V16F.;
*/
RUN;
