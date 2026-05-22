-- solution for case 1

-- In the description we have location
select * from crime_scene where location = 'Blue Note Lounge';
--from the resulting table we get to know that the suspect was having scar on left cheek
select * from suspects where attire = 'trench coat' and scar = 'left cheek';
select suspect_id,name,transcript from suspects s join interviews i on s.id = i.suspect_id where attire = 'trench coat' and scar = 'left cheek' 
  and transcript IS NOt NULL;
--suspect_id	name	transcript
--183	Vincent Malone	I wasn’t going to steal it, but I did.
the answer is Vincent Malone

-- solution for case 2

-- In the description we have location and date
select * from crime_scene where location ='West Hollywood Records' and date = '19830715'; 
select * from witnesses w join crime_scene c on w.crime_scene_id= c.id where location ='West Hollywood Records' and date = '19830715';

-- from the witness table we get that the suspect was having red bandana and was wearing a gold watch using those info we wl write the below query
select * from suspects where bandana_color = 'red' and accessory = 'gold watch';
select id, name,transcript from suspects s join interviews i on s.id = i.suspect_id where bandana_color = 'red' and accessory = 'gold watch' 
and transcript is not null;
--id	name	transcript
--35	Tony Ramirez	I wasn't anywhere near West Hollywood Records that night.
--44	Mickey Rivera	I was busy with my music career; I have nothing to do with this theft.
--97	Rico Delgado	I couldn't help it. I snapped and took the record.

--so the answer is Rico Delgado
