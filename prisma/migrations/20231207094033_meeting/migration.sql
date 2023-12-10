/*
  Warnings:

  - The primary key for the `membersattended` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `attendanceId` on the `membersattended` table. All the data in the column will be lost.
  - The primary key for the `memberslist` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - Added the required column `id` to the `MembersAttended` table without a default value. This is not possible if the table is not empty.
  - Added the required column `id` to the `MembersList` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `digitalsignaturefile` DROP FOREIGN KEY `DigitalSignatureFile_attendanceId_fkey`;

-- DropForeignKey
ALTER TABLE `membersattended` DROP FOREIGN KEY `MembersAttended_memberId_fkey`;

-- AlterTable
ALTER TABLE `membersattended` DROP PRIMARY KEY,
    DROP COLUMN `attendanceId`,
    ADD COLUMN `id` INTEGER NOT NULL AUTO_INCREMENT,
    ADD PRIMARY KEY (`id`);

-- AlterTable
ALTER TABLE `memberslist` DROP PRIMARY KEY,
    ADD COLUMN `id` INTEGER NOT NULL AUTO_INCREMENT,
    MODIFY `memberId` VARCHAR(191) NOT NULL,
    ADD PRIMARY KEY (`id`);

-- AddForeignKey
ALTER TABLE `DigitalSignatureFile` ADD CONSTRAINT `DigitalSignatureFile_attendanceId_fkey` FOREIGN KEY (`attendanceId`) REFERENCES `MembersAttended`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
