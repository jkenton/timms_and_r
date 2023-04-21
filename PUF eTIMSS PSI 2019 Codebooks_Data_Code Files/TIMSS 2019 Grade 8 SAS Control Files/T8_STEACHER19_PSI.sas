*------------------------------------------------------------------------------*
|                                                                              |
|           TIMSS 2019 Grade 8 - US Public Use [Science Teacher] PSI           |
|                                                                              |
|                                                                              |
|                        SAS Data Definition Statements                        |
|                                                                              |
|                         Generated: 10AUG22:13:15:43                          |
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

       9999="9999: Omitted or invalid"
       .="BLANK: Blank";

   VALUE V2F (DEFAULT=105)

       1="1: General science (several content areas of science taught separately)"
       2="2: Integrated science (several content areas of science combined and taught together throughout the year)"
       3="3: Life science (e.g., biology, ecosystems, human health)"
       4="4: Physical science (e.g., physics or chemistry)"
       5="5: Earth science (e.g., geology, Earth and the solar system, fossils)"
       99="99: Omitted or invalid"
       .="BLANK: Blank";

   VALUE V3F (DEFAULT=70)

       840="840: United States";
*/

* Read the data file;

DATA;
INFILE "[FILE SPECIFICATION]" LRECL=21;
INPUT
   IDCNTRY 1-3 IDSCHOOL 4-7 IDTEALIN 8-15 BTXG01 16-19 BTXS17 20-21;

* Assign variable labels;

LABEL
   IDCNTRY="*COUNTRY ID - NUMERIC ISO CODE*"
   IDSCHOOL="*SCHOOL ID*"
   IDTEALIN="*TEACHER ID AND LINK*"
   BTXG01="NAT\YEAR STARTED TEACHING"
   BTXS17="NAT\SCIENCE COURSE TEACHING TO TIMSS CLASS";

* Recode user-defined numeric missing data codes
to SAS sysmis code;

/*
IF BTXG01=9999 THEN BTXG01=.;
IF BTXS17=99 THEN BTXS17=.;
*/

* Assign user-defined formats;

/*
FORMAT
   BTXG01 V1F. BTXS17 V2F. IDCNTRY V3F.;
*/
RUN;
