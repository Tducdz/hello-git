use book_store;

create table if not exists Authors (
	author_id int auto_increment,
    name varchar(50) not null,
    birth_date date,
    primary key (author_id)
);

create table if not exists Books (
	book_id int auto_increment,
    title varchar(255) not null,
    published_year year not null,
    price decimal(10, 0) not null,
    author_id int,
    primary key (book_id),
    foreign key (author_id) references Authors(author_id)
);

create table if not exists Customers (
	customer_id int auto_increment,
    full_name varchar(50) not null,
    email varchar(255) unique not null,
    phone varchar(15),
    addresss text,
    primary key (customer_id)
);

create table if not exists Orders (
	order_id int auto_increment,
    customer_id int,
    order_date datetime not null,
    status enum("pending", "shipped", "delivered", "cancelled"),
    primary key (order_id),
    foreign key (customer_id) references Customers(customer_id)
);

create table if not exists Order_Details (
	order_id int,
    book_id int,
    quantity int not null,
    unit_price decimal(10, 0) not null,
	foreign key (order_id) references Orders(order_id),
    foreign key (book_id) references Books(book_id)
);