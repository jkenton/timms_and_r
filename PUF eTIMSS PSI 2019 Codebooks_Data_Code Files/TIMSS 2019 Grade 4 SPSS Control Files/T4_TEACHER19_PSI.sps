*------------------------------------------------------------------------------*
 |                                                                             |
 |                TIMSS 2019 Grade 4 - US Public Use [Teacher] PSI             |
 |                                                                             |
 |                                                                             |
 |                      SPSS Data Definition Statements                        |
 |                                                                             |
 |                        Generated: 12AUG22:09:45:57                          |
 |                                                                             |
 | The FILE HANDLE statement specifies the name of the data file to read       |
 |                                                                             |
 | The DATA LIST statement specifies the name, type, decimal specification,    |
 | and location for each variable in the data file                             |
 |                                                                             |
 | The VARIABLE LABELS statement assigns variable labels                       |
 |                                                                             |
 | The MISSING VALUES statement assigns user-defined missing values            |
 |                                                                             |
 | The VALUE LABELS statement assigns value labels                             |
 |                                                                             |
*------------------------------------------------------------------------------.

* Read the data file.

FILE HANDLE DATA / NAME="[FILE SPECIFICATION]" LRECL=19.
DATA LIST FILE=DATA /
   IDCNTRY 1-3 IDSCHOOL 4-7 IDTEALIN 8-15 ATXG01 16-19.

* Assign variable labels.

VARIABLE LABELS
   IDCNTRY "*COUNTRY ID - NUMERIC ISO CODE*"
   IDSCHOOL "*SCHOOL ID*"
   IDTEALIN "*TEACHER ID AND LINK*"
   ATXG01 "NAT\YEAR STARTED TEACHING".

* Assign user-defined missing values.

MISSING VALUES
   ATXG01 (9999).

* Assign Value Labels.

VALUE LABELS
    ATXG01
     9999 "Omitted or invalid"
   /IDCNTRY
     840 "United States".
EXECUTE.
