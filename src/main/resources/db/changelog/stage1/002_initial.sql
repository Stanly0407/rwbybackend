begin;

  -- ПУ-4! ФОРМА Ведомости учета рельсов, снятых с главных путей и приемо-тправочных путей по изломам, порокам и повреждениям, стр. 100 Форм
create table if not exists picked_rails (
 id bigint primary key auto_increment,
 out_date date,                        -- 2) Дата изъятия рельса
 track_number int,                     -- 3) № пути Места изъятия рельса
 kilometer int,                        -- 3) км Места изъятия рельса
 section_number int,                   -- 3) звено Места изъятия рельса
 out_reason varchar(255),              -- 4) Причина изъятия рельса (И, Д, О, С)
-- Характеристика снятых с пути рельсов:
 rail_type varchar(255),               -- 5) тип рельса (+ Б, У, С),
 rail_length INT,                      -- 5) длина рельса,
 rail_ref varchar(255),                -- 5) указание для рельса (Б - бесстыковый, У - уравнительный, С - сварной),
 factory_mark varchar(255),            -- 6) Марка завода,
 factory_year date,                    -- 6) Год прокатки,
 packing_date date,                    -- 7) Год укладки в данном месте рельса,
 packing_position varchar(255),        -- 7) В каком сосотоянии был уложен данный рельс (Н - новый, С - старогодный),
 tonnage INT,                          -- 8) Суммарный тоннаж, прошедший по рельсу с момента первичной укладки до его изъятия (млн. т. бр.),
 vertical_fretting INT,                -- 9) вертикальный износ, мм,
 side_fretting INT,                    -- 10) боковой износ, мм,
 code varchar(255),                    -- 11) код дефекта
-- Характеристика пути:
 profile_permille INT,                -- 12) Профиль пути в %о (в промилле),
 profile varchar(255),                -- 12) Профиль пути (П - подъем; С - спуск; Пл - площадка, У - уклон),
 track_plan varchar(255),             -- 13) План пути (Пр - прямая, Р - кривая),
 radius INT,                          -- 13) Величина радуиса наружного рельса,
 rise INT,                            -- 13) Величина возвышения наружного рельса,
 rail_slot varchar(255),              -- 14) Рельсовая нить (наружная, внутрення) - (НЕ правая/левая),
 ballast_kind varchar(255),           -- 15) Род балласта,
 tie_kind varchar(255),               -- 16) Род шпал (Д - деревянные, ЖБ - железобетонные),
 speed INT);                          -- 17) Скорость движения поездов пассажирских/ грузовых (км/ч).


commit;