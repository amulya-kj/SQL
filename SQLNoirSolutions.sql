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

--case 3 solution

select * from crime_scene where location = 'Coral Bay Marina' and date ='19860814';
select * from person where name like '%ul%' and name like '%ez';
select * from person where address like '%Ocean Drive';
select * from interviews where person_id in(101,102);

select * from hotel_checkins where check_in_date = 19860813 and hotel_name like '%Sunset%';

select surveillance_records.person_id, surveillance_records.suspicious_activity from hotel_checkins join surveillance_records on hotel_checkins.id = surveillance_records.hotel_checkin_id where check_in_date = 19860813 and hotel_name like '%Sunset%' and suspicious_activity IS NOT NULL

select confession from confessions where confessions.person_id = 8

--case 4 solution

select * from crime_scene where location = 'Fontainebleau Hotel';

select * from guest where occupation = 'Actor' or (occupation = 'Consultant' and name like '%an %');
select w.id, clue from witness_statements w join guest g on w.guest_id = g.id where g.occupation = 'Actor' or (g.occupation = 'Consultant' and g.name like '%an %');
select * from attire_registry a join marina_rentals m on m.renter_guest_id = a.guest_id join guest g on m.renter_guest_id = g.id where a.note = 'navy suit, white tie' and m.dock_number = 3 and invitation_code like '%r';
select * from marina_rentals where dock_number = 3;
select * from final_interviews where guest_id = 105;
select name from guest where id = 105;

--case 5 solution
