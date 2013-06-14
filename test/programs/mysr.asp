says(andy,murderer(andy),0).
says(andy,hated(cole,vinny),1).
says(andy,friends(ben,vinny),1).
says(ben,out_of_town(ben),1).
says(ben,know(ben,vinny),0).
says(cole,innocent(cole),1).
says(cole,together(andy,vinny),1).
says(cole,together(ben,vinny),1).
holds(S_G):-says(P_G,S_G,1),not  holds(murderer(P_G)),person(P_G),statement(S_G),statement(murderer(P_G)).
-holds(S_G):-says(P_G,S_G,0),not  holds(murderer(P_G)),statement(S_G),person(P_G),statement(murderer(P_G)).
holds(murderer(andy))|holds(murderer(ben))|holds(murderer(cole)).
holds(together(A_G,B_G)):-holds(together(B_G,A_G)),statement(together(A_G,B_G)),statement(together(B_G,A_G)).
holds(together(A_G,B_G)):-holds(together(A_G,C_G)),holds(together(C_G,B_G)),statement(together(C_G,B_G)),statement(together(A_G,C_G)),statement(together(A_G,B_G)).
holds(friends(A_G,B_G)):-holds(friends(B_G,A_G)),statement(friends(B_G,A_G)),statement(friends(A_G,B_G)).
:-holds(innocent(P_G)),holds(murderer(P_G)),statement(innocent(P_G)),statement(murderer(P_G)).
:-holds(out_of_town(A_G)),holds(together(A_G,B_G)),statement(out_of_town(A_G)),statement(together(A_G,B_G)).
:--holds(know(A_G,B_G)),holds(friends(A_G,B_G)),statement(friends(A_G,B_G)),statement(know(A_G,B_G)).
:-holds(murderer(P_G)),holds(out_of_town(P_G)),statement(murderer(P_G)),statement(out_of_town(P_G)).
murderer(P_G):-holds(murderer(P_G)),person(P_G),statement(murderer(P_G)).
person(cole).
person(vinny).
person(ben).
person(andy).
statement(murderer(cole)).
statement(friends(andy,cole)).
statement(murderer(vinny)).
statement(together(cole,cole)).
statement(hated(vinny,vinny)).
statement(out_of_town(ben)).
statement(know(ben,cole)).
statement(outoftown(ben)).
statement(know(cole,ben)).
statement(friends(ben,ben)).
statement(hated(ben,ben)).
statement(innocent(vinny)).
statement(out_of_town(vinny)).
statement(together(cole,ben)).
statement(innocent(ben)).
statement(hated(cole,andy)).
statement(innocent(andy)).
statement(know(vinny,cole)).
statement(hated(andy,cole)).
statement(together(ben,cole)).
statement(know(vinny,andy)).
statement(hated(vinny,andy)).
statement(hated(vinny,ben)).
statement(outoftown(vinny)).
statement(together(andy,cole)).
statement(together(vinny,andy)).
statement(together(vinny,vinny)).
statement(together(cole,andy)).
statement(friends(ben,andy)).
statement(know(ben,vinny)).
statement(out_of_town(andy)).
statement(friends(ben,vinny)).
statement(together(ben,andy)).
statement(together(cole,vinny)).
statement(hated(cole,cole)).
statement(know(cole,andy)).
statement(hated(ben,vinny)).
statement(friends(vinny,andy)).
statement(together(andy,ben)).
statement(hated(andy,ben)).
statement(hated(cole,ben)).
statement(friends(ben,cole)).
statement(friends(cole,cole)).
statement(know(andy,ben)).
statement(hated(vinny,cole)).
statement(together(ben,vinny)).
statement(know(ben,ben)).
statement(know(vinny,ben)).
statement(know(vinny,vinny)).
statement(know(andy,vinny)).
statement(together(andy,andy)).
statement(hated(ben,cole)).
statement(friends(vinny,vinny)).
statement(out_of_town(cole)).
statement(hated(andy,andy)).
statement(friends(cole,andy)).
statement(hated(ben,andy)).
statement(know(cole,vinny)).
statement(together(vinny,cole)).
statement(together(ben,ben)).
statement(friends(vinny,ben)).
statement(hated(andy,vinny)).
statement(friends(andy,ben)).
statement(friends(cole,ben)).
statement(outoftown(cole)).
statement(friends(cole,vinny)).
statement(murderer(andy)).
statement(together(vinny,ben)).
statement(friends(vinny,cole)).
statement(innocent(cole)).
statement(know(andy,andy)).
statement(hated(cole,vinny)).
statement(together(andy,vinny)).
statement(know(andy,cole)).
statement(know(ben,andy)).
statement(friends(andy,andy)).
statement(murderer(ben)).
statement(outoftown(andy)).
statement(know(cole,cole)).
statement(friends(andy,vinny)).