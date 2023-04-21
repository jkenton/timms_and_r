*------------------------------------------------------------------------------*
 |                                                                             |
 |                 TIMSS 2019 Grade 4 - US Public Use [School] PSI             |
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
   IDCNTRY 1-3 IDSCHOOL 4-7 ACXG06 8-9 ACXG07 10-12 ACXG09 13 ACXG21A 14
   ACXG21B 15 ACXG21C 16 ACXG21D 17 PCTFRPL 18 PUBPRIV 19.

* Assign variable labels.

VARIABLE LABELS
   IDCNTRY "*COUNTRY ID - NUMERIC ISO CODE*"
   IDSCHOOL "*SCHOOL ID*"
   ACXG06 "NAT\PERCENT ENROLLED LEP/ELL"
   ACXG07 "NAT\TYPE OF SCHOOL"
   ACXG09 "NAT\AVG INCOME LEVEL SCH IMMEDIATE AREA"
   ACXG21A "NAT\TEACHER EVAL\OBSERV BY PRIN OR SNR STAFF"
   ACXG21B "NAT\TEACHER EVAL\OBSERV BY EXTERNAL PERSONS"
   ACXG21C "NAT\TEACHER EVAL\STUDENT ACHIEVE"
   ACXG21D "NAT\TEACHER EVAL\TEACHER PEER REVIEW"
   PCTFRPL "*NAT\PERCENT STUD FREE REDUCE LUNCH-CATEGORIZED*"
   PUBPRIV "*NAT\PUBLIC PRIVATE SCHOOL INDICATOR*".

* Assign user-defined missing values.

MISSING VALUES
   ACXG06 (99)
   ACXG07 (99)
   ACXG09 (9)
   ACXG21A (9)
   ACXG21B (9)
   ACXG21C (9)
   ACXG21D (9)
   PCTFRPL (9)
   PUBPRIV (9).

* Assign Value Labels.

VALUE LABELS
    ACXG06
     1 "0%"
     2 "1-5%"
     3 "6-10%"
     4 "11-25%"
     5 "26-50%"
     6 "51-75%"
     7 "76-90%"
     8 "Over 90%"
     99 "Omitted or invalid"
   /ACXG07
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
   /ACXG09
     1 "High"
     2 "Medium"
     3 "Low"
     9 "Omitted or invalid"
   /ACXG21A ACXG21B ACXG21C ACXG21D
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
