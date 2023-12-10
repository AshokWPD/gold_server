-- CreateTable
CREATE TABLE `Meeting` (
    `meetingId` INTEGER NOT NULL AUTO_INCREMENT,
    `meetCreater` VARCHAR(191) NOT NULL,
    `meetDateTime` DATETIME(3) NOT NULL,
    `meetTitle` VARCHAR(191) NOT NULL,
    `meetingTime` INTEGER NOT NULL,
    `department` VARCHAR(191) NOT NULL,
    `createrId` INTEGER NOT NULL,
    `membersCount` INTEGER NOT NULL,
    `isOnline` BOOLEAN NOT NULL,
    `attId` INTEGER NULL,
    `meetEndTime` DATETIME(3) NOT NULL,

    PRIMARY KEY (`meetingId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `MembersList` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `memberId` VARCHAR(191) NOT NULL,
    `memberName` VARCHAR(191) NOT NULL,
    `meetingId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `MembersAttended` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `memberId` INTEGER NOT NULL,
    `membersName` VARCHAR(191) NOT NULL,
    `memberInTime` DATETIME(3) NOT NULL,
    `memberOutTime` DATETIME(3) NOT NULL,
    `dateTime` DATETIME(3) NOT NULL,
    `latitude` DECIMAL(65, 30) NOT NULL,
    `longitude` DECIMAL(65, 30) NOT NULL,
    `meetingId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `DigitalSignatureFile` (
    `fileId` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `fileType` VARCHAR(191) NOT NULL,
    `path` VARCHAR(191) NOT NULL,
    `attendanceId` INTEGER NOT NULL,

    UNIQUE INDEX `DigitalSignatureFile_attendanceId_key`(`attendanceId`),
    PRIMARY KEY (`fileId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

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
    `q1` VARCHAR(191) NULL,
    `q2` VARCHAR(191) NULL,
    `q3` VARCHAR(191) NULL,
    `q4` VARCHAR(191) NULL,
    `q5` VARCHAR(191) NULL,
    `q6` VARCHAR(191) NULL,
    `q7` VARCHAR(191) NULL,
    `q8` VARCHAR(191) NULL,
    `q9` VARCHAR(191) NULL,
    `q10` VARCHAR(191) NULL,
    `q11` VARCHAR(191) NULL,
    `q12` VARCHAR(191) NULL,
    `q13` VARCHAR(191) NULL,
    `q14` VARCHAR(191) NULL,
    `q15` VARCHAR(191) NULL,
    `q16` VARCHAR(191) NULL,
    `q17` VARCHAR(191) NULL,
    `q18` VARCHAR(191) NULL,
    `q19` VARCHAR(191) NULL,
    `q20` VARCHAR(191) NULL,
    `q21` VARCHAR(191) NULL,
    `q22` VARCHAR(191) NULL,
    `q23` VARCHAR(191) NULL,
    `q24` VARCHAR(191) NULL,
    `q25` VARCHAR(191) NULL,
    `q26` VARCHAR(191) NULL,
    `q27` VARCHAR(191) NULL,
    `q28` VARCHAR(191) NULL,
    `q29` VARCHAR(191) NULL,
    `q30` VARCHAR(191) NULL,
    `q31` VARCHAR(191) NULL,
    `q32` VARCHAR(191) NULL,
    `q33` VARCHAR(191) NULL,
    `q34` VARCHAR(191) NULL,
    `q35` VARCHAR(191) NULL,
    `q36` VARCHAR(191) NULL,
    `q37` VARCHAR(191) NULL,
    `q38` VARCHAR(191) NULL,
    `q39` VARCHAR(191) NULL,
    `q40` VARCHAR(191) NULL,
    `q41` VARCHAR(191) NULL,
    `q42` VARCHAR(191) NULL,
    `q43` VARCHAR(191) NULL,
    `q44` VARCHAR(191) NULL,
    `q45` VARCHAR(191) NULL,
    `q46` VARCHAR(191) NULL,
    `q47` VARCHAR(191) NULL,
    `q48` VARCHAR(191) NULL,
    `q49` VARCHAR(191) NULL,
    `q50` VARCHAR(191) NULL,

    PRIMARY KEY (`formId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `MembersList` ADD CONSTRAINT `MembersList_meetingId_fkey` FOREIGN KEY (`meetingId`) REFERENCES `Meeting`(`meetingId`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `MembersAttended` ADD CONSTRAINT `MembersAttended_meetingId_fkey` FOREIGN KEY (`meetingId`) REFERENCES `Meeting`(`meetingId`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `DigitalSignatureFile` ADD CONSTRAINT `DigitalSignatureFile_attendanceId_fkey` FOREIGN KEY (`attendanceId`) REFERENCES `MembersAttended`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
