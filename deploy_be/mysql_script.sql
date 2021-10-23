drop table blog;
drop table blog_content;

create table blog
(
    blog_id          bigint(12) primary key AUTO_INCREMENT,
    blog_title       varchar(1024) not null,
    blog_author      varchar(1024) not null,
    blog_reference   varchar(4096),
    blog_link        varchar(1024),
    blog_preview     varchar(1024) not null,
    blog_preview_img varchar(1024) not null,
    blog_view        bigint(16) not null default 0,
    blog_create_time datetime      not null,
    blog_update_time datetime      not null
) AUTO_INCREMENT = 1 ;

create table blog_content
(
    blog_id      bigint(12) primary key AUTO_INCREMENT,
    blog_content text(16000) not null
) AUTO_INCREMENT = 1 ;

insert into blog
values (1,
        'How to feed a pig',
        'Max Liu, Jane Hu',
        'Liu, M. & Hu, J. (2021). How to feed a pig. Query Press. 20230-11-12342.',
        'https://www.google.com',
        '1. get a pig...',
        '',
        0,
        now(),
        now());

insert into blog
values (2,
        'Whose elephant is in the refrigerator?',
        'Benshan Zhao',
        'Zhao, B. (2001). Whose elephant is in the refrigerator?. Query Press. 18954-50-98498.',
        'https://go.dev/',
        'No idea...',
        'https://be.admin.endangeredplantsau.ga/static/plantsphoto/Abutilon%20julianae/1.jpg',
        0,
        now(),
        now());

insert into blog
values (3,
        'Whose dog is in the refrigerator?',
        'Benshan Zhao',
        'Zhao, B. (2001). Whose elephant is in the refrigerator?. Query Press. 18954-50-98498.',
        'https://go.dev/',
        'No idea...',
        'https://be.admin.endangeredplantsau.ga/static/plantsphoto/Acacia%20caerulescens/3.jpg',
        0,
        now(),
        now());

insert into blog
values (4,
        'Whose cat is in the refrigerator?',
        'Benshan Zhao',
        'Zhao, B. (2001). Whose elephant is in the refrigerator?. Query Press. 18954-50-98498.',
        'https://go.dev/',
        'No idea...',
        'https://be.admin.endangeredplantsau.ga/static/plantsphoto/Acacia%20enterocarpa/2.jpg',
        0,
        now(),
        now());

insert into blog_content values (1, '[{\"type\":\"paragraph\",\"children\":[{\"text\":\"1. get a pig \\n2. get food \\n3. feed the pig\"}]}]');
insert into blog_content values (2, '[{\"type\":\"paragraph\",\"children\":[{\"text\":\"No idea. No idea. No idea. No idea. No idea. No idea. No idea. No idea. \"}]}]');
insert into blog_content values (3, '[{\"type\":\"paragraph\",\"children\":[{\"text\":\"No idea. No idea. No idea. No idea. No idea. No idea. No idea. No idea. \"}]}]');
insert into blog_content values (4, '[{\"type\":\"paragraph\",\"children\":[{\"text\":\"No idea. No idea. No idea. No idea. No idea. No idea. No idea. No idea. \"}]}]');

commit;