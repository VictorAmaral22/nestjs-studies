create table if not exists Brand (
    id serial primary key,
    name varchar(255) not null,
    logo varchar(255) not null,
    country varchar(255) not null,
    active boolean not null default true,
    created_at timestamp not null default current_timestamp,
    updated_at timestamp not null default current_timestamp,
    deleted_at timestamp
);

create table if not exists Car (
    id serial primary key,
    brand_id int not null,
    model varchar(255) not null,
    year int not null,
    color varchar(255) not null,
    price decimal(10, 2) not null,
    photo varchar(255) not null,
    active boolean not null default true,
    created_at timestamp not null default current_timestamp,
    updated_at timestamp not null default current_timestamp,
    deleted_at timestamp,
    
    foreign key (brand_id) references Brand(id)
);