-- AlterTable
ALTER TABLE `attendance` MODIFY `userId` VARCHAR(191) NOT NULL,
    MODIFY `digitalSign` VARCHAR(191) NULL;

-- CreateTable
CREATE TABLE `AttendanceFile` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `fileType` VARCHAR(191) NOT NULL,
    `attendanceId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `AttendanceFile` ADD CONSTRAINT `AttendanceFile_attendanceId_fkey` FOREIGN KEY (`attendanceId`) REFERENCES `Attendance`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
