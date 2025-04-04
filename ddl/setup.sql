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

-- Inserts para Brand
INSERT INTO Brand (name, logo, country) VALUES
('Toyota', 'https://logos.com/toyota.png', 'Japão'),
('Ford', 'https://logos.com/ford.png', 'EUA'),
('Volkswagen', 'https://logos.com/volkswagen.png', 'Alemanha'),
('Hyundai', 'https://logos.com/hyundai.png', 'Coreia do Sul'),
('Fiat', 'https://logos.com/fiat.png', 'Itália'),
('Chevrolet', 'https://logos.com/chevrolet.png', 'EUA'),
('Honda', 'https://logos.com/honda.png', 'Japão'),
('Peugeot', 'https://logos.com/peugeot.png', 'França'),
('Renault', 'https://logos.com/renault.png', 'França'),
('BMW', 'https://logos.com/bmw.png', 'Alemanha'),
('Mercedes-Benz', 'https://logos.com/mercedes-benz.png', 'Alemanha'),
('Audi', 'https://logos.com/audi.png', 'Alemanha'),
('Kia', 'https://logos.com/kia.png', 'Coreia do Sul'),
('Nissan', 'https://logos.com/nissan.png', 'Japão'),
('Mazda', 'https://logos.com/mazda.png', 'Japão'),
('Jeep', 'https://logos.com/jeep.png', 'EUA'),
('Lexus', 'https://logos.com/lexus.png', 'Japão'),
('Subaru', 'https://logos.com/subaru.png', 'Japão'),
('Chery', 'https://logos.com/chery.png', 'China'),
('Geely', 'https://logos.com/geely.png', 'China');

-- Inserts para Car
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (1, 'Corolla', 2025, 'Preto', 80000.00, 'https://cars.com/corolla.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (1, 'Hilux', 2024, 'Branco', 90000.00, 'https://cars.com/hilux.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (1, 'Yaris', 2023, 'Prata', 100000.00, 'https://cars.com/yaris.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (1, 'Camry', 2022, 'Vermelho', 110000.00, 'https://cars.com/camry.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (1, 'RAV4', 2021, 'Azul', 120000.00, 'https://cars.com/rav4.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (1, 'SW4', 2025, 'Cinza', 130000.00, 'https://cars.com/sw4.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (1, 'Etios', 2024, 'Verde', 140000.00, 'https://cars.com/etios.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (1, 'Prius', 2023, 'Amarelo', 150000.00, 'https://cars.com/prius.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (1, 'Supra', 2022, 'Marrom', 160000.00, 'https://cars.com/supra.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (1, 'Avanza', 2021, 'Roxo', 170000.00, 'https://cars.com/avanza.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (2, 'Mustang', 2025, 'Preto', 80000.00, 'https://cars.com/mustang.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (2, 'Ranger', 2024, 'Branco', 90000.00, 'https://cars.com/ranger.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (2, 'EcoSport', 2023, 'Prata', 100000.00, 'https://cars.com/ecosport.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (2, 'Ka', 2022, 'Vermelho', 110000.00, 'https://cars.com/ka.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (2, 'Fusion', 2021, 'Azul', 120000.00, 'https://cars.com/fusion.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (2, 'Edge', 2025, 'Cinza', 130000.00, 'https://cars.com/edge.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (2, 'Focus', 2024, 'Verde', 140000.00, 'https://cars.com/focus.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (2, 'F-150', 2023, 'Amarelo', 150000.00, 'https://cars.com/f-150.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (2, 'Bronco', 2022, 'Marrom', 160000.00, 'https://cars.com/bronco.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (2, 'Territory', 2021, 'Roxo', 170000.00, 'https://cars.com/territory.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (3, 'Golf', 2025, 'Preto', 80000.00, 'https://cars.com/golf.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (3, 'Polo', 2024, 'Branco', 90000.00, 'https://cars.com/polo.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (3, 'Jetta', 2023, 'Prata', 100000.00, 'https://cars.com/jetta.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (3, 'Tiguan', 2022, 'Vermelho', 110000.00, 'https://cars.com/tiguan.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (3, 'Passat', 2021, 'Azul', 120000.00, 'https://cars.com/passat.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (3, 'T-Cross', 2025, 'Cinza', 130000.00, 'https://cars.com/t-cross.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (3, 'Virtus', 2024, 'Verde', 140000.00, 'https://cars.com/virtus.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (3, 'Amarok', 2023, 'Amarelo', 150000.00, 'https://cars.com/amarok.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (3, 'Voyage', 2022, 'Marrom', 160000.00, 'https://cars.com/voyage.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (3, 'Nivus', 2021, 'Roxo', 170000.00, 'https://cars.com/nivus.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (4, 'HB20', 2025, 'Preto', 80000.00, 'https://cars.com/hb20.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (4, 'Creta', 2024, 'Branco', 90000.00, 'https://cars.com/creta.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (4, 'Tucson', 2023, 'Prata', 100000.00, 'https://cars.com/tucson.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (4, 'Santa Fe', 2022, 'Vermelho', 110000.00, 'https://cars.com/santafe.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (4, 'i30', 2021, 'Azul', 120000.00, 'https://cars.com/i30.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (4, 'Elantra', 2025, 'Cinza', 130000.00, 'https://cars.com/elantra.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (4, 'Azera', 2024, 'Verde', 140000.00, 'https://cars.com/azera.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (4, 'Kona', 2023, 'Amarelo', 150000.00, 'https://cars.com/kona.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (4, 'Veloster', 2022, 'Marrom', 160000.00, 'https://cars.com/veloster.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (4, 'Accent', 2021, 'Roxo', 170000.00, 'https://cars.com/accent.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (5, 'Uno', 2025, 'Preto', 80000.00, 'https://cars.com/uno.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (5, 'Palio', 2024, 'Branco', 90000.00, 'https://cars.com/palio.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (5, 'Argo', 2023, 'Prata', 100000.00, 'https://cars.com/argo.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (5, 'Cronos', 2022, 'Vermelho', 110000.00, 'https://cars.com/cronos.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (5, 'Toro', 2021, 'Azul', 120000.00, 'https://cars.com/toro.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (5, 'Strada', 2025, 'Cinza', 130000.00, 'https://cars.com/strada.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (5, 'Pulse', 2024, 'Verde', 140000.00, 'https://cars.com/pulse.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (5, 'Fastback', 2023, 'Amarelo', 150000.00, 'https://cars.com/fastback.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (5, '500', 2022, 'Marrom', 160000.00, 'https://cars.com/500.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (5, 'Mobi', 2021, 'Roxo', 170000.00, 'https://cars.com/mobi.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (6, 'Onix', 2025, 'Preto', 80000.00, 'https://cars.com/onix.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (6, 'Tracker', 2024, 'Branco', 90000.00, 'https://cars.com/tracker.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (6, 'S10', 2023, 'Prata', 100000.00, 'https://cars.com/s10.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (6, 'Cruze', 2022, 'Vermelho', 110000.00, 'https://cars.com/cruze.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (6, 'Spin', 2021, 'Azul', 120000.00, 'https://cars.com/spin.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (6, 'Cobalt', 2025, 'Cinza', 130000.00, 'https://cars.com/cobalt.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (6, 'Montana', 2024, 'Verde', 140000.00, 'https://cars.com/montana.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (6, 'Camaro', 2023, 'Amarelo', 150000.00, 'https://cars.com/camaro.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (6, 'Equinox', 2022, 'Marrom', 160000.00, 'https://cars.com/equinox.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (6, 'Blazer', 2021, 'Roxo', 170000.00, 'https://cars.com/blazer.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (7, 'Civic', 2025, 'Preto', 80000.00, 'https://cars.com/civic.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (7, 'Fit', 2024, 'Branco', 90000.00, 'https://cars.com/fit.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (7, 'HR-V', 2023, 'Prata', 100000.00, 'https://cars.com/hr-v.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (7, 'WR-V', 2022, 'Vermelho', 110000.00, 'https://cars.com/wr-v.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (7, 'City', 2021, 'Azul', 120000.00, 'https://cars.com/city.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (7, 'Accord', 2025, 'Cinza', 130000.00, 'https://cars.com/accord.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (7, 'CR-V', 2024, 'Verde', 140000.00, 'https://cars.com/cr-v.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (7, 'Odyssey', 2023, 'Amarelo', 150000.00, 'https://cars.com/odyssey.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (7, 'Pilot', 2022, 'Marrom', 160000.00, 'https://cars.com/pilot.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (7, 'Jazz', 2021, 'Roxo', 170000.00, 'https://cars.com/jazz.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (8, '208', 2025, 'Preto', 80000.00, 'https://cars.com/208.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (8, '2008', 2024, 'Branco', 90000.00, 'https://cars.com/2008.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (8, '3008', 2023, 'Prata', 100000.00, 'https://cars.com/3008.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (8, '308', 2022, 'Vermelho', 110000.00, 'https://cars.com/308.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (8, '408', 2021, 'Azul', 120000.00, 'https://cars.com/408.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (8, '5008', 2025, 'Cinza', 130000.00, 'https://cars.com/5008.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (8, 'RCZ', 2024, 'Verde', 140000.00, 'https://cars.com/rcz.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (8, 'Expert', 2023, 'Amarelo', 150000.00, 'https://cars.com/expert.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (8, 'Partner', 2022, 'Marrom', 160000.00, 'https://cars.com/partner.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (8, 'Boxer', 2021, 'Roxo', 170000.00, 'https://cars.com/boxer.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (9, 'Kwid', 2025, 'Preto', 80000.00, 'https://cars.com/kwid.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (9, 'Sandero', 2024, 'Branco', 90000.00, 'https://cars.com/sandero.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (9, 'Logan', 2023, 'Prata', 100000.00, 'https://cars.com/logan.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (9, 'Duster', 2022, 'Vermelho', 110000.00, 'https://cars.com/duster.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (9, 'Captur', 2021, 'Azul', 120000.00, 'https://cars.com/captur.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (9, 'Oroch', 2025, 'Cinza', 130000.00, 'https://cars.com/oroch.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (9, 'Stepway', 2024, 'Verde', 140000.00, 'https://cars.com/stepway.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (9, 'Koleos', 2023, 'Amarelo', 150000.00, 'https://cars.com/koleos.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (9, 'Megane', 2022, 'Marrom', 160000.00, 'https://cars.com/megane.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (9, 'Scenic', 2021, 'Roxo', 170000.00, 'https://cars.com/scenic.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (10, '320i', 2025, 'Preto', 80000.00, 'https://cars.com/320i.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (10, 'X1', 2024, 'Branco', 90000.00, 'https://cars.com/x1.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (10, 'X3', 2023, 'Prata', 100000.00, 'https://cars.com/x3.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (10, 'X5', 2022, 'Vermelho', 110000.00, 'https://cars.com/x5.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (10, 'Z4', 2021, 'Azul', 120000.00, 'https://cars.com/z4.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (10, 'i3', 2025, 'Cinza', 130000.00, 'https://cars.com/i3.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (10, 'i8', 2024, 'Verde', 140000.00, 'https://cars.com/i8.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (10, 'X6', 2023, 'Amarelo', 150000.00, 'https://cars.com/x6.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (10, 'M3', 2022, 'Marrom', 160000.00, 'https://cars.com/m3.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (10, 'M5', 2021, 'Roxo', 170000.00, 'https://cars.com/m5.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (11, 'Classe A', 2025, 'Preto', 80000.00, 'https://cars.com/classea.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (11, 'Classe C', 2024, 'Branco', 90000.00, 'https://cars.com/classec.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (11, 'Classe E', 2023, 'Prata', 100000.00, 'https://cars.com/classee.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (11, 'GLA', 2022, 'Vermelho', 110000.00, 'https://cars.com/gla.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (11, 'GLC', 2021, 'Azul', 120000.00, 'https://cars.com/glc.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (11, 'GLS', 2025, 'Cinza', 130000.00, 'https://cars.com/gls.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (11, 'CLA', 2024, 'Verde', 140000.00, 'https://cars.com/cla.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (11, 'SLK', 2023, 'Amarelo', 150000.00, 'https://cars.com/slk.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (11, 'EQC', 2022, 'Marrom', 160000.00, 'https://cars.com/eqc.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (11, 'AMG GT', 2021, 'Roxo', 170000.00, 'https://cars.com/amggt.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (12, 'A1', 2025, 'Preto', 80000.00, 'https://cars.com/a1.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (12, 'A3', 2024, 'Branco', 90000.00, 'https://cars.com/a3.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (12, 'A4', 2023, 'Prata', 100000.00, 'https://cars.com/a4.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (12, 'A5', 2022, 'Vermelho', 110000.00, 'https://cars.com/a5.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (12, 'Q3', 2021, 'Azul', 120000.00, 'https://cars.com/q3.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (12, 'Q5', 2025, 'Cinza', 130000.00, 'https://cars.com/q5.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (12, 'Q7', 2024, 'Verde', 140000.00, 'https://cars.com/q7.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (12, 'RS3', 2023, 'Amarelo', 150000.00, 'https://cars.com/rs3.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (12, 'RS5', 2022, 'Marrom', 160000.00, 'https://cars.com/rs5.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (12, 'TT', 2021, 'Roxo', 170000.00, 'https://cars.com/tt.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (13, 'Sportage', 2025, 'Preto', 80000.00, 'https://cars.com/sportage.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (13, 'Sorento', 2024, 'Branco', 90000.00, 'https://cars.com/sorento.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (13, 'Soul', 2023, 'Prata', 100000.00, 'https://cars.com/soul.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (13, 'Seltos', 2022, 'Vermelho', 110000.00, 'https://cars.com/seltos.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (13, 'Cerato', 2021, 'Azul', 120000.00, 'https://cars.com/cerato.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (13, 'Picanto', 2025, 'Cinza', 130000.00, 'https://cars.com/picanto.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (13, 'Stinger', 2024, 'Verde', 140000.00, 'https://cars.com/stinger.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (13, 'Carnival', 2023, 'Amarelo', 150000.00, 'https://cars.com/carnival.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (13, 'Rio', 2022, 'Marrom', 160000.00, 'https://cars.com/rio.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (13, 'Mohave', 2021, 'Roxo', 170000.00, 'https://cars.com/mohave.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (14, 'March', 2025, 'Preto', 80000.00, 'https://cars.com/march.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (14, 'Versa', 2024, 'Branco', 90000.00, 'https://cars.com/versa.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (14, 'Sentra', 2023, 'Prata', 100000.00, 'https://cars.com/sentra.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (14, 'Kicks', 2022, 'Vermelho', 110000.00, 'https://cars.com/kicks.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (14, 'Frontier', 2021, 'Azul', 120000.00, 'https://cars.com/frontier.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (14, 'Leaf', 2025, 'Cinza', 130000.00, 'https://cars.com/leaf.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (14, 'Altima', 2024, 'Verde', 140000.00, 'https://cars.com/altima.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (14, '370Z', 2023, 'Amarelo', 150000.00, 'https://cars.com/370z.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (14, 'X-Trail', 2022, 'Marrom', 160000.00, 'https://cars.com/x-trail.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (14, 'Murano', 2021, 'Roxo', 170000.00, 'https://cars.com/murano.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (15, 'Mazda2', 2025, 'Preto', 80000.00, 'https://cars.com/mazda2.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (15, 'Mazda3', 2024, 'Branco', 90000.00, 'https://cars.com/mazda3.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (15, 'Mazda6', 2023, 'Prata', 100000.00, 'https://cars.com/mazda6.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (15, 'CX-3', 2022, 'Vermelho', 110000.00, 'https://cars.com/cx-3.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (15, 'CX-30', 2021, 'Azul', 120000.00, 'https://cars.com/cx-30.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (15, 'CX-5', 2025, 'Cinza', 130000.00, 'https://cars.com/cx-5.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (15, 'CX-9', 2024, 'Verde', 140000.00, 'https://cars.com/cx-9.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (15, 'MX-5', 2023, 'Amarelo', 150000.00, 'https://cars.com/mx-5.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (15, 'RX-8', 2022, 'Marrom', 160000.00, 'https://cars.com/rx-8.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (15, 'BT-50', 2021, 'Roxo', 170000.00, 'https://cars.com/bt-50.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (16, 'Renegade', 2025, 'Preto', 80000.00, 'https://cars.com/renegade.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (16, 'Compass', 2024, 'Branco', 90000.00, 'https://cars.com/compass.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (16, 'Wrangler', 2023, 'Prata', 100000.00, 'https://cars.com/wrangler.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (16, 'Cherokee', 2022, 'Vermelho', 110000.00, 'https://cars.com/cherokee.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (16, 'Grand Cherokee', 2021, 'Azul', 120000.00, 'https://cars.com/grandcherokee.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (16, 'Commander', 2025, 'Cinza', 130000.00, 'https://cars.com/commander.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (16, 'Gladiator', 2024, 'Verde', 140000.00, 'https://cars.com/gladiator.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (16, 'Patriot', 2023, 'Amarelo', 150000.00, 'https://cars.com/patriot.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (16, 'Liberty', 2022, 'Marrom', 160000.00, 'https://cars.com/liberty.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (16, 'Wagoneer', 2021, 'Roxo', 170000.00, 'https://cars.com/wagoneer.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (17, 'UX', 2025, 'Preto', 80000.00, 'https://cars.com/ux.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (17, 'NX', 2024, 'Branco', 90000.00, 'https://cars.com/nx.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (17, 'RX', 2023, 'Prata', 100000.00, 'https://cars.com/rx.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (17, 'GX', 2022, 'Vermelho', 110000.00, 'https://cars.com/gx.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (17, 'LX', 2021, 'Azul', 120000.00, 'https://cars.com/lx.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (17, 'IS', 2025, 'Cinza', 130000.00, 'https://cars.com/is.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (17, 'ES', 2024, 'Verde', 140000.00, 'https://cars.com/es.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (17, 'LS', 2023, 'Amarelo', 150000.00, 'https://cars.com/ls.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (17, 'RC', 2022, 'Marrom', 160000.00, 'https://cars.com/rc.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (17, 'LC', 2021, 'Roxo', 170000.00, 'https://cars.com/lc.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (18, 'Impreza', 2025, 'Preto', 80000.00, 'https://cars.com/impreza.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (18, 'Legacy', 2024, 'Branco', 90000.00, 'https://cars.com/legacy.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (18, 'Outback', 2023, 'Prata', 100000.00, 'https://cars.com/outback.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (18, 'Forester', 2022, 'Vermelho', 110000.00, 'https://cars.com/forester.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (18, 'XV', 2021, 'Azul', 120000.00, 'https://cars.com/xv.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (18, 'BRZ', 2025, 'Cinza', 130000.00, 'https://cars.com/brz.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (18, 'Levorg', 2024, 'Verde', 140000.00, 'https://cars.com/levorg.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (18, 'Ascent', 2023, 'Amarelo', 150000.00, 'https://cars.com/ascent.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (18, 'WRX', 2022, 'Marrom', 160000.00, 'https://cars.com/wrx.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (18, 'Crosstrek', 2021, 'Roxo', 170000.00, 'https://cars.com/crosstrek.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (19, 'Tiggo 2', 2025, 'Preto', 80000.00, 'https://cars.com/tiggo2.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (19, 'Tiggo 3X', 2024, 'Branco', 90000.00, 'https://cars.com/tiggo3x.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (19, 'Tiggo 5X', 2023, 'Prata', 100000.00, 'https://cars.com/tiggo5x.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (19, 'Tiggo 7', 2022, 'Vermelho', 110000.00, 'https://cars.com/tiggo7.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (19, 'Tiggo 8', 2021, 'Azul', 120000.00, 'https://cars.com/tiggo8.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (19, 'Arrizo 5', 2025, 'Cinza', 130000.00, 'https://cars.com/arrizo5.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (19, 'Arrizo 6', 2024, 'Verde', 140000.00, 'https://cars.com/arrizo6.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (19, 'Arrizo GX', 2023, 'Amarelo', 150000.00, 'https://cars.com/arrizogx.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (19, 'QQ', 2022, 'Marrom', 160000.00, 'https://cars.com/qq.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (19, 'eQ', 2021, 'Roxo', 170000.00, 'https://cars.com/eq.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (20, 'Coolray', 2025, 'Preto', 80000.00, 'https://cars.com/coolray.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (20, 'Azkarra', 2024, 'Branco', 90000.00, 'https://cars.com/azkarra.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (20, 'Emgrand', 2023, 'Prata', 100000.00, 'https://cars.com/emgrand.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (20, 'Okavango', 2022, 'Vermelho', 110000.00, 'https://cars.com/okavango.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (20, 'Panda', 2021, 'Azul', 120000.00, 'https://cars.com/panda.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (20, 'Binrui', 2025, 'Cinza', 130000.00, 'https://cars.com/binrui.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (20, 'Icon', 2024, 'Verde', 140000.00, 'https://cars.com/icon.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (20, 'Borui', 2023, 'Amarelo', 150000.00, 'https://cars.com/borui.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (20, 'X7', 2022, 'Marrom', 160000.00, 'https://cars.com/x7.jpg');
INSERT INTO Car (brand_id, model, year, color, price, photo) VALUES (20, 'FY11', 2021, 'Roxo', 170000.00, 'https://cars.com/fy11.jpg');
