create sequence hibernate_sequence start 2 increment 1;

create table task (
    id int8 not null,
    filename varchar(255),
    tag varchar(255),
    text varchar(2048) not null,
    user_id int8,
    primary key (id)

);

create table user_role (
    user_id int8 not null,
    roles varchar(255)
);

create table users (
    id int8 not null,
    activation_code varchar(255),
    active boolean not null,
    email varchar(255),
    password varchar(255) not null,
    username varchar(255) not null,
    primary key (id)
);

alter table if exists task
    add constraint message_user_fk
    foreign key (user_id) references users;

alter table if exists user_role
    add constraint user_role_user_fk
    foreign key (user_id) references users;