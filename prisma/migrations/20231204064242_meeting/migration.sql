/*
  Warnings:

  - Added the required column `dateTime` to the `MembersAttended` table without a default value. This is not possible if the table is not empty.
  - Added the required column `latitude` to the `MembersAttended` table without a default value. This is not possible if the table is not empty.
  - Added the required column `longitude` to the `MembersAttended` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `membersattended` ADD COLUMN `dateTime` DATETIME(3) NOT NULL,
    ADD COLUMN `latitude` DOUBLE NOT NULL,
    ADD COLUMN `longitude` DOUBLE NOT NULL;
