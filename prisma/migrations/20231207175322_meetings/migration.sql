/*
  Warnings:

  - You are about to drop the `digitalsignaturefile` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `form` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `meeting` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `membersattended` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `memberslist` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `digitalsignaturefile` DROP FOREIGN KEY `DigitalSignatureFile_attendanceId_fkey`;

-- DropForeignKey
ALTER TABLE `membersattended` DROP FOREIGN KEY `MembersAttended_meetingId_fkey`;

-- DropForeignKey
ALTER TABLE `memberslist` DROP FOREIGN KEY `MembersList_meetingId_fkey`;

-- DropTable
DROP TABLE `digitalsignaturefile`;

-- DropTable
DROP TABLE `form`;

-- DropTable
DROP TABLE `meeting`;

-- DropTable
DROP TABLE `membersattended`;

-- DropTable
DROP TABLE `memberslist`;
