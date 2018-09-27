INSERT INTO cliente(nombre, apellido, email, create_at, foto) VALUES ('Yuliani', 'Moreno', 'yulianitec@gmail.com', '2018-08-22', '');
INSERT INTO cliente(nombre, apellido, email, create_at, foto) VALUES ('Poletita', 'Moreno', 'poletita@gmail.com', '2018-08-22', '');
INSERT INTO cliente(nombre, apellido, email, create_at, foto) VALUES('John', 'Doe', 'john.doe@gmail.com', '2017-08-02', '');
INSERT INTO cliente(nombre, apellido, email, create_at, foto) VALUES('Linus', 'Torvalds', 'linus.torvalds@gmail.com', '2017-08-03', '');
INSERT INTO cliente(nombre, apellido, email, create_at, foto) VALUES('Jane', 'Doe', 'jane.doe@gmail.com', '2017-08-04', '');
INSERT INTO cliente(nombre, apellido, email, create_at, foto) VALUES('Rasmus', 'Lerdorf', 'rasmus.lerdorf@gmail.com', '2017-08-05', '');
INSERT INTO cliente(nombre, apellido, email, create_at, foto) VALUES('Erich', 'Gamma', 'erich.gamma@gmail.com', '2017-08-06', '');
INSERT INTO cliente(nombre, apellido, email, create_at, foto) VALUES('Richard', 'Helm', 'richard.helm@gmail.com', '2017-08-07', '');
INSERT INTO cliente(nombre, apellido, email, create_at, foto) VALUES('Ralph', 'Johnson', 'ralph.johnson@gmail.com', '2017-08-08', '');
INSERT INTO cliente(nombre, apellido, email, create_at, foto) VALUES('John', 'Vlissides', 'john.vlissides@gmail.com', '2017-08-09', '');
INSERT INTO cliente(nombre, apellido, email, create_at, foto) VALUES('James', 'Gosling', 'james.gosling@gmail.com', '2017-08-010', '');
INSERT INTO cliente(nombre, apellido, email, create_at, foto) VALUES('Bruce', 'Lee', 'bruce.lee@gmail.com', '2017-08-11', '');
INSERT INTO cliente(nombre, apellido, email, create_at, foto) VALUES('Johnny', 'Doe', 'johnny.doe@gmail.com', '2017-08-12', '');
INSERT INTO cliente(nombre, apellido, email, create_at, foto) VALUES('John', 'Roe', 'john.roe@gmail.com', '2017-08-13', '');
INSERT INTO cliente(nombre, apellido, email, create_at, foto) VALUES('Jane', 'Roe', 'jane.roe@gmail.com', '2017-08-14', '');
INSERT INTO cliente(nombre, apellido, email, create_at, foto) VALUES('Richard', 'Doe', 'richard.doe@gmail.com', '2017-08-15', '');
INSERT INTO cliente(nombre, apellido, email, create_at, foto) VALUES('Janie', 'Doe', 'janie.doe@gmail.com', '2017-08-16', '');
INSERT INTO cliente(nombre, apellido, email, create_at, foto) VALUES('Phillip', 'Webb', 'phillip.webb@gmail.com', '2017-08-17', '');
INSERT INTO cliente(nombre, apellido, email, create_at, foto) VALUES('Stephane', 'Nicoll', 'stephane.nicoll@gmail.com', '2017-08-18', '');
INSERT INTO cliente(nombre, apellido, email, create_at, foto) VALUES('Sam', 'Brannen', 'sam.brannen@gmail.com', '2017-08-19', '');  
INSERT INTO cliente(nombre, apellido, email, create_at, foto) VALUES('Juergen', 'Hoeller', 'juergen.Hoeller@gmail.com', '2017-08-20', ''); 
INSERT INTO cliente(nombre, apellido, email, create_at, foto) VALUES('Janie', 'Roe', 'janie.roe@gmail.com', '2017-08-21', '');
INSERT INTO cliente(nombre, apellido, email, create_at, foto) VALUES('John', 'Smith', 'john.smith@gmail.com', '2017-08-22', '');
INSERT INTO cliente(nombre, apellido, email, create_at, foto) VALUES('Joe', 'Bloggs', 'joe.bloggs@gmail.com', '2017-08-23', '');
INSERT INTO cliente(nombre, apellido, email, create_at, foto) VALUES('John', 'Stiles', 'john.stiles@gmail.com', '2017-08-24', '');
INSERT INTO cliente(nombre, apellido, email, create_at, foto) VALUES('Richard', 'Roe', 'stiles.roe@gmail.com', '2017-08-25', '');

/* Populate tabla productos */
INSERT INTO producto (nombre, precio, create_at) VALUES('Panasonic Pantalla LCD', 259990, NOW());
INSERT INTO producto (nombre, precio, create_at) VALUES('Sony Camara digital DSC-W320B', 123490, NOW());
INSERT INTO producto (nombre, precio, create_at) VALUES('Apple iPod shuffle', 1499990, NOW());
INSERT INTO producto (nombre, precio, create_at) VALUES('Sony Notebook Z110', 37990, NOW());
INSERT INTO producto (nombre, precio, create_at) VALUES('Hewlett Packard Multifuncional F2280', 69990, NOW());
INSERT INTO producto (nombre, precio, create_at) VALUES('Bianchi Bicicleta Aro 26', 69990, NOW());
INSERT INTO producto (nombre, precio, create_at) VALUES('Mica Comoda 5 Cajones', 299990, NOW());

/* Creamos algunas facturas */
INSERT INTO factura (descripcion, observacion, cliente_id, create_at) VALUES('Factura equipos de oficina', null, 1, NOW());
INSERT INTO factura_item (cantidad, factura_id, producto_id) VALUES(1, 1, 1);
INSERT INTO factura_item (cantidad, factura_id, producto_id) VALUES(2, 1, 4);
INSERT INTO factura_item (cantidad, factura_id, producto_id) VALUES(1, 1, 5);
INSERT INTO factura_item (cantidad, factura_id, producto_id) VALUES(1, 1, 7);

INSERT INTO factura (descripcion, observacion, cliente_id, create_at) VALUES('Factura Bicicleta', 'Alguna nota importante!', 1, NOW());
INSERT INTO factura_item (cantidad, factura_id, producto_id) VALUES(3, 2, 6);

INSERT INTO users(username, password, enabled) VALUES ('yuliani', '$2a$10$DTmVMPIu4N.fkLqjCu/gReOjx46DeP7KNga236nbdQmhQoEvNdOBK',1);
INSERT INTO users(username, password, enabled) VALUES('admin', '$2a$10$BWYDu95mlPYLNj23vqbyXuU5qh9o76etK0REBRSnESEKnANEA4NSy',1);

INSERT INTO authorities(user_id, authority) VALUES(1,'ROLE_USER');
INSERT INTO authorities(user_id, authority) VALUES(2,'ROLE_ADMIN');
INSERT INTO authorities(user_id, authority) VALUES(2,'ROLE_USER');
