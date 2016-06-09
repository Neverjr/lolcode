%option noyywrap c++ yylineno

%{
#include <iostream>
#include <fstream>

using namespace std;
%}

DIGIT   [0-9]+
VERSION HAI" "([0-9]+\.)+[0-9]+
HEXA	0x[a-f0-9]+
WS  [ \t\n\r]
STRING	\".*\"
ID [a-z]+[a-zA-Z0-9]*
NO_NEWLINE "!"
MULTILINE_COMMENT OBTW(.|\n)*?TLDR

%%
{MULTILINE_COMMENT} cout << "MULTILINE_COMMENT"<<endl;
{NO_NEWLINE} cout << "NO_NEWLINE" << endl;
{VERSION} cout << "VERSION" << endl;
{STRING} cout << "STRING" << endl;
DIFFRINT cout << "DIFFRINT" << endl;
{DIGIT} cout << "DIGIT" << endl;
VISIBLE cout << "VISIBLE" << endl;
PRODUKT cout << "PRODUKT" << endl;
KTHXBYE cout << "KTHXBYE" << endl;
BUKKIT cout << "BUKKIT" << endl;
SMOOSH cout << "SMOOSH" << endl;
OMGWTF cout << "OMGWTF" << endl;
ORLY\? cout << "ORLY\?" << endl;
NUMBAR cout << "NUMBAR" << endl;
GIMMEH cout << "GIMMEH" << endl;
{HEXA} cout << "HEXA" << endl;
NERFIN cout << "NERFIN" << endl;
SMALLR cout << "SMALLR" << endl;
BIGGR cout << "BIGGR" << endl;
NUMBR cout << "NUMBR" << endl;
OUTTA cout << "OUTTA" << endl;
TROOF cout << "TROOF" << endl;
UPPIN cout << "UPPIN" << endl;
WTF\? cout << "WTF\?" << endl;
MKAY cout << "MKAY" << endl;
FAIL cout << "FAIL" << endl;
":>" cout << ":>" << endl;
{ID} cout << "ID" << endl;
DIFF cout << "DIFF" << endl;
NOOB cout << "NOOB" << endl;
YARN cout << "YARN" << endl;
GTFO cout << "GTFO" << endl;
WILE cout << "WILE" << endl;
":)" cout << ":)" << endl;
LIEK cout << "LIEK" << endl;
BOTH cout << "BOTH" << endl;
SAEM cout << "SAEM" << endl;
MOD cout << "MOD" << endl;
SAY cout << "SAY" << endl;
HOW cout << "HOW" << endl;
NOW cout << "NOW" << endl;
SUM cout << "SUM" << endl;
TIL cout << "TIL" << endl;
WIN cout << "WIN" << endl;
CAN cout << "CAN" << endl;
ITZ cout << "ITZ" << endl;
OMG cout << "OMG" << endl;
OIC cout << "OIC" << endl;
WAI cout << "WAI" << endl;
HAS cout << "HAS" << endl;
RLY cout << "RLY" << endl;
":\\" cout << ":\\" << endl;
":O" cout << ":O" << endl;
OF cout << "OF" << endl;
IN cout << "IN" << endl;
IM cout << "IM" << endl;
NO cout << "NO" << endl;
IZ cout << "IZ" << endl;
IS cout << "IS" << endl;
YR cout << "YR" << endl;
SO cout << "SO" << endl;
YA cout << "YA" << endl;
BTW.* cout << "KOMMENT" << endl;
IF cout << "IF" << endl;
AN cout << "AN" << endl;
R cout << "R" << endl;
U cout << "U" << endl;
I cout << "I" << endl;
A cout << "A" << endl;
{WS}+       // feher szokozok: semmi teendo

.           {
                std::cerr << lineno() << ": Lexikalis hiba, vagy nem tamogatott funkcio: " << YYText() << std::endl;
                exit(1);
            }

%%
