common_genre(X, Y,G1):- genre(X, G1), genre(Y, G1), X \= Y.
at_least_one_common_genre(X,Y) :- common_genre(X,Y,G).
at_least_two_common_genres(X,Y) :- common_genre(X,Y,G1) , common_genre(X,Y,G2) , G1 \= G2.
at_least_three_common_genres(X,Y) :- common_genre(X,Y,G1) , common_genre(X,Y,G2) , common_genre(X,Y,G3), G1 \= G2 , G1 \= G3 , G1 \= G2.
at_least_four_common_genres(X,Y) :- common_genre(X,Y,G1) , common_genre(X,Y,G2) ,common_genre(X,Y,G3),common_genre(X,Y,G4), G1 \= G2 , G1 \= G3 , G1 \= G2 , G1 \= G4 , G2\= G4 , G3 \= G4.
common_director(X,Y) :- director(X,D) , director(Y,D) , X\=Y.
common_keyword(X,Y,K) :- plot_keyword(X,K) , plot_keyword(Y,K) , x \= Y.
at_least_one_common_keyword(X, Y) :- common_keyword(X, Y, K1).
at_least_two_common_keywords(X, Y) :- common_keyword(X, Y, K1) , common_keyword(X,Y,K2) , K1 \= K2.
at_least_three_common_keywords(X, Y) :- common_keyword(X, Y, K1) , common_keyword(X,Y,K2) ,common_keyword(X,Y,K3), K1 \= K2 , Ki \= K3 , K2 \= K3.
at_least_four_common_keywords(X, Y) :- common_keyword(X, Y, K1) , common_keyword(X,Y,K2) ,common_keyword(X,Y,K3), common_keyword(X,Y,K4), K1 \= K2 , K1 \= K3 , K2 \= K3 , K1 \= K4 , K2 \= K4 , K3 \= K4.
common_actor(X, Y, A) :- (actor_1(X, A), actor_1(Y, A), X \= Y) ; (actor_1(X, A), actor_2(Y, A), X \= Y) ; (actor_1(X, A), actor_3(Y, A), X \= Y) ; (actor_2(X, A), actor_2(Y, A), X \= Y) ; (actor_2(X, A), actor_3(Y, A), X \= Y) ; (actor_3(X, A), actor_3(Y, A), X \= Y).
at_least_one_common_actor(X, Y) :- common_actor(X, Y, A1).
at_least_two_common_actors(X, Y) :- common_actor(X, Y, A1), common_actor(X, Y, A2), A1 \= A2.
three_common_actors(X, Y) :- common_actor(X, Y, A1), common_actor(X, Y, A2), common_actor(X, Y, A3), A1 \= A2, A1 \= A3, A2 \= A3.
common_language(X,Y) :- language(X,L) , language(Y,L) ,X \= Y.
is_black_and_white(X) :- plot_keyword(X,"black and white").
common_production_company(X, Y, C):- production_company(X, C), production_company(Y, C), X \= Y.
at_least_one_common_studio(X, Y):- common_production_company(X, Y, C).
at_least_two_common_studios(X,Y):- common_production_company(X,Y,C1) , common_production_company(X,Y,C2) , C1 \= C2.
common_country(X,Y) :- country(X,C) , country(Y,C) , X \= Y.
common_decade(X,Y):-decade(X,D) , decade(Y,D) , X \= Y.
find_sim_1(X,Y) :- at_least_one_common_genre(X,Y).
find_sim_2(X,Y) :- at_least_two_common_genres(X,Y) , common_language(X,Y).
find_sim_3(X,Y) :- at_least_three_common_genres(X,Y) , common_language(X,Y).
find_sim_4(X,Y) :- at_least_three_common_genres(X,Y) , common_language(X,Y) , common_director(X,Y) , at_least_two_common_keywords(X,Y).
find_sim_5(X,Y) :- find_sim_4(X,Y) , at_least_one_common_actor(X,Y) , at_least_one_common_studio(X,Y). 