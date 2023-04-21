*------------------------------------------------------------------------------*
 |                                                                             |
 |          TIMSS 2019 Grade 8 - US Public Use [Science Teacher] PSI           |
 |                                                                             |
 |                                                                             |
 |                      SPSS Data Definition Statements                        |
 |                                                                             |
 |                        Generated: 10AUG22:13:15:50                          |
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

FILE HANDLE DATA / NAME="[FILE SPECIFICATION]" LRECL=21.
DATA LIST FILE=DATA /
   IDCNTRY 1-3 IDSCHOOL 4-7 IDTEALIN 8-15 BTXG01 16-19 BTXS17 20-21.

* Assign variable labels.

VARIABLE LABELS
   IDCNTRY "*COUNTRY ID - NUMERIC ISO CODE*"
   IDSCHOOL "*SCHOOL ID*"
   IDTEALIN "*TEACHER ID AND LINK*"
   BTXG01 "NAT\YEAR STARTED TEACHING"
   BTXS17 "NAT\SCIENCE COURSE TEACHING TO TIMSS CLASS".

* Assign user-defined missing values.

MISSING VALUES
   BTXG01 (9999)
   BTXS17 (99).

* Assign Value Labels.

VALUE LABELS
    BTXG01
     9999 "Omitted or invalid"
   /BTXS17
     1 "General science (several content areas of science taught separately)"
     2 "Integrated science (several content areas of science combined and taught together throughout the year)"
     3 "Life science (e.g., biology, ecosystems, human health)"
     4 "Physical science (e.g., physics or chemistry)"
     5 "Earth science (e.g., geology, Earth and the solar system, fossils)"
     99 "Omitted or invalid"
   /IDCNTRY
     840 "United States".
EXECUTE.
