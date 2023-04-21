* Encoding: windows-1252.
*------------------------------------------------------------------------------*
 |                                                                             |
 |               TIMSS 2019 Grade 4 - US Public Use [Student] PSI               |
 |                                                                             |
 |                                                                             |
 |                      SPSS Data Definition Statements                        |
 |                                                                             |
 |                        Generated: 10AUG22:11:15:58                          |
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

FILE HANDLE DATA / NAME="[FILE SPECIFICATION]" LRECL=52.
DATA LIST FILE=DATA /
   IDCNTRY 1-3 IDSCHOOL 4-7 IDSTUD 8-15 ASXG03B 16 ASXG03BT 17-41 (A) ASXG08A
   42 ASXG08B 43 ASXG08C 44 ASXG08D 45 ASXG09 46 ASXG10 47 ASXG11B 48 ASXG24
   49 ASXG25 50 ASXG26 51 MSRACE2 52.

* Assign variable labels.

VARIABLE LABELS
   IDCNTRY "*COUNTRY ID - NUMERIC ISO CODE*"
   IDSCHOOL "*SCHOOL ID*"
   IDSTUD "*STUDENT ID*"
   ASXG03B "NAT\LANGUAGE SPOKEN AT HOME"
   ASXG03BT "NAT\LANGUAGE SPOKEN AT HOME\OTHER"
   ASXG08A "NAT\ACTIVITIES OUTSIDE SCHOOL - SPORTS TEAM"
   ASXG08B "NAT\ACTIVITIES OUTSIDE SCHOOL - MUSICAL INSTRUMENT"
   ASXG08C "NAT\ACTIVITIES OUTSIDE SCHOOL - STUDYING IN CLASS"
   ASXG08D "NAT\ACTIVITIES OUTSIDE SCHOOL - CLUB"
   ASXG09 "NAT\PARTICIPATED IN SCIENCE CLUB, FAIR, OR COMPETITION"
   ASXG10 "NAT\REPEATED A GRADE IN ELEM SCHOOL"
   ASXG11B "NAT\DAYS ABSENT FROM SCHOOL"
   ASXG24 "NAT\HOW HARD WAS TEST"
   ASXG25 "NAT\HOW HARD DID YOU TRY ON TEST"
   ASXG26 "NAT\HOW IMPORTANT TO DO WELL"
   MSRACE2 "*NAT\DERIVED RACE-COLLAPSED*".

* Assign user-defined missing values.

MISSING VALUES
   ASXG03B (9)
   ASXG08A (9)
   ASXG08B (9)
   ASXG08C (9)
   ASXG08D (9)
   ASXG09 (9)
   ASXG10 (9)
   ASXG11B (9)
   ASXG24 (9)
   ASXG25 (9)
   ASXG26 (9)
   MSRACE2 (9).

* Assign Value Labels.

VALUE LABELS
    ASXG03B
     1 "Spanish"
     2 "Other"
     9 "Omitted or invalid"
   /ASXG08A ASXG08B ASXG08C ASXG08D ASXG09 ASXG10
     1 "Yes"
     2 "No"
     9 "Omitted or invalid"
   /ASXG11B
     1 "None"
     2 "1 or 2 days"
     3 "3 or 4 days"
     4 "5 to 10 days"
     5 "More than 10 days"
     9 "Omitted or invalid"
   /ASXG24
     1 "Easier than other tests"
     2 "About as hard as other tests"
     3 "Harder than other tests"
     4 "Much harder than other tests"
     9 "Omitted or invalid"
   /ASXG25
     1 "Not as hard as on other tests"
     2 "About as hard as on other tests"
     3 "Harder than on other tests"
     4 "Much harder than on other tests"
     9 "Omitted or invalid"
   /ASXG26
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
