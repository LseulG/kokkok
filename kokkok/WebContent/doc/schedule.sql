insert into schedule (sseq, startdate, enddate, originpicture, savefolder, savepicture, persons, thema)
values(1, '2019-01-01', '2019-01-10', 'destination-1.jpg', 'resources/images', 'destination-1.jpg', '3~5명', '가족 여행');
insert into schedule (sseq, startdate, enddate, originpicture, savefolder, savepicture, persons, thema)
values(2, '2019-01-04', '2019-01-10', 'destination-2.jpg', 'resources/images', 'destination-2.jpg', '1명', '나홀로 여행');
insert into schedule (sseq, startdate, enddate, originpicture, savefolder, savepicture, persons, thema)
values(3, '2019-02-01', '2019-02-10', 'destination-3.jpg', 'resources/images', 'destination-3.jpg', '2명', '커플 여행');
insert into schedule (sseq, startdate, enddate, originpicture, savefolder, savepicture, persons, thema)
values(4, '2019-02-01', '2019-02-10', 'destination-4.jpg', 'resources/images', 'destination-4.jpg', '3~5명', '가족 여행');
insert into schedule (sseq, startdate, enddate, originpicture, savefolder, savepicture, persons, thema)
values(5, '2019-03-01', '2019-03-10', 'destination-5.jpg', 'resources/images', 'destination-5.jpg', '1명', '나홀로 여행');
insert into schedule (sseq, startdate, enddate, originpicture, savefolder, savepicture, persons, thema)
values(6, '2019-03-01', '2019-03-10', 'destination-6.jpg', 'resources/images', 'destination-6.jpg', '단체', '단체 여행');

commit;


select sseq, startdate, enddate, enddate - startdate + 1 as period, originpicture, savefolder, savepicture, persons, thema
from schedule
order by sseq desc;

select b.*
from (select rownum rn, a.*
from (select sseq, startdate, enddate, enddate - startdate + 1 as period, originpicture, savefolder, savepicture, persons, thema
from schedule
order by sseq desc) a
where rownum <= 6) b
where b.rn >= 5
