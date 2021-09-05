CREATE TABLE `subjCardio`(
    `id` INT NOT NULL,
    `smoke` TINYINT(1) NOT NULL,
    `alchohol` TINYINT(1) NOT NULL,
    `active` TINYINT(1) NOT NULL
);
ALTER TABLE
    `subjCardio` ADD PRIMARY KEY `subjcardio_id_primary`(`id`);
CREATE TABLE `cardioObj`(
    `id` INT NOT NULL,
    `age` INT NOT NULL,
    `gender` VARCHAR(255) NOT NULL,
    `height` DOUBLE(8, 2) NOT NULL,
    `weight` DOUBLE(8, 2) NOT NULL,
    `cardiovascular` TINYINT(1) NOT NULL,
    `BMI` INT NOT NULL
);
ALTER TABLE
    `cardioObj` ADD PRIMARY KEY `cardioobj_id_primary`(`id`);
CREATE TABLE `examinCardio`(
    `id` INT NOT NULL,
    `ap_hi` INT NOT NULL,
    `ap_lo` INT NOT NULL,
    `cholestrol` VARCHAR(255) NOT NULL,
    `gloucose` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `examinCardio` ADD PRIMARY KEY `examincardio_id_primary`(`id`);