USE [Курсовая_работа]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 16.11.2022 21:15:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[id_администратора] [int] NULL,
	[Логин] [varchar](10) NULL,
	[Пароль] [varchar](4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Договоры]    Script Date: 16.11.2022 21:15:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Договоры](
	[id_договора] [int] NOT NULL,
	[id_сотрудника] [int] NULL,
	[id_отдела] [int] NULL,
 CONSTRAINT [PK_Договоры_сотрудников] PRIMARY KEY CLUSTERED 
(
	[id_договора] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Отделы]    Script Date: 16.11.2022 21:15:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Отделы](
	[id_отдела] [int] NOT NULL,
	[Количество_сотрудников] [varchar](50) NULL,
	[Название_отдела] [varchar](50) NULL,
 CONSTRAINT [PK_Отделы] PRIMARY KEY CLUSTERED 
(
	[id_отдела] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Поставщики]    Script Date: 16.11.2022 21:15:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Поставщики](
	[id_поставщика] [int] NOT NULL,
	[Название_предприятия] [varchar](50) NULL,
	[Количество_товаров] [varchar](50) NULL,
 CONSTRAINT [PK_Поставщики] PRIMARY KEY CLUSTERED 
(
	[id_поставщика] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Склады]    Script Date: 16.11.2022 21:15:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Склады](
	[id_склада] [int] NOT NULL,
	[Вместимость_товаров] [varchar](50) NULL,
 CONSTRAINT [PK_Склады] PRIMARY KEY CLUSTERED 
(
	[id_склада] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Сотрудники]    Script Date: 16.11.2022 21:15:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Сотрудники](
	[id_сотрудника] [int] NOT NULL,
	[Фамилия] [varchar](50) NULL,
	[Имя] [varchar](50) NULL,
	[Отчество] [varchar](50) NULL,
	[Пол] [varchar](1) NULL,
	[Дата_рождения] [date] NULL,
	[Телефон] [varchar](15) NULL,
	[Должность] [varchar](50) NULL,
 CONSTRAINT [PK_Сотрудники] PRIMARY KEY CLUSTERED 
(
	[id_сотрудника] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Техника]    Script Date: 16.11.2022 21:15:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Техника](
	[id_техники] [int] NOT NULL,
	[Тип_техники] [varchar](50) NULL,
	[Количество_товаров] [varchar](50) NULL,
	[Название_техники] [varchar](50) NULL,
 CONSTRAINT [PK_Вычислительная_техника] PRIMARY KEY CLUSTERED 
(
	[id_техники] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Учет]    Script Date: 16.11.2022 21:15:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Учет](
	[id_учета] [int] NOT NULL,
	[id_сотрудника] [int] NULL,
	[id_склада] [int] NULL,
	[id_поставщика] [int] NULL,
	[id_техники] [int] NULL,
	[Состояние_техники] [varchar](50) NULL,
	[Цена] [varchar](50) NULL,
	[Количество_товаров] [varchar](50) NULL,
 CONSTRAINT [PK_Учет] PRIMARY KEY CLUSTERED 
(
	[id_учета] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Договоры]  WITH CHECK ADD  CONSTRAINT [FK_Договоры_сотрудников_Отделы] FOREIGN KEY([id_отдела])
REFERENCES [dbo].[Отделы] ([id_отдела])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Договоры] CHECK CONSTRAINT [FK_Договоры_сотрудников_Отделы]
GO
ALTER TABLE [dbo].[Договоры]  WITH CHECK ADD  CONSTRAINT [FK_Договоры_сотрудников_Сотрудники] FOREIGN KEY([id_сотрудника])
REFERENCES [dbo].[Сотрудники] ([id_сотрудника])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Договоры] CHECK CONSTRAINT [FK_Договоры_сотрудников_Сотрудники]
GO
ALTER TABLE [dbo].[Учет]  WITH CHECK ADD  CONSTRAINT [FK_Учет_Поставщики] FOREIGN KEY([id_поставщика])
REFERENCES [dbo].[Поставщики] ([id_поставщика])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Учет] CHECK CONSTRAINT [FK_Учет_Поставщики]
GO
ALTER TABLE [dbo].[Учет]  WITH CHECK ADD  CONSTRAINT [FK_Учет_Склады] FOREIGN KEY([id_склада])
REFERENCES [dbo].[Склады] ([id_склада])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Учет] CHECK CONSTRAINT [FK_Учет_Склады]
GO
ALTER TABLE [dbo].[Учет]  WITH CHECK ADD  CONSTRAINT [FK_Учет_Сотрудники] FOREIGN KEY([id_сотрудника])
REFERENCES [dbo].[Сотрудники] ([id_сотрудника])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Учет] CHECK CONSTRAINT [FK_Учет_Сотрудники]
GO
ALTER TABLE [dbo].[Учет]  WITH CHECK ADD  CONSTRAINT [FK_Учет_Техника] FOREIGN KEY([id_техники])
REFERENCES [dbo].[Техника] ([id_техники])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Учет] CHECK CONSTRAINT [FK_Учет_Техника]
GO
