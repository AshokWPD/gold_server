-- CreateTable
CREATE TABLE `Meeting` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `meetingId` VARCHAR(191) NOT NULL,
    `meetCreater` VARCHAR(191) NOT NULL,
    `meetDateTime` DATETIME(3) NOT NULL,
    `meetTitle` VARCHAR(191) NOT NULL,
    `meetingTime` DATETIME(3) NOT NULL,
    `department` VARCHAR(191) NOT NULL,
    `createrId` INTEGER NOT NULL,
    `membersCount` INTEGER NOT NULL,
    `membersListName` VARCHAR(191) NOT NULL,
    `membersAttended` VARCHAR(191) NOT NULL,
    `isOnline` BOOLEAN NOT NULL,
    `membersId` INTEGER NOT NULL,
    `membersAttendedId` INTEGER NOT NULL,
    `attId` VARCHAR(191) NOT NULL,
    `meetEndTime` DATETIME(3) NOT NULL,

    UNIQUE INDEX `Meeting_meetingId_key`(`meetingId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
