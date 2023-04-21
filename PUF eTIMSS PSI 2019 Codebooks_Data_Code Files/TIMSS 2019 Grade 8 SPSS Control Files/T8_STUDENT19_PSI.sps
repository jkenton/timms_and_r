*------------------------------------------------------------------------------*
 |                                                                             |
 |              TIMSS 2019 Grade 8 - US Public Use [Student] PSI               |
 |                                                                             |
 |                                                                             |
 |                      SPSS Data Definition Statements                        |
 |                                                                             |
 |                        Generated: 10AUG22:14:44:04                          |
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

FILE HANDLE DATA / NAME="[FILE SPECIFICATION]" LRECL=55.
DATA LIST FILE=DATA /
   IDCNTRY 1-3 IDSCHOOL 4-7 IDSTUD 8-15 BSXG03B 16 BSXG03BT 17-41 (A) BSXG10A
   42 BSXG10B 43 BSXG10C 44 BSXG10D 45 BSXG11A 46 BSXG11B 47 BSXG11C 48
   BSXG12B 49 BSXG13A 50 BSXG13B 51 BSXG31 52 BSXG32 53 BSXG33 54 MSRACE2 55.

* Assign variable labels.

VARIABLE LABELS
   IDCNTRY "*COUNTRY ID - NUMERIC ISO CODE*"
   IDSCHOOL "*SCHOOL ID*"
   IDSTUD "*STUDENT ID*"
   BSXG03B "NAT\LANGUAGE SPOKEN AT HOME"
   BSXG03BT "NAT\LANGUAGE SPOKEN AT HOME\OTHER"
   BSXG10A "NAT\ACTIVITIES OUTSIDE SCHOOL - SPORTS TEAM"
   BSXG10B "NAT\ACTIVITIES OUTSIDE SCHOOL - MUSICAL INSTRUMENT"
   BSXG10C "NAT\ACTIVITIES OUTSIDE SCHOOL - STUDYING IN CLASS"
   BSXG10D "NAT\ACTIVITIES OUTSIDE SCHOOL - CLUB"
   BSXG11A "NAT\PARTICIPATED IN SCIENCE ACTIVITIES\SCIENCE FAIR"
   BSXG11B "NAT\PARTICIPATED IN SCIENCE ACTIVITIES\SCIENCE CLUB"
   BSXG11C "NAT\PARTICIPATED IN SCIENCE ACTIVITIES\SCIENCE COMPETITION"
   BSXG12B "NAT\DAYS ABSENT FROM SCHOOL"
   BSXG13A "NAT\REPEAT GRADE\ELEMENTARY"
   BSXG13B "NAT\REPEAT GRADE\MIDDLE OR JUNIOR HIGH SC"
   BSXG31 "NAT\HOW HARD WAS TEST"
   BSXG32 "NAT\HOW HARD DID YOU TRY ON TEST"
   BSXG33 "NAT\HOW IMPORTANT TO DO WELL"
   MSRACE2 "*NAT\DERIVED RACE-COLLAPSED*".

* Assign user-defined missing values.

MISSING VALUES
   BSXG03B (9)
   BSXG10A (9)
   BSXG10B (9)
   BSXG10C (9)
   BSXG10D (9)
   BSXG11A (9)
   BSXG11B (9)
   BSXG11C (9)
   BSXG12B (9)
   BSXG13A (9)
   BSXG13B (9)
   BSXG31 (9)
   BSXG32 (9)
   BSXG33 (9)
   MSRACE2 (9).

* Assign Value Labels.

VALUE LABELS
    BSXG03B
     1 "Spanish"
     2 "Other"
     9 "Omitted or invalid"
   /BSXG10A BSXG10B BSXG10C BSXG10D BSXG11A BSXG11B BSXG11C BSXG13A BSXG13B
     1 "Yes"
     2 "No"
     9 "Omitted or invalid"
   /BSXG12B
     1 "None"
     2 "1 or 2 days"
     3 "3 or 4 days"
     4 "5 to 10 days"
     5 "More than 10 days"
     9 "Omitted or invalid"
   /BSXG31
     1 "Easier than other tests"
     2 "About as hard as other tests"
     3 "Harder than other tests"
     4 "Much harder than other tests"
     9 "Omitted or invalid"
   /BSXG32
     1 "Not as hard as on other tests"
     2 "About as hard as on other tests"
     3 "Harder than on other tests"
     4 "Much harder than on other tests"
     9 "Omitted or invalid"
   /BSXG33
     1 "Not very important"
     2 "Somewhat important"
     3 "Important"
     4 "Very important"
     9 "Omitted or invalid"
   /IDCNTRY
     840 "United States"
   /MSRACE2
     1 "White"
     2 "Black"
     3 "Hispanic"
     4 "Asian"
     5 "Two or more races"
     6 "Other"
     9 "Omitted or invalid".
EXECUTE.
