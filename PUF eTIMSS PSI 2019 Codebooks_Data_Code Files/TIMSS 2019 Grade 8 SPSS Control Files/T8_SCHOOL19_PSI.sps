*------------------------------------------------------------------------------*
 |                                                                             |
 |                 TIMSS 2019 Grade 8 - US Public Use [School] PSI             |
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

FILE HANDLE DATA / NAME="[FILE SPECIFICATION]" LRECL=22.
DATA LIST FILE=DATA /
   IDCNTRY 1-3 IDSCHOOL 4-7 BCXG06 8-9 BCXG07 10-11 BCXG09 12 BCXG22A 13
   BCXG22B 14 BCXG22C 15 BCXG22D 16 BCXG23A 17 BCXG23B 18 BCXG23C 19 BCXG23D
   20 PCTFRPL 21 PUBPRIV 22.

* Assign variable labels.

VARIABLE LABELS
   IDCNTRY "*COUNTRY ID - NUMERIC ISO CODE*"
   IDSCHOOL "*SCHOOL ID*"
   BCXG06 "NAT\PERCENT ENROLLED LEP/ELL"
   BCXG07 "NAT\TYPE OF SCHOOL"
   BCXG09 "NAT\AVG INCOME LEVEL SCH IMMEDIATE AREA"
   BCXG22A "NAT\TEACHER EVAL\MATH\OBSERV BY PRIN OR SNR STAFF"
   BCXG22B "NAT\TEACHER EVAL\MATH\OBSERV BY EXTERNAL PERSONS"
   BCXG22C "NAT\TEACHER EVAL\MATH\STUDENT ACHIEVE"
   BCXG22D "NAT\TEACHER EVAL\MATH\TEACHER PEER REVIEW"
   BCXG23A "NAT\TEACHER EVAL\SCIENCE\OBSERV BY PRIN OR SNR STAFF"
   BCXG23B "NAT\TEACHER EVAL\SCIENCE\OBSERV BY EXTERNAL PERSONS"
   BCXG23C "NAT\TEACHER EVAL\SCIENCE\STUDENT ACHIEVE"
   BCXG23D "NAT\TEACHER EVAL\SCIENCE\TEACHER PEER REVIEW"
   PCTFRPL "*NAT\PERCENT STUD FREE REDUCE LUNCH-CATEGORIZED*"
   PUBPRIV "*NAT\PUBLIC PRIVATE SCHOOL INDICATOR*".

* Assign user-defined missing values.

MISSING VALUES
   BCXG06 (99)
   BCXG07 (99)
   BCXG09 (9)
   BCXG22A (9)
   BCXG22B (9)
   BCXG22C (9)
   BCXG22D (9)
   BCXG23A (9)
   BCXG23B (9)
   BCXG23C (9)
   BCXG23D (9)
   PCTFRPL (9)
   PUBPRIV (9).

* Assign Value Labels.

VALUE LABELS
    BCXG06
     1 "0%"
     2 "1-5%"
     3 "6-10%"
     4 "11-25%"
     5 "26-50%"
     6 "51-75%"
     7 "76-90%"
     8 "Over 90%"
     99 "Omitted or invalid"
   /BCXG07
     1 "Regular public school"
     2 "A regular public school with a magnet program"
     3 "A magnet school or school with a special program emphasis"
     4 "Special education"
     5 "Alternative"
     6 "Vocational"
     7 "Charter school"
     8 "Private (independent)"
     9 "Private (religiously affiliated)"
     10 "Other"
     99 "Omitted or invalid"
   /BCXG09
     1 "High"
     2 "Medium"
     3 "Low"
     9 "Omitted or invalid"
   /BCXG22A BCXG22B BCXG22C BCXG22D BCXG23A BCXG23B BCXG23C BCXG23D
     1 "Yes"
     2 "No"
     9 "Omitted or invalid"
   /IDCNTRY
     840 "United States"
   /PCTFRPL
     1 "Less than 10 percent"
     2 "10 to 24.9 percent"
     3 "25 to 49.9 percent"
     4 "50 to 74.9 percent"
     5 "75 percent or more"
     9 "Omitted or invalid"
   /PUBPRIV
     1 "Public"
     2 "Private"
     9 "Omitted or invalid".
EXECUTE.
