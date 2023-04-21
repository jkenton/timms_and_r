*------------------------------------------------------------------------------*
|                                                                              |
|         TIMSS 2019 Grade 8 - US Public Use [Mathematics Teacher] PSI         |
|                                                                              |
|                                                                              |
|                        SAS Data Definition Statements                        |
|                                                                              |
|                         Generated: 10AUG22:13:09:20                          |
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

   VALUE V2F (DEFAULT=70)

       1="1: Basic or general eighth-grade mathematics (not algebra or pre- algebra)"
       2="2: Pre-algebra or introduction to algebra"
       3="3: Two-year pre-algebra"
       4="4: Algebra I (one-year course)"
       5="5: Algebra I (first year of a two-year Algebra I course)"
       6="6: Algebra I (second year of two-year Algebra I course)"
       7="7: Geometry"
       8="8: Algebra II"
       9="9: Integrated or sequential math"
       10="10: Other math class"
       99="99: Omitted or invalid"
       .="BLANK: Blank";

   VALUE V3F (DEFAULT=70)

       840="840: United States";
*/

* Read the data file;

DATA;
INFILE "[FILE SPECIFICATION]" LRECL=21;
INPUT
   IDCNTRY 1-3 IDSCHOOL 4-7 IDTEALIN 8-15 BTXG01 16-19 BTXM17 20-21;

* Assign variable labels;

LABEL
   IDCNTRY="*COUNTRY ID - NUMERIC ISO CODE*"
   IDSCHOOL="*SCHOOL ID*"
   IDTEALIN="*TEACHER ID AND LINK*"
   BTXG01="NAT\YEAR STARTED TEACHING"
   BTXM17="NAT\MATH COURSE TEACHING TO TIMSS CLASS";

* Recode user-defined numeric missing data codes
to SAS sysmis code;

/*
IF BTXG01=9999 THEN BTXG01=.;
IF BTXM17=99 THEN BTXM17=.;
*/

* Assign user-defined formats;

/*
FORMAT
   BTXG01 V1F. BTXM17 V2F. IDCNTRY V3F.;
*/
RUN;
