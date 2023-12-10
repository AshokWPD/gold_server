/*
  Warnings:

  - The primary key for the `meeting` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `meeting` table. All the data in the column will be lost.
  - You are about to alter the column `meetingId` on the `meeting` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.
  - You are about to alter the column `attId` on the `meeting` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.
  - The primary key for the `membersattended` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `membersattended` table. All the data in the column will be lost.
  - You are about to alter the column `meetingId` on the `membersattended` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.
  - You are about to alter the column `memberInTime` on the `membersattended` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `DateTime(3)`.
  - You are about to alter the column `memberOutTime` on the `membersattended` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `DateTime(3)`.
  - You are about to alter the column `memberId` on the `membersattended` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.
  - The primary key for the `memberslist` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `memberslist` table. All the data in the column will be lost.
  - You are about to drop the column `membersname` on the `memberslist` table. All the data in the column will be lost.
  - You are about to alter the column `meetingId` on the `memberslist` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.
  - You are about to alter the column `memberId` on the `memberslist` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.
  - Changed the type of `meetingTime` on the `meeting` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Added the required column `attendanceId` to the `MembersAttended` table without a default value. This is not possible if the table is not empty.
  - Added the required column `memberName` to the `MembersList` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `membersattended` DROP FOREIGN KEY `MembersAttended_meetingId_fkey`;

-- DropForeignKey
ALTER TABLE `memberslist` DROP FOREIGN KEY `MembersList_meetingId_fkey`;

-- DropIndex
DROP INDEX `Meeting_meetingId_key` ON `meeting`;

-- AlterTable
ALTER TABLE `meeting` DROP PRIMARY KEY,
    DROP COLUMN `id`,
    MODIFY `meetingId` INTEGER NOT NULL AUTO_INCREMENT,
    DROP COLUMN `meetingTime`,
    ADD COLUMN `meetingTime` INTEGER NOT NULL,
    MODIFY `attId` INTEGER NULL,
    ADD PRIMARY KEY (`meetingId`);

-- AlterTable
ALTER TABLE `membersattended` DROP PRIMARY KEY,
    DROP COLUMN `id`,
    ADD COLUMN `attendanceId` INTEGER NOT NULL AUTO_INCREMENT,
    MODIFY `meetingId` INTEGER NOT NULL,
    MODIFY `memberInTime` DATETIME(3) NOT NULL,
    MODIFY `memberOutTime` DATETIME(3) NOT NULL,
    MODIFY `memberId` INTEGER NOT NULL,
    MODIFY `latitude` DECIMAL(65, 30) NOT NULL,
    MODIFY `longitude` DECIMAL(65, 30) NOT NULL,
    ADD PRIMARY KEY (`attendanceId`);

-- AlterTable
ALTER TABLE `memberslist` DROP PRIMARY KEY,
    DROP COLUMN `id`,
    DROP COLUMN `membersname`,
    ADD COLUMN `memberName` VARCHAR(191) NOT NULL,
    MODIFY `meetingId` INTEGER NOT NULL,
    MODIFY `memberId` INTEGER NOT NULL AUTO_INCREMENT,
    ADD PRIMARY KEY (`memberId`);

-- CreateTable
CREATE TABLE `DigitalSignatureFile` (
    `fileId` INTEGER NOT NULL AUTO_INCREMENT,
    `attendanceId` INTEGER NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `fileType` VARCHAR(191) NOT NULL,
    `path` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `DigitalSignatureFile_attendanceId_key`(`attendanceId`),
    PRIMARY KEY (`fileId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `MembersList` ADD CONSTRAINT `MembersList_meetingId_fkey` FOREIGN KEY (`meetingId`) REFERENCES `Meeting`(`meetingId`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `MembersAttended` ADD CONSTRAINT `MembersAttended_meetingId_fkey` FOREIGN KEY (`meetingId`) REFERENCES `Meeting`(`meetingId`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `MembersAttended` ADD CONSTRAINT `MembersAttended_memberId_fkey` FOREIGN KEY (`memberId`) REFERENCES `MembersList`(`memberId`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `DigitalSignatureFile` ADD CONSTRAINT `DigitalSignatureFile_attendanceId_fkey` FOREIGN KEY (`attendanceId`) REFERENCES `MembersAttended`(`attendanceId`) ON DELETE RESTRICT ON UPDATE CASCADE;
