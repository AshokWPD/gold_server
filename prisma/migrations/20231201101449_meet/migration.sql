/*
  Warnings:

  - You are about to drop the column `membersAttended` on the `meeting` table. All the data in the column will be lost.
  - You are about to drop the column `membersAttendedId` on the `meeting` table. All the data in the column will be lost.
  - You are about to drop the column `membersId` on the `meeting` table. All the data in the column will be lost.
  - You are about to drop the column `membersListName` on the `meeting` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE `meeting` DROP COLUMN `membersAttended`,
    DROP COLUMN `membersAttendedId`,
    DROP COLUMN `membersId`,
    DROP COLUMN `membersListName`;

-- CreateTable
CREATE TABLE `MembersList` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `meetingId` VARCHAR(191) NOT NULL,
    `membersname` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `MembersAttended` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `meetingId` VARCHAR(191) NOT NULL,
    `membersName` VARCHAR(191) NOT NULL,
    `memberInTime` VARCHAR(191) NOT NULL,
    `memberOutTime` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `MembersList` ADD CONSTRAINT `MembersList_meetingId_fkey` FOREIGN KEY (`meetingId`) REFERENCES `Meeting`(`meetingId`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `MembersAttended` ADD CONSTRAINT `MembersAttended_meetingId_fkey` FOREIGN KEY (`meetingId`) REFERENCES `Meeting`(`meetingId`) ON DELETE RESTRICT ON UPDATE CASCADE;
