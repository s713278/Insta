    drop table catalog if exists
    drop table catalog_categories if exists
    drop table category if exists
    drop table category_products if exists
    drop table product if exists
    drop table product_skus if exists
    drop table sku if exists

    create table catalog (
       id bigint generated by default as identity,
        imageurl varchar(255),
        name varchar(255) not null,
        primary key (id)
    )

    drop table catalog if exists

    drop table catalog_categories if exists
    
    drop table category if exists
    
    drop table category_products if exists

    drop table category_sub_categories if exists
    
    drop table product if exists
    
    drop table product_skus if exists
    
    drop table sku if exists
    
    create table catalog (
       id bigint generated by default as identity,
        image_url varchar(255),
        name varchar(255) not null,
        primary key (id)
    )

    create table catalog_categories (
       catalog_id bigint not null,
        categories_id bigint not null
    )

    create table category (
       id bigint generated by default as identity,
        image_url varchar(255),
        name varchar(255) not null,
        primary key (id)
    )

    
    create table category_products (
       category_id bigint not null,
        products_id bigint not null
    )

    
    create table category_sub_categories (
       category_id bigint not null,
        sub_categories_id bigint not null
    )

    
    create table product (
       id bigint generated by default as identity,
        imageurl varchar(255),
        name varchar(255) not null,
        primary key (id)
    )

    
    create table product_skus (
       product_id bigint not null,
        skus_id bigint not null
    )

    
    create table sku (
       id bigint generated by default as identity,
        imageurl varchar(255),
        name varchar(255) not null,
        price double,
        primary key (id)
    )

    
    alter table catalog_categories 
       add constraint UK_8ij60p3fp9ri834g4mj29nk0p unique (categories_id)

    
    alter table category_products 
       add constraint UK_fdnk3mk70n1rc08vw1cj65kqw unique (products_id)

    
    alter table category_sub_categories 
       add constraint UK_bvsvfpcbk584cpyecc213hl3m unique (sub_categories_id)

    
    alter table product_skus 
       add constraint UK_cb5lj3jkp93m8yobdpd46173p unique (skus_id)

    
    alter table catalog_categories 
       add constraint FKlthf46ik12vpeu0m05okig8ed 
       foreign key (categories_id) 
       references category

    
    alter table catalog_categories 
       add constraint FKjqbiujjpwg6tjb3qrv829ukhg 
       foreign key (catalog_id) 
       references catalog

    
    alter table category_products 
       add constraint FKe9irm5a62pmolhvr468cip3v3 
       foreign key (products_id) 
       references product

    
    alter table category_products 
       add constraint FKqwkr0l0xbluhhkm7s0c1tg8en 
       foreign key (category_id) 
       references category

    
    alter table category_sub_categories 
       add constraint FKidcggyryld30a3y9ohv87sxa9 
       foreign key (sub_categories_id) 
       references category

    
    alter table category_sub_categories 
       add constraint FKaibc0jhojq2mftuvidt462xsd 
       foreign key (category_id) 
       references category

    
    alter table product_skus 
       add constraint FKiwp1tf4co36psaqsvqyctuky7 
       foreign key (skus_id) 
       references sku

    
    alter table product_skus 
       add constraint FKfy3aqoi3rihsuaynegoselnxg 
       foreign key (product_id) 
       references product

    
    create table catalog_categories (
       catalog_id bigint not null,
        categories_id bigint not null
    )

    
    create table category (
       id bigint generated by default as identity,
        imageurl varchar(255),
        name varchar(255) not null,
        primary key (id)
    )

    
    create table category_products (
       category_id bigint not null,
        products_id bigint not null
    )

    create table product (
       id bigint generated by default as identity,
        imageurl varchar(255),
        name varchar(255) not null,
        primary key (id)
    )

    create table product_skus (
       product_id bigint not null,
        skus_id bigint not null
    )

    
    create table sku (
       id bigint generated by default as identity,
        imageurl varchar(255),
        name varchar(255) not null,
        price double,
        primary key (id)
    )

    
    alter table catalog_categories 
       add constraint UK_8ij60p3fp9ri834g4mj29nk0p unique (categories_id)

    
    alter table category_products 
       add constraint UK_fdnk3mk70n1rc08vw1cj65kqw unique (products_id)

    
    alter table product_skus 
       add constraint UK_cb5lj3jkp93m8yobdpd46173p unique (skus_id)

    
    alter table catalog_categories 
       add constraint FKlthf46ik12vpeu0m05okig8ed 
       foreign key (categories_id) 
       references category

    
    alter table catalog_categories 
       add constraint FKjqbiujjpwg6tjb3qrv829ukhg 
       foreign key (catalog_id) 
       references catalog

    
    alter table category_products 
       add constraint FKe9irm5a62pmolhvr468cip3v3 
       foreign key (products_id) 
       references product

    
    alter table category_products 
       add constraint FKqwkr0l0xbluhhkm7s0c1tg8en 
       foreign key (category_id) 
       references category

    
    alter table product_skus 
       add constraint FKiwp1tf4co36psaqsvqyctuky7 
       foreign key (skus_id) 
       references sku

    
    alter table product_skus 
       add constraint FKfy3aqoi3rihsuaynegoselnxg 
       foreign key (product_id) 
       references product