%1

% event(X, Y, Z), где 
%     X - название государства, где произошло событие,
%     Y - в каком веке произошло событие,
%     Z - само событие

event('Universum',  31, 'Appearance of the first states').
event('Egypt',      30, 'Formation of a single state').
event('India',      27, 'Appearance of the first ancient towns').
event('Egypt',      27, 'The pyramif of Cheops was built').
event('Greece',     18, 'Appearance of the first states').
event('Egypt',      18, 'The uprising of the poor and slaves').
event('China',      15, 'Appearance of the first states').
event('Egypt',      15, 'The reign og Tutmosis the Third').
event('Greece',     13, 'The Trojan War').
event('Greece',     11, 'Invasion of the Dorian tribes').
event('Roman',      8,  'Appearance of the first states').
event('Greece',     8,  'First olympic Games').
event('Roman',      6,  'Establishment of the republic').
event('Greece',     6,  'Solons reforms').
event('Babylonia',  6,  'State capture of Babylon by the Persians').
event('Egypt',      6,  'The conquest of egypt by the Persians').

% все события по стране
% event('Egypt', YEAR, EVENT).

eventsFromTo(FROM, TO) :- event(PLACE, YEAR, EVENT), YEAR >= FROM.
