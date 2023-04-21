*------------------------------------------------------------------------------*
 |                                                                             |
 |        TIMSS 2019 Grade 8 - US Public Use [Mathematics Teacher] PSI         |
 |                                                                             |
 |                                                                             |
 |                      SPSS Data Definition Statements                        |
 |                                                                             |
 |                        Generated: 10AUG22:13:09:27                          |
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
   IDCNTRY 1-3 IDSCHOOL 4-7 IDTEALIN 8-15 BTXG01 16-19 BTXM17 20-21.

* Assign variable labels.

VARIABLE LABELS
   IDCNTRY "*COUNTRY ID - NUMERIC ISO CODE*"
   IDSCHOOL "*SCHOOL ID*"
   IDTEALIN "*TEACHER ID AND LINK*"
   BTXG01 "NAT\YEAR STARTED TEACHING"
   BTXM17 "NAT\MATH COURSE TEACHING TO TIMSS CLASS".

* Assign user-defined missing values.

MISSING VALUES
   BTXG01 (9999)
   BTXM17 (99).

* Assign Value Labels.

VALUE LABELS
    BTXG01
     9999 "Omitted or invalid"
   /BTXM17
     1 "Basic or general eighth-grade mathematics (not algebra or pre- algebra)"
     2 "Pre-algebra or introduction to algebra"
     3 "Two-year pre-algebra"
     4 "Algebra I (one-year course)"
     5 "Algebra I (first year of a two-year Algebra I course)"
     6 "Algebra I (second year of two-year Algebra I course)"
     7 "Geometry"
     8 "Algebra II"
     9 "Integrated or sequential math"
     10 "Other math class"
     99 "Omitted or invalid"
   /IDCNTRY
     840 "United States".
EXECUTE.
