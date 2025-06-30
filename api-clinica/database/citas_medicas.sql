-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-06-2025 a las 08:13:34
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `citas_medicas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctor_schedule_days`
--

CREATE TABLE `doctor_schedule_days` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `use_id` bigint(20) UNSIGNED NOT NULL,
  `day` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctor_schedule_hours`
--

CREATE TABLE `doctor_schedule_hours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hour_start` varchar(50) NOT NULL,
  `hour_end` varchar(50) NOT NULL,
  `hour` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `doctor_schedule_hours`
--

INSERT INTO `doctor_schedule_hours` (`id`, `hour_start`, `hour_end`, `hour`, `created_at`, `updated_at`) VALUES
(1, '08:00:00', '08:15:00', '08', NULL, NULL),
(2, '08:15:00', '08:30:00', '08', NULL, NULL),
(3, '08:30:00', '08:45:00', '08', NULL, NULL),
(4, '08:45:00', '09:00:00', '08', NULL, NULL),
(5, '09:00:00', '09:15:00', '09', NULL, NULL),
(6, '09:15:00', '09:30:00', '09', NULL, NULL),
(7, '09:30:00', '09:45:00', '09', NULL, NULL),
(8, '09:45:00', '10:00:00', '09', NULL, NULL),
(9, '10:00:00', '10:15:00', '10', NULL, NULL),
(10, '10:15:00', '10:30:00', '10', NULL, NULL),
(11, '10:30:00', '10:45:00', '10', NULL, NULL),
(12, '10:45:00', '11:00:00', '10', NULL, NULL),
(13, '11:00:00', '11:15:00', '11', NULL, NULL),
(14, '11:15:00', '11:30:00', '11', NULL, NULL),
(15, '11:30:00', '11:45:00', '11', NULL, NULL),
(16, '11:45:00', '12:00:00', '11', NULL, NULL),
(17, '12:00:00', '12:15:00', '12', NULL, NULL),
(18, '12:15:00', '12:30:00', '12', NULL, NULL),
(19, '12:30:00', '12:45:00', '12', NULL, NULL),
(20, '12:45:00', '13:00:00', '12', NULL, NULL),
(21, '13:00:00', '13:15:00', '13', NULL, NULL),
(22, '13:15:00', '13:30:00', '13', NULL, NULL),
(23, '13:30:00', '13:45:00', '13', NULL, NULL),
(24, '13:45:00', '14:00:00', '13', NULL, NULL),
(25, '14:00:00', '14:15:00', '14', NULL, NULL),
(26, '14:15:00', '14:30:00', '14', NULL, NULL),
(27, '14:30:00', '14:45:00', '14', NULL, NULL),
(28, '14:45:00', '15:00:00', '14', NULL, NULL),
(29, '15:00:00', '15:15:00', '15', NULL, NULL),
(30, '15:15:00', '15:30:00', '15', NULL, NULL),
(31, '15:30:00', '15:45:00', '15', NULL, NULL),
(32, '15:45:00', '16:00:00', '15', NULL, NULL),
(33, '16:00:00', '16:15:00', '16', NULL, NULL),
(34, '16:15:00', '16:30:00', '16', NULL, NULL),
(35, '16:30:00', '16:45:00', '16', NULL, NULL),
(36, '16:45:00', '17:00:00', '16', NULL, NULL),
(37, '17:00:00', '17:15:00', '17', NULL, NULL),
(38, '17:15:00', '17:30:00', '17', NULL, NULL),
(39, '17:30:00', '17:45:00', '17', NULL, NULL),
(40, '17:45:00', '18:00:00', '17', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctor_schedule_join_hours`
--

CREATE TABLE `doctor_schedule_join_hours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctor_schedule_day_id` bigint(20) UNSIGNED NOT NULL,
  `doctor_schedule_hour_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_06_27_065225_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'register_rol', 'api', '2025-06-29 07:50:17', '2025-06-29 07:50:17'),
(2, 'list_rol', 'api', '2025-06-29 07:50:17', '2025-06-29 07:50:17'),
(3, 'edit_rol', 'api', '2025-06-29 07:50:17', '2025-06-29 07:50:17'),
(4, 'delete_rol', 'api', '2025-06-29 07:50:17', '2025-06-29 07:50:17'),
(5, 'register_doctor', 'api', '2025-06-29 07:50:17', '2025-06-29 07:50:17'),
(6, 'list_doctor', 'api', '2025-06-29 07:50:17', '2025-06-29 07:50:17'),
(7, 'edit_doctor', 'api', '2025-06-29 07:50:17', '2025-06-29 07:50:17'),
(8, 'delete_doctor', 'api', '2025-06-29 07:50:18', '2025-06-29 07:50:18'),
(9, 'profile_doctor', 'api', '2025-06-29 07:50:18', '2025-06-29 07:50:18'),
(10, 'register_patient', 'api', '2025-06-29 07:50:18', '2025-06-29 07:50:18'),
(11, 'list_patient', 'api', '2025-06-29 07:50:18', '2025-06-29 07:50:18'),
(12, 'edit_patient', 'api', '2025-06-29 07:50:18', '2025-06-29 07:50:18'),
(13, 'delete_patient', 'api', '2025-06-29 07:50:18', '2025-06-29 07:50:18'),
(14, 'profile_patient', 'api', '2025-06-29 07:50:18', '2025-06-29 07:50:18'),
(15, 'register_staff', 'api', '2025-06-29 07:50:18', '2025-06-29 07:50:18'),
(16, 'list_staff', 'api', '2025-06-29 07:50:18', '2025-06-29 07:50:18'),
(17, 'edit_staff', 'api', '2025-06-29 07:50:18', '2025-06-29 07:50:18'),
(18, 'delete_staff', 'api', '2025-06-29 07:50:18', '2025-06-29 07:50:18'),
(19, 'register_appointment', 'api', '2025-06-29 07:50:18', '2025-06-29 07:50:18'),
(20, 'list_appointment', 'api', '2025-06-29 07:50:18', '2025-06-29 07:50:18'),
(21, 'edit_appointment', 'api', '2025-06-29 07:50:18', '2025-06-29 07:50:18'),
(22, 'delete_appointment', 'api', '2025-06-29 07:50:18', '2025-06-29 07:50:18'),
(23, 'register_specialty', 'api', '2025-06-29 07:50:18', '2025-06-29 07:50:18'),
(24, 'list_specialty', 'api', '2025-06-29 07:50:18', '2025-06-29 07:50:18'),
(25, 'edit_specialty', 'api', '2025-06-29 07:50:18', '2025-06-29 07:50:18'),
(26, 'delete_specialty', 'api', '2025-06-29 07:50:18', '2025-06-29 07:50:18'),
(27, 'show_payment', 'api', '2025-06-29 07:50:18', '2025-06-29 07:50:18'),
(28, 'edit_payment', 'api', '2025-06-29 07:50:18', '2025-06-29 07:50:18'),
(29, 'activitie', 'api', '2025-06-29 07:50:18', '2025-06-29 07:50:18'),
(30, 'calendar', 'api', '2025-06-29 07:50:18', '2025-06-29 07:50:18'),
(31, 'expense_report', 'api', '2025-06-29 07:50:18', '2025-06-29 07:50:18'),
(32, 'invoice_report', 'api', '2025-06-29 07:50:18', '2025-06-29 07:50:18'),
(33, 'settings', 'api', '2025-06-29 07:50:18', '2025-06-29 07:50:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super-Admin', 'api', '2025-06-29 07:50:18', '2025-06-29 07:50:18'),
(2, 'prueba2', 'api', '2025-06-29 08:33:02', '2025-06-29 08:33:02'),
(3, 'DOCTOR', 'api', '2023-09-28 17:08:34', '2023-09-28 17:08:34'),
(4, 'ENFERMERO', 'api', '2023-09-28 17:10:34', '2023-09-28 17:10:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(2, 2),
(2, 3),
(3, 3),
(10, 4),
(11, 3),
(11, 4),
(12, 3),
(12, 4),
(13, 4),
(14, 3),
(14, 4),
(16, 2),
(19, 3),
(19, 4),
(20, 3),
(20, 4),
(21, 3),
(21, 4),
(22, 4),
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(30, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `specialities`
--

CREATE TABLE `specialities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `specialities`
--

INSERT INTO `specialities` (`id`, `name`, `state`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Anestesiologías', 1, '2023-10-04 07:18:43', '2023-10-04 07:22:16', NULL),
(2, 'Anatomía Patológica', 1, '2023-10-04 07:22:58', '2023-10-04 07:22:58', NULL),
(3, 'Cardiología Intervencionista', 1, '2023-10-04 07:23:05', '2023-10-04 07:23:05', NULL),
(4, 'Cirugía Pediátrica', 1, '2023-10-04 07:23:09', '2023-10-04 07:23:09', NULL),
(5, 'Cirugía General', 1, '2023-10-04 07:23:14', '2023-10-04 07:23:14', NULL),
(6, 'Dermatología', 1, '2023-10-04 07:23:21', '2023-10-04 07:23:21', NULL),
(7, 'Gastroenterología', 1, '2023-10-04 07:23:28', '2023-10-04 07:23:28', NULL),
(8, 'Ginegología y Obstetricia', 2, '2023-10-04 07:23:57', '2023-10-04 07:25:14', NULL),
(9, 'prueba20', 1, '2025-06-30 05:24:35', '2025-06-30 05:24:35', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(250) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `specialitie_id` bigint(20) UNSIGNED DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `birth_date` timestamp NULL DEFAULT NULL,
  `gender` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1 es masculino y 2 es femenino',
  `education` longtext DEFAULT NULL,
  `designation` longtext DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `avatar` varchar(250) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `email`, `specialitie_id`, `mobile`, `birth_date`, `gender`, `education`, `designation`, `address`, `avatar`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Super-Admin User', NULL, 'josecode@gmail.com', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2023-09-28 15:46:57', '$2y$10$iec5VX6w9B3vTEIurNIFMufNEK0ztwKOB4.NnIsRIc5GivpgrAozK', 'bkMYKIZInF', '2023-09-28 15:46:57', '2023-09-28 15:46:57', NULL),
(2, 'Cristopher antoni', 'alvarado Armas', 'ingeniebrios@alcoholizados.com', NULL, '947714624', '2000-11-12 17:00:00', 1, 'sdfdsfsdfsdf', 'sdfsdfsdfsd', 'Distrito Moche, Sector Poblado Miramar, Calle Crol', 'staffs/vh2HdrdoWgAKqV4VPgpZQp0russTVA5KTdciRdsJ.jpg', NULL, '$2y$10$YGZn/vYobNRxAQyzR2lvIOzJVIQolu4O4zhAR/RkuWt9NlewsrdQu', NULL, '2025-06-29 08:45:05', '2025-06-29 08:45:05', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `doctor_schedule_days`
--
ALTER TABLE `doctor_schedule_days`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `doctor_schedule_hours`
--
ALTER TABLE `doctor_schedule_hours`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `doctor_schedule_join_hours`
--
ALTER TABLE `doctor_schedule_join_hours`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `specialities`
--
ALTER TABLE `specialities`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `doctor_schedule_days`
--
ALTER TABLE `doctor_schedule_days`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `doctor_schedule_hours`
--
ALTER TABLE `doctor_schedule_hours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `doctor_schedule_join_hours`
--
ALTER TABLE `doctor_schedule_join_hours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `specialities`
--
ALTER TABLE `specialities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
