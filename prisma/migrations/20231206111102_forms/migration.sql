/*
  Warnings:

  - You are about to drop the `attendance` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `attendancefile` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `attendancefile` DROP FOREIGN KEY `AttendanceFile_attendanceId_fkey`;

-- DropTable
DROP TABLE `attendance`;

-- DropTable
DROP TABLE `attendancefile`;

-- CreateTable
CREATE TABLE `Form` (
    `formId` INTEGER NOT NULL AUTO_INCREMENT,
    `formTitle` VARCHAR(191) NOT NULL,
    `formResult` VARCHAR(191) NOT NULL,
    `username` VARCHAR(191) NOT NULL,
    `userId` VARCHAR(191) NOT NULL,
    `dateAndTime` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NOT NULL,
    `status` VARCHAR(191) NOT NULL,
    `q1` VARCHAR(191) NOT NULL,
    `q2` VARCHAR(191) NOT NULL,
    `q3` VARCHAR(191) NOT NULL,
    `q4` VARCHAR(191) NOT NULL,
    `q5` VARCHAR(191) NOT NULL,
    `q6` VARCHAR(191) NOT NULL,
    `q7` VARCHAR(191) NOT NULL,
    `q8` VARCHAR(191) NOT NULL,
    `q9` VARCHAR(191) NOT NULL,
    `q10` VARCHAR(191) NOT NULL,
    `q11` VARCHAR(191) NOT NULL,
    `q12` VARCHAR(191) NOT NULL,
    `q13` VARCHAR(191) NOT NULL,
    `q14` VARCHAR(191) NOT NULL,
    `q15` VARCHAR(191) NOT NULL,
    `q16` VARCHAR(191) NOT NULL,
    `q17` VARCHAR(191) NOT NULL,
    `q18` VARCHAR(191) NOT NULL,
    `q19` VARCHAR(191) NOT NULL,
    `q20` VARCHAR(191) NOT NULL,
    `q21` VARCHAR(191) NOT NULL,
    `q22` VARCHAR(191) NOT NULL,
    `q23` VARCHAR(191) NOT NULL,
    `q24` VARCHAR(191) NOT NULL,
    `q25` VARCHAR(191) NOT NULL,
    `q26` VARCHAR(191) NOT NULL,
    `q27` VARCHAR(191) NOT NULL,
    `q28` VARCHAR(191) NOT NULL,
    `q29` VARCHAR(191) NOT NULL,
    `q30` VARCHAR(191) NOT NULL,
    `q31` VARCHAR(191) NOT NULL,
    `q32` VARCHAR(191) NOT NULL,
    `q33` VARCHAR(191) NOT NULL,
    `q34` VARCHAR(191) NOT NULL,
    `q35` VARCHAR(191) NOT NULL,
    `q36` VARCHAR(191) NOT NULL,
    `q37` VARCHAR(191) NOT NULL,
    `q38` VARCHAR(191) NOT NULL,
    `q39` VARCHAR(191) NOT NULL,
    `q40` VARCHAR(191) NOT NULL,
    `q41` VARCHAR(191) NOT NULL,
    `q42` VARCHAR(191) NOT NULL,
    `q43` VARCHAR(191) NOT NULL,
    `q44` VARCHAR(191) NOT NULL,
    `q45` VARCHAR(191) NOT NULL,
    `q46` VARCHAR(191) NOT NULL,
    `q47` VARCHAR(191) NOT NULL,
    `q48` VARCHAR(191) NOT NULL,
    `q49` VARCHAR(191) NOT NULL,
    `q50` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`formId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
