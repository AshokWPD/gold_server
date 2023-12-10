/*
  Warnings:

  - Added the required column `memberId` to the `MembersAttended` table without a default value. This is not possible if the table is not empty.
  - Added the required column `memberId` to the `MembersList` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `membersattended` ADD COLUMN `memberId` VARCHAR(191) NOT NULL;

-- AlterTable
ALTER TABLE `memberslist` ADD COLUMN `memberId` VARCHAR(191) NOT NULL;
