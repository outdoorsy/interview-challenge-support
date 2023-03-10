CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    first_name text,
    last_name text
);

CREATE TABLE IF NOT EXISTS rentals (
    id SERIAL PRIMARY KEY,
    user_id integer,
    name text,
    type text,
    description text,
    sleeps integer,
    price_per_day bigint,
    weekly_discount_pct numeric(5,3),
    home_city text,
    home_state text,
    home_zip text,
    home_country text,
    vehicle_make text,
    vehicle_model text,
    vehicle_year integer,
    vehicle_length numeric(4,2),
    created timestamp with time zone,
    updated timestamp with time zone,
    lat double precision,
    lng double precision,
    primary_image_url text,
    deleted_at timestamp with time zone
);

INSERT INTO "users"("id", "first_name", "last_name")
VALUES
    (1, 'John', 'Smith'),
    (2, 'Jane', 'Doe'),
    (3, 'Barry', 'Martin'),
    (4, 'Todd', 'Edison'),
    (5, 'Ben', 'Reynard')
;

INSERT INTO "rentals"("user_id", "name","type","description","sleeps","price_per_day","weekly_discount_pct","home_city","home_state","home_zip","home_country","vehicle_make","vehicle_model","vehicle_year","vehicle_length","created","updated","lat","lng","primary_image_url")
VALUES
(1, 'Abaco VW Bay Window: Westfalia Pop-top','camper-van','ultrices consectetur torquent posuere phasellus urna faucibus convallis fusce sem felis malesuada luctus diam hendrerit fermentum ante nisl potenti nam laoreet netus est erat mi',4,16900,0,'Costa Mesa','CA','92627','US','Volkswagen','Bay Window',1978,15,'2021-11-29 22:42:06.478595+00','2021-11-29 22:42:06.478595+00',33.64,-117.93,'https://res.cloudinary.com/outdoorsy/image/upload/v1528586451/p/rentals/4447/images/yd7txtw4hnkjvklg8edg.jpg'),
(2, 'Maupin: Vanagon Camper','camper-van','fermentum nullam congue arcu sollicitudin lacus suspendisse nibh semper cursus sapien quis feugiat maecenas nec turpis viverra gravida risus phasellus tortor cras gravida varius scelerisque',4,15000,0,'Portland','OR','97202','US','Volkswagen','Vanagon Camper',1989,15,'2021-11-29 22:42:06.478595+00','2021-11-29 22:42:06.478595+00',45.51,-122.68,'https://res.cloudinary.com/outdoorsy/image/upload/v1498568017/p/rentals/11368/images/gmtye6p2eq61v0g7f7e7.jpg'),
(3, '1984 Volkswagen Westfalia','camper-van','urna iaculis sed ut porttitor mollis ante cubilia ad felis duis varius mollis nascetur metus faucibus ligula ultricies in faucibus morbi imperdiet auctor morbi torquent',4,18000,0,'San Diego','CA','92037','US','Volkswagen','Westfalia',1984,16,'2021-11-29 22:42:06.478595+00','2021-11-29 22:42:06.478595+00',32.83,-117.28,'https://res.cloudinary.com/outdoorsy/image/upload/v1504395813/p/rentals/21399/images/nxtwdubpapgpmuc65pd1.jpg'),
(4, 'Sm. #1 (Sleeps 2) - Check Dates for Price','camper-van','aliquet sit placerat libero viverra hendrerit ridiculus etiam pulvinar faucibus tempor magnis litora neque varius volutpat mollis class laoreet quisque montes cubilia leo aliquet litora',2,8900,0,'Salt Lake City','UT','84104','US','Ford','Transit 350',2016,19,'2021-11-29 22:42:06.478595+00','2021-11-29 22:42:06.478595+00',40.73,-111.92,'https://res.cloudinary.com/outdoorsy/image/upload/v1508688886/p/rentals/25403/images/jkqxknddnuq6fvmyatke.jpg'),
(5, 'Stardust2005Mercedes-BenzSprinter','camper-van','pretium sit in quis semper ligula sed sagittis molestie et vehicula cursus ullamcorper est euismod diam massa sem cum lorem cursus euismod vivamus urna leo',4,8000,0,'San Diego','CA','92109','US','Mercedes-Benz','Sprinter',2005,20,'2021-11-29 22:42:06.478595+00','2021-11-29 22:42:06.478595+00',32.8,-117.24,'https://res.cloudinary.com/outdoorsy/image/upload/v1521261348/p/rentals/40129/images/wn0tx6meifqtrnwjmeoq.jpg'),
(1, '2003 Winnebago Eurovan Camper Eurovan Camper','camper-van','eros tellus quisque tellus parturient elit varius maecenas justo aliquet metus neque sociis interdum commodo curae class leo massa cursus auctor nisl ante semper habitant',4,13000,0,'Costa Mesa','CA','92627','US','Winnebago Eurovan Camper','Eurovan Camper',2003,17,'2021-11-29 22:42:06.478595+00','2021-11-29 22:42:06.478595+00',33.63,-117.92,'https://res.cloudinary.com/outdoorsy/image/upload/v1523649590/p/rentals/46190/images/elinlzv6fpnrktik4wqh.jpg'),
(2, '2002 Volkswagen Eurovan Weekender Westfalia','camper-van','purus neque pellentesque potenti posuere molestie vivamus urna faucibus class justo porta litora turpis cubilia sit class torquent ullamcorper netus ut sapien libero consequat quisque',4,15000,0,'Rancho Mission Viejo','CA','','US','VW','Eurovan Weekender Westfalia',2002,0,'2021-11-29 22:42:06.478595+00','2021-11-29 22:42:06.478595+00',33.53,-117.63,'https://res.cloudinary.com/outdoorsy/image/upload/v1526614056/p/rentals/52210/images/nou2lx0h0dsjzbqeotuf.jpg'),
(3, '2017 Transit Adventure Van','camper-van','commodo congue platea magnis montes feugiat lorem metus nullam ante convallis nulla dolor mauris praesent mus ante varius per hac sed metus auctor ultricies diam',2,16500,0,'Sacramento','CA','95811','US','Ford','Sacramento',2017,20,'2021-11-29 22:42:06.478595+00','2021-11-29 22:42:06.478595+00',38.57,-121.49,'https://res.cloudinary.com/outdoorsy/image/upload/v1562023338/p/rentals/119031/images/wchguimw6h3u9oonba9b.jpg'),
(4, 'Maui "Alani" camping car SUBARU IMPREZA 4WD  -Cold AC.','camper-van','fermentum torquent hac id tortor conubia litora proin sociosqu congue elit ridiculus fames velit viverra faucibus eleifend sagittis etiam aptent sociosqu taciti metus iaculis quam',2,5900,0,'Kahului','HI','96732','US','SUBARU IMPREZA 4WD','SUBARU IMPREZA 4WD',2003,13,'2021-11-29 22:42:06.478595+00','2021-11-29 22:42:06.478595+00',20.88,-156.45,'https://res.cloudinary.com/outdoorsy/image/upload/v1538027810/p/rentals/82458/images/bphrohl2r4wxc8wg3v11.jpg'),
(5, 'Betty!    1987 Volkswagen Westfalia Poptop Manual with kitchen!','camper-van','mollis curabitur cum convallis sagittis feugiat lectus ligula porta libero parturient maecenas cum facilisis ridiculus mauris ut est scelerisque tincidunt quisque hac lectus mus dapibus',4,25000,0,'Missoula ','MT','59808','US','Volkswagen','Westfalia',1987,15,'2021-11-29 22:42:06.478595+00','2021-11-29 22:42:06.478595+00',46.92,-114.09,'https://res.cloudinary.com/outdoorsy/image/upload/v1535836865/p/rentals/91133/images/blijuwlisflua72ay1p2.jpg'),
(1, 'Daisy','camper-van','varius hendrerit turpis risus vivamus lectus primis taciti quam pharetra montes sapien facilisi aliquam nullam cras amet fringilla tortor interdum netus libero euismod dictumst auctor',4,8900,0,'Costa Mesa','CA','92627','US','Volkswagen','Campervan',1979,4,'2021-11-29 22:42:06.478595+00','2021-11-29 22:42:06.478595+00',33.62,-117.94,'https://res.cloudinary.com/outdoorsy/image/upload/v1548176735/p/rentals/105564/images/lwm0elb5mzs8m7gqxjta.jpg'),
(2, '*ESSENTIAL WORKERS - Pearl - The Maui Camping Cruiser','camper-van','malesuada neque velit leo pharetra magnis lectus sapien turpis aenean eu blandit per mi accumsan cursus porta conubia per tellus et morbi dictumst et arcu',2,3000,0,'Kihei','HI','96753','US','Ford','Other',2010,17,'2021-11-29 22:42:06.478595+00','2021-11-29 22:42:06.478595+00',20.77,-156.45,'https://res.cloudinary.com/outdoorsy/image/upload/v1550269521/p/rentals/108507/images/zlruuz6ll72taorfwjs1.jpg'),
(3, 'The Coolest Camper Van Around','camper-van','porta eros bibendum cum bibendum purus aliquet dis augue litora tempus ridiculus ornare tempor nascetur tristique mauris aenean vehicula maecenas facilisi sociis ut parturient vel',4,7900,0,'Provo','UT','84601','US','Dodge','B Van',2000,16,'2021-11-29 22:42:06.478595+00','2021-11-29 22:42:06.478595+00',40.24,-111.7,'https://res.cloudinary.com/outdoorsy/image/upload/v1556142483/p/rentals/109101/images/ea2vvbovq0tvouj00fad.jpg'),
(4, 'Ford Transit Campervan','camper-van','venenatis aliquam suspendisse odio tortor purus quis eros scelerisque congue per et justo adipiscing montes sed dignissim risus facilisis hac nostra porta hendrerit rhoncus semper',2,23900,.1,'Calgary','AB','T3N 1N8','CA','Ford','Transit 250',2019,22,'2021-11-29 22:42:06.478595+00','2021-11-29 22:42:06.478595+00',51.15,-113.98,'https://res.cloudinary.com/outdoorsy/image/upload/v1554872873/p/rentals/115462/images/qnsbiznxh9hxttrlmwuq.jpg'),
(5, 'AWESOME 1977 Volkswagen Westfalia camper','camper-van','lorem in feugiat eleifend sem semper aenean sociis eros fusce et venenatis turpis tempor suscipit inceptos turpis parturient himenaeos libero non quis lobortis fames velit',4,9900,0,'Los Angeles','CA','90023','US','Volkswagen','Westfalia',1977,15,'2021-11-29 22:42:06.478595+00','2021-11-29 22:42:06.478595+00',34.02,-118.21,'https://res.cloudinary.com/outdoorsy/image/upload/v1558048520/p/rentals/119960/images/sceobzuac0stwyrndi2z.jpg'),
(1, 'Ford Transit Camper Van','camper-van','et tempus sagittis senectus viverra hendrerit vitae pretium parturient commodo senectus hac volutpat quam nam lacus purus ridiculus consequat nascetur metus curabitur turpis cursus bibendum',4,20000,0,'Portland','OR','97220','US','Ford','Van',2018,19,'2021-11-29 22:42:06.478595+00','2021-11-29 22:42:06.478595+00',45.53,-122.58,'https://res.cloudinary.com/outdoorsy/image/upload/v1558102819/p/rentals/120853/images/lmx0f2klrsdbmmuhflvm.jpg'),
(2, '4Runner TRD Pro - 1','camper-van','parturient aenean mollis feugiat suscipit montes est duis aptent nostra vehicula nostra nulla ullamcorper fermentum varius in etiam accumsan morbi nibh mauris praesent placerat enim',2,19900,0,'GLENWOOD SPRINGS','CO','81601','US','Toyota','4Runner',2017,16,'2021-11-29 22:42:06.478595+00','2021-11-29 22:42:06.478595+00',39.55,-107.33,'https://res.cloudinary.com/outdoorsy/image/upload/v1572716112/p/rentals/122562/images/kzprabntk4n67lclikqf.jpg'),
(3, '2007 toyota 4RUNNER','camper-van','proin a et enim quisque fermentum elit proin ultricies tellus donec iaculis id posuere facilisi sapien lorem suspendisse facilisis morbi placerat donec praesent nostra luctus',4,13500,0,'Anchorage','AK','99504','US','toyota','4RUNNER',2007,16,'2021-11-29 22:42:06.478595+00','2021-11-29 22:42:06.478595+00',61.19,-149.73,'https://res.cloudinary.com/outdoorsy/image/upload/v1561148804/p/rentals/127213/images/tlbmzttamvxtyedkj59e.jpg'),
(4, 'Big Blue The Adventure Van','camper-van','proin ligula dolor lorem ad velit est tempus taciti platea sociosqu semper imperdiet viverra a bibendum ullamcorper commodo sapien himenaeos mattis pulvinar primis congue eros',3,13000,0,'Phoenix','AZ','85048','US','Ford','Transit',2015,20,'2021-11-29 22:42:06.478595+00','2021-11-29 22:42:06.478595+00',33.3,-112.06,'https://res.cloudinary.com/outdoorsy/image/upload/v1565039202/p/rentals/135075/images/qzshxyzofqz6bawudfd2.jpg'),
(5, 'The Getaway Van','camper-van','torquent tortor litora tincidunt odio facilisis sem cubilia nisl sollicitudin molestie blandit pellentesque fermentum aliquet magnis pulvinar tempus auctor scelerisque vel erat pulvinar egestas mus',2,12900,0,'Ewa Beach','HI','96706','US','Chevrolet','Other',2002,19,'2021-11-29 22:42:06.478595+00','2021-11-29 22:42:06.478595+00',21.32,-157.98,'https://res.cloudinary.com/outdoorsy/image/upload/v1567092673/p/rentals/137341/images/ms68oj41vlzuehoohy7u.jpg'),
(1, '2013 Peugeot Expert SWB','camper-van','sem vitae bibendum hendrerit sapien nulla convallis tempus gravida eu libero litora vulputate tempus nulla ac molestie consequat dictum nisl aptent ligula lacus senectus sagittis',2,9000,0,'Portland','OR','97220','US','Peugeot','Expert SWB',2015,4.8,'2021-11-29 22:42:06.478595+00','2021-11-29 22:42:06.478595+00',54.72,-2.88,'https://res.cloudinary.com/outdoorsy/image/upload/v1566292990/p/rentals/137450/images/m1axdiiyampit2da6ufu.jpg'),
(2, '2007 Dodge Sprinter 2500 170ext','camper-van','condimentum ipsum a pretium condimentum erat vel praesent porttitor auctor morbi eleifend maecenas sem dignissim risus orci nulla diam ultricies orci natoque phasellus commodo vehicula',2,14900,0,'Denver','CO','80238','US','Dodge','Sprinter 2500 170ext',2007,22,'2021-11-29 22:42:06.478595+00','2021-11-29 22:42:06.478595+00',39.8,-104.89,'https://res.cloudinary.com/outdoorsy/image/upload/v1566599922/p/rentals/138114/images/ab2mosnnlfudkxhqgqcy.jpg'),
(3, '2002 Chevrolet Van Conversion','camper-van','magnis interdum morbi faucibus habitasse sapien porta iaculis platea mi proin posuere vel ligula curabitur amet vehicula amet condimentum ridiculus diam diam proin est etiam',2,9900,0,'San Diego','CA','92107','US','Chevrolet','Express',2002,21,'2021-11-29 22:42:06.478595+00','2021-11-29 22:42:06.478595+00',32.73,-117.24,'https://res.cloudinary.com/outdoorsy/image/upload/v1569722222/p/rentals/143740/images/ooxoce0zrlycj5esm3jh.png'),
(4, '2017 Ford Transit','camper-van','odio fermentum risus montes sapien ullamcorper quam facilisi sociis ultrices facilisis pulvinar magnis id cursus at quam sapien fringilla auctor tempus porta cursus sagittis eget',1,10500,0,'Edmonton','AB','T5T 6V2','CA','Ford','Transit',2017,5,'2021-11-29 22:42:06.478595+00','2021-11-29 22:42:06.478595+00',53.52,-113.68,'https://res.cloudinary.com/outdoorsy/image/upload/v1571422978/p/rentals/145653/images/cy74icmc2qj0oo6zkgqe.jpg'),
(5, 'TiKi Van  Extended custom camper','camper-van','molestie aptent ullamcorper dui ultricies ultricies montes dictum non nulla velit vulputate accumsan aliquam nunc per id vehicula hac etiam habitasse posuere praesent erat tincidunt',3,12000,0,'Keaau','HI','96749','US','Ford','Econolline 250s',2003,19,'2021-11-29 22:42:06.478595+00','2021-11-29 22:42:06.478595+00',19.57,-155.01,'https://res.cloudinary.com/outdoorsy/image/upload/v1571732982/p/rentals/145954/images/gj4muh11n0rbxi8y3b47.jpg'),
(1, '2013 Toyota Hiace Campervan. 5 Seater Automatic. Immaculate Condition..','camper-van','mi proin donec mauris dolor ipsum ridiculus dictumst nisl leo semper ipsum diam id congue tortor curabitur curae adipiscing odio amet posuere commodo orci semper',5,11000,0,'Mount Pleasant','WA','6153','AU','Toyota','Hiace Campervan. 5 Seater Automatic Great Condition..',2013,6,'2021-11-29 22:42:06.478595+00','2021-11-29 22:42:06.478595+00',-32.02,115.84,'https://res.cloudinary.com/outdoorsy/image/upload/v1572098257/p/rentals/146330/images/p4yes9tepvixnlcz4ick.jpg'),
(2, 'Coya | Van-gelina Jolie','camper-van','lacus cras molestie nam dapibus ullamcorper massa ultricies bibendum lectus auctor nisi ridiculus ultricies tristique curabitur diam feugiat erat inceptos sapien vivamus parturient sem nibh',2,20000,0,'Seattle','WA','98116','US','Ford','Transit',2019,20,'2021-11-29 22:42:06.478595+00','2021-11-29 22:42:06.478595+00',47.56,-122.39,'https://res.cloudinary.com/outdoorsy/image/upload/v1582091293/p/rentals/153401/images/kaqt2b6n6sm1xnmvbi5w.jpg'),
(3, 'sCAMPer X','camper-van','ac tellus phasellus ultrices nostra eros aenean metus ridiculus adipiscing habitant nulla cubilia tortor rhoncus quisque sem ultrices varius massa mollis congue praesent nam ante',4,17500,0,'Atlanta','GA','30310','US','Ram','Promaster',2020,19,'2021-11-29 22:42:06.478595+00','2021-11-29 22:42:06.478595+00',33.73,-84.41,'https://res.cloudinary.com/outdoorsy/image/upload/v1589910541/p/rentals/156152/images/jvyvtqoeljadoizjjzag.jpg'),
(4, '2015 Dodge Sprinter Van','camper-van','pretium non litora lobortis pharetra elit sociosqu platea nostra interdum odio vestibulum tincidunt mi blandit convallis pellentesque tempor viverra fermentum ultricies nunc egestas id arcu',2,17000,0,'Silverthorne','CO','80498','US','Dodge','Sprinter Van',2015,20,'2021-11-29 22:42:06.478595+00','2021-11-29 22:42:06.478595+00',39.62,-106.09,'https://res.cloudinary.com/outdoorsy/image/upload/v1588550855/p/rentals/162781/images/az0xp8wbdto4pjzlkyh3.jpg'),
(5, 'The New Adventures of Pearl - 2014 Nissan NV2500 High Top','camper-van','malesuada eget conubia porta sollicitudin urna ad aenean lacus vulputate parturient vulputate suspendisse sit parturient ante mauris maecenas dignissim donec eget adipiscing dui luctus eget',2,18900,0,'Denver','CO','80222','US','Nissan','NV2500',2014,20,'2021-11-29 22:42:06.478595+00','2021-11-29 22:42:06.478595+00',39.67,-104.92,'https://res.cloudinary.com/outdoorsy/image/upload/v1590500837/undefined/rentals/164961/images/t3nkxdl0ua8g6gp1idcm.jpg');


CREATE TYPE booking_status AS enum('draft', 'approved', 'departed', 'returned');

CREATE TABLE IF NOT EXISTS bookings (
    id SERIAL PRIMARY KEY,
    departure_date timestamp without time zone,
    return_date timestamp without time zone,
    rental_id integer REFERENCES rentals,
    status booking_status,
    total bigint
);

INSERT INTO "bookings"("id", "departure_date", "return_date", "rental_id", "status", "total")
VALUES
    (1, now() + interval '10 days', now() + interval '11 days', 1, 'approved', 20000),
    (2, now() - interval '11 days', now() - interval '7 days', 1, 'returned', 25150),
    (3, now() - interval '1 day', now() + interval '7 days', 1, 'departed', 52500),
    (4, now() + interval '21 day', now() + interval '30 days', 1, 'draft', 45500),
    (5, now() - interval '31 days', now() - interval '27 days', 1, 'returned', 50345),
    (6, now() + interval '30 days', now() + interval '45 days', 2, 'approved', 23400),
    (7, now() - interval '3 day', now() + interval '8 days', 2, 'departed', 59500),
    (8, now() - interval '11 days', now() - interval '7 days', 2, 'returned', 45230),
    (9, now() + interval '17 day', now() + interval '20 days', 2, 'draft', 25500),
    (10, now() - interval '25 days', now() - interval '20 days', 2, 'returned', 12300),
    (11, now() - interval '4 days', now() + interval '4 days', 3, 'departed', 22501)
;

CREATE TYPE transaction_type AS enum('charge', 'payout');

CREATE TABLE IF NOT EXISTS transactions (
    id SERIAL PRIMARY KEY,
    booking_id integer REFERENCES bookings,
    "type" transaction_type,
    amount bigint
);

INSERT INTO "transactions"("booking_id", "type", "amount")
VALUES
    (1, 'charge', 20000),
    (1, 'payout', 20000),
    (2, 'charge', 25150),
    (3, 'charge', 20000),
    (3, 'charge', 35500),
    (3, 'payout', 52500),
    (5, 'charge', 50345),
    (5, 'payout', 50345),
    (6, 'charge', 23400),
    (7, 'charge', 30000),
    (7, 'charge', 29500),
    (7, 'payout', 59500),
    (8, 'charge', 45230),
    (8, 'payout', 45230),
    (10, 'charge', 12300),
    (10, 'payout', 12300),
    (11, 'charge', 22501)
;
