CREATE DATABASE [ReadingList]
GO
USE [ReadingList]
GO

CREATE TABLE [Author](
	[authorId] [int] IDENTITY(1,1) NOT NULL,
	[authorName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED 
(
	[authorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Book](
	[bookId] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](255) NOT NULL,
	[pages] [int] NOT NULL,
	[subcategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[bookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [BookAuthor](
	[bookId] [int] NOT NULL,
	[authorId] [int] NOT NULL,
	[authorOrder] [int] NOT NULL,
 CONSTRAINT [PK_BookAuthor] PRIMARY KEY CLUSTERED 
(
	[bookId] ASC,
	[authorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [BookRead](
	[bookReadId] [int] IDENTITY(1,1) NOT NULL,
	[bookId] [int] NOT NULL,
	[yearRead] [int] NOT NULL,
	[readingOrder] [int] NOT NULL,
	[currentlyReading] [bit] NOT NULL,
 CONSTRAINT [PK_BookRead] PRIMARY KEY CLUSTERED 
(
	[bookReadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Category](
	[categoryId] [int] NOT NULL,
	[categoryName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[categoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Subcategory](
	[subcategoryId] [int] NOT NULL,
	[categoryId] [int] NOT NULL,
	[subcategoryName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Subcategory] PRIMARY KEY CLUSTERED 
(
	[subcategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Author] ON 
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1, N'A. A. Milne')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (2, N'A. B. Poland')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (3, N'A. Douglas Stone')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4, N'A. N. Wilson')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (5, N'A. W. Tozer')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (6, N'Adam Plantinga')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (7, N'Aesop')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (8, N'Agnes Savill')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (9, N'Alan Cutler')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (10, N'Alan S. Miller ')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (11, N'Alan Weisman')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (12, N'Albert Einstein')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (13, N'Albert Gore')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (14, N'Albert-Laszlo Barabasi')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (15, N'Aldous Huxley')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (16, N'Alexandre Dumas')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (17, N'Ali Velshi')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (18, N'Amir D. Aczel')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (19, N'Andy Weir')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (20, N'Angie Thomas')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (21, N'Anne Lamott')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (22, N'Anne Robert Jacques Turgot')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (23, N'Anonymous')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (24, N'Anthony Giddens')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (25, N'Antonio Garcia Martinez')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (26, N'Antonio Mendez')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (27, N'Antony Beevor')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (28, N'Aristotle')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (29, N'Arthur Ransome')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (30, N'Augusten Burroughs')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (31, N'Ayn Rand')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (32, N'Barbara Freese')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (33, N'Barbara Oakley')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (34, N'Bart Ehrman')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (35, N'Barton Gellman')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (36, N'Ben Bova')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (37, N'Benjamin Franklin')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (38, N'Benjamin Wiker')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (39, N'Bernard Cornwell')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (40, N'Bertrand Russell')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (41, N'Bill Bryson')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (42, N'Bill Clinton')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (43, N'Bill Nye')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (44, N'Bill Wasik')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (45, N'Bill Wiese')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (46, N'Brendan Moynihan')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (47, N'Brian Greene')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (48, N'Burton E. Stevenson')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (49, N'Burton G. Malkiel')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (50, N'C. S. Lewis')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (51, N'Cass R. Sunstein')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (52, N'Charlaine Harris')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (53, N'Charles Darwin')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (54, N'Charles Dickens')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (55, N'Charles Homer Haskins')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (56, N'Charles MacKay')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (57, N'Charlotte Bronte')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (58, N'Chip Heath')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (59, N'Chris Hadfield')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (60, N'Christopher Elwood')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (61, N'Christopher Lee')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (62, N'Christopher Moore')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (63, N'Clark Howard')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (64, N'Clifford D. Simak')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (65, N'Confucius')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (66, N'Corey Olsen')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (67, N'Cornel West')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (68, N'D. H. Lawrence')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (69, N'Dalai Lama')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (70, N'Dan Ariely')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (71, N'Dan Brown')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (72, N'Dan Heath')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (73, N'Dan Savage')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (74, N'Daniel Altman')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (75, N'Daniel Defoe')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (76, N'Daniel Kahneman')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (77, N'Daniel Keyes')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (78, N'Daniella Martin')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (79, N'Dante Alighieri')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (80, N'Dava Sobel')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (81, N'David A. Lax')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (82, N'David A. Vise')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (83, N'David Bodanis')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (84, N'David Brooks')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (85, N'David Bunnell')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (86, N'David Eagleman')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (87, N'David J. Linden')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (88, N'David Kaiser')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (89, N'David Lagercrantz')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (90, N'David Leigh')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (91, N'David Lindley')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (92, N'David McCullough')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (93, N'David Rakoff')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (94, N'Deborah Strober')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (95, N'Deepak Malhotra')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (96, N'Don Piper')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (97, N'Douglas Adams')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (98, N'Drew Gilpin Faust')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (99, N'Dumas Malone')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (100, N'E. M. Forster')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (101, N'Eckhart Tolle')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (102, N'Ed Brodow')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (103, N'Edgar Allan Poe')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (104, N'Edgar Rice Burroughs')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (105, N'Edward Dolnick')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (106, N'Edward O. Wilson')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (107, N'Emily Ross')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (108, N'Eoin Colfer')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (109, N'Eric Janszen')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (110, N'Eric Schmidt')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (111, N'Eric Van Lustbader')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (112, N'Ernest Becker')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (113, N'Ernle Bradford')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (114, N'F. Scott Fitzgerald')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (115, N'Francis S. Collins')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (116, N'Frank Close')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (117, N'Frank Giles')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (118, N'Frank Herbert')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (119, N'Frans De Waal')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (120, N'Frederick Douglass')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (121, N'Fyodor Dostoevsky')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (122, N'G. K. Chesterton')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (123, N'Gene Simmons')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (124, N'Geoffrey Chaucer')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (125, N'George Bernard Shaw')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (126, N'George Cary Eggleston')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (127, N'George Clayton Johnson')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (128, N'George Friedman')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (129, N'George H. Smith')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (130, N'George Musser')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (131, N'George Orwell')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (132, N'George R. R. Martin')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (133, N'George Saunders')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (134, N'George Soros')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (135, N'George W. Bush')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (136, N'Gerald Strober')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (137, N'Gordon Brittan')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (138, N'Gordon Wood')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (139, N'Gustave Flaubert')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (140, N'H. A. Guerber')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (141, N'H. G. Wells')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (142, N'H. L. Mencken')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (143, N'Harlow Giles Unger')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (144, N'Harper Lee')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (145, N'Harriet Beecher Stowe')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (146, N'Harriet Jacobs')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (147, N'Heidi Grant Halvorson')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (148, N'Heinrich Fraenkel')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (149, N'Henry Bushkin')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (150, N'Henry Cloud')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (151, N'Henry David Thoreau')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (152, N'Henry James')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (153, N'Henry Ketcham')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (154, N'Henry Petroski')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (155, N'Henry Rider Haggard')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (156, N'Herbert Spencer')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (157, N'Herman Melville')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (158, N'Homer')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (159, N'Hooman Majd')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (160, N'Horace Walpole')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (161, N'Howard Evans')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (162, N'Howard Pyle')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (163, N'Ian Ayres')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (164, N'Ian Doescher')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (165, N'Ian Fleming')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (166, N'Ian Jackson')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (167, N'Ioan Grillo')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (168, N'Isaac Asimov')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (169, N'J. A. Morrison')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (170, N'J. B. West')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (171, N'J. D. Salinger')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (172, N'J. K. Rowling')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (173, N'J. M. Barrie')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (174, N'J. R. R. Tolkien')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (175, N'Jack Kerouac')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (176, N'Jack London')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (177, N'Jack Sommer')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (178, N'Jack Weatherford')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (179, N'Jack Welch')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (180, N'Jacob Abbott')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (181, N'Jacob Bronowski')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (182, N'James A. Crutchfield')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (183, N'James C. Humes')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (184, N'James Gleick')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (185, N'James Joyce')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (186, N'James K. Sebenius')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (187, N'James Surowiecki')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (188, N'James Trefil')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (189, N'Jane Austen')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (190, N'Jane Dunn')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (191, N'Janet Lembke')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (192, N'Jared Diamond')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (193, N'Jaron Lanier')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (194, N'Jean Craighead George')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (195, N'Jean M. Auel')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (196, N'Jeff VanderMeer')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (197, N'Jeff Warren')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (198, N'Jeffrey J. Selingo')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (199, N'Jen Sincero')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (200, N'Jerry Pournelle')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (201, N'Jim Baggott')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (202, N'Jim Paul')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (203, N'Johann D. Wyss')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (204, N'John C. Bogle')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (205, N'John Cornwell')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (206, N'John Ford')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (207, N'John Fowles')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (208, N'John H. Haaren')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (209, N'John Howard Griffin')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (210, N'John Izzo')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (211, N'John Keegan')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (212, N'John Lanchester')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (213, N'John McCain')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (214, N'John Milton')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (215, N'John Morley')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (216, N'John Muir')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (217, N'John R. Lott Jr.')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (218, N'John Scalzi')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (219, N'John Smolens')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (220, N'John Steinbeck')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (221, N'John Stuart Mill')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (222, N'Jon Krakauer')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (223, N'Jon Stewart')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (224, N'Jonah Lehrer')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (225, N'Jonathan Rosenberg')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (226, N'Jonathan Wells')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (227, N'Joseph Conrad')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (228, N'Joseph Heller')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (229, N'Joseph Smith')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (230, N'Jules Verne')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (231, N'Julie Bick')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (232, N'Justin Halpern')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (233, N'Kate Mulgrew')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (234, N'Katharine Berry Judson')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (235, N'Kathryn Lasky')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (236, N'Keith Thomson')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (237, N'Kimberly Rae Miller')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (238, N'Kingsley Amis')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (239, N'Kwame Anthony Appiah')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (240, N'L. Frank Baum')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (241, N'Larry Niven')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (242, N'Lauren Weber')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (243, N'Laurence Gonzales')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (244, N'Lawrence M. Krauss')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (245, N'Lee Nelson')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (246, N'Leigh L. Thompson')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (247, N'Leonard Mlodinow')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (248, N'Leonard Susskind')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (249, N'Lewis Carroll')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (250, N'Lewis Thomas')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (251, N'Liz Weston')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (252, N'Lucy Maud Montgomery')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (253, N'Luke Harding')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (254, N'Lydia Denwoth')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (255, N'Lyndsay Faye')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (256, N'Lynne McTaggart')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (257, N'Malcolm Gladwell')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (258, N'Manjit Kumar')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (259, N'Marc Morris')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (260, N'Marcel Proust')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (261, N'Marcelo Gleiser')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (262, N'Marcus Aurelius')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (263, N'Mark Kurlansky')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (264, N'Mark Manson')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (265, N'Mark Owen')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (266, N'Mark Skousen')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (267, N'Mark Sundeen')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (268, N'Mark Twain')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (269, N'Martin Ford')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (270, N'Martin Lindstrom')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (271, N'Mary J. MacLeod')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (272, N'Mary Norton')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (273, N'Mary Roach')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (274, N'Mary Shelly')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (275, N'Matthew Blakeslee')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (276, N'Matthew Brzezinski')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (277, N'Matthew Lewin')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (278, N'Matthew Quick')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (279, N'Max Bazerman')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (280, N'Michael Bond')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (281, N'Michael Brooks')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (282, N'Michael Ende')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (283, N'Michael Lewis')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (284, N'Michael Masterson')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (285, N'Michael Morpurgo')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (286, N'Michael Pollan')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (287, N'Michael Robertson')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (288, N'Michael S. Gazzaniga')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (289, N'Michio Kaku')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (290, N'Mike Veeck')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (291, N'Milton Friedman')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (292, N'Morton A. Meyers')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (293, N'Muhammad')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (294, N'Muhammad Yunus')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (295, N'Natalie Angier')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (296, N'Natan Sharansky')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (297, N'Nathaniel Hawthorne')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (298, N'Nathaniel Philbrick')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (299, N'Neil Fiore')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (300, N'Neil Shubin')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (301, N'Nicolo Machiavelli')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (302, N'Noam Chomsky')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (303, N'Oliver Sacks')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (304, N'Orson Scott Card')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (305, N'Oscar Wilde')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (306, N'Patrick K. O''Donnell')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (307, N'Patrick O''Brian')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (308, N'Percival Wren')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (309, N'Perry Keenlyside')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (310, N'Peter Krass')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (311, N'Peter Macinnis')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (312, N'Phil Mason')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (313, N'Phil Rosenzweig')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (314, N'Philip A. Fisher')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (315, N'Philip Delves Broughton')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (316, N'Philip Freiherr Von Boeselager')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (317, N'Philip Kerr')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (318, N'Philip Norman')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (319, N'Philip Pullman')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (320, N'Plato')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (321, N'Publius Cornelius Tacitus')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (322, N'R. H. J.')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (323, N'R. L. Adams')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (324, N'Rachel Botsman')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (325, N'Rachel Maddow')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (326, N'Randall Munroe')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (327, N'Randy Pausch')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (328, N'Ray Bradbury')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (329, N'Ray Kurzweil')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (330, N'Rebecca Skloot')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (331, N'Reza Aslan')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (332, N'Richard Dawkins')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (333, N'Richard E. Nisbett')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (334, N'Richard Feynman')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (335, N'Richard H. Thaler')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (336, N'Richard Holmes')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (337, N'Richard Panek')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (338, N'Richard Preston')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (339, N'Richard Wheeler')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (340, N'Rick Warren')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (341, N'Rob Salkowitz')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (342, N'Robert G. Hagstrom')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (343, N'Robert Greenberg')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (344, N'Robert Louis Stevenson')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (345, N'Robert Ludlum')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (346, N'Robert M. Hazen')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (347, N'Robert M. Pirsig')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (348, N'Robert M. Sapolsky')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (349, N'Robert Rutland')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (350, N'Robert Scoble')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (351, N'Robert T. Kiyosaki')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (352, N'Roger Dawson')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (353, N'Roger Lowenstein')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (354, N'Roger Manvell')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (355, N'Roger White')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (356, N'Roo Rogers')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (357, N'Rudyard Kipling')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (358, N'S. Baring-Gould')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (359, N'Saint Augustine of Hippo')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (360, N'Sam Gosling')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (361, N'Sam Sheridan')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (362, N'Sandra Blakeslee')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (363, N'Satoshi Kanazawa')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (364, N'Saul Bellow')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (365, N'Sean Carroll')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (366, N'Seth Andrews')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (367, N'Shelby Foote')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (368, N'Sherwin B. Nuland')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (369, N'Simon Winchester')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (370, N'Sir Arthur Conan Doyle')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (371, N'Sir Thomas More')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (372, N'Sloane Crosley')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (373, N'Solomon Northup')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (374, N'Sophocles')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (375, N'Stephen Chbosky')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (376, N'Stephen Crane')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (377, N'Stephen Dando-Collins')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (378, N'Stephen Hawking')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (379, N'Stephen J. Dubner')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (380, N'Stephen Jay Gould')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (381, N'Stephen Kinzer')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (382, N'Stephen L. Sass')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (383, N'Stephen Wolinsky')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (384, N'Steven D. Levitt')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (385, N'Steven Johnson')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (386, N'Steven Pinker')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (387, N'Steven Weinberg')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (388, N'Stieg Larsson')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (389, N'Sue Halpern')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (390, N'Suetonius')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (391, N'Suki Kim')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (392, N'Sun-Tzu')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (393, N'Suzanne Collins')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (394, N'Suzy Welch')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (395, N'Ted Kerasote')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (396, N'Terry Goodkind')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (397, N'Thomas Ayres')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (398, N'Thomas Friedman')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (399, N'Thomas Hardy')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (400, N'Thomas Henry Huxley')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (401, N'Thomas Hodgkin')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (402, N'Thomas Paine')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (403, N'Thomas Penson de Quincey')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (404, N'Thomas Piketty')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (405, N'Thomas Sowell')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (406, N'Thornton W. Burgess')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (407, N'Thornton Wilder')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (408, N'Tim Harford')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (409, N'Tim Kreider')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (410, N'Tim Rowland')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (411, N'Timothy Ferris')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (412, N'Tom Kelley')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (413, N'Toni Morrison')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (414, N'Upton Sinclair')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (415, N'Veronica Roth')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (416, N'Viktor E. Frankl')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (417, N'Virginia Woolf')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (418, N'Voltaire')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (419, N'Vyasa')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (420, N'W. E. B. Du Bois')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (421, N'Wael Ghonim')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (422, N'Walter Isaacson')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (423, N'Warren Berger')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (424, N'Warren C. Zabloudil')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (425, N'Washington Irving')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (426, N'William A. Dembski')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (427, N'William Bligh')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (428, N'William F. Cody')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (429, N'William F. Nolan')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (430, N'William Golding')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (431, N'William Holden Hutton')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (432, N'William Shakespeare')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (433, N'William Shatner')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (434, N'William Walker Atkinson')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (435, N'Wilson Rawls')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (436, N'Yann Martel')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (437, N'Shel Israel')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (438, N'Jimmy Soni')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (439, N'Rob Goodman')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (440, N'Dennis E. Taylor')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (441, N'Desmond Tutu')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (442, N'Douglas Carlton Abrams')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (443, N'Robert Wright')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (444, N'Winston Groom')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (445, N'Vlatko Vedral')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (446, N'Mario Puzo')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (447, N'William Peter Blatty')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (448, N'Michael Wolff')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (449, N'Sam Kean')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (450, N'Max Tegmark')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (451, N'Firoozeh Dumas')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (452, N'Mike Massimino')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (453, N'Stuart Clark')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (454, N'John McWhorter')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (455, N'Booker T. Washington')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (456, N'Erik Vance')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (457, N'Michael D. Blutrich')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (458, N'Jennifer Wright')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (459, N'Neil deGrasse Tyson')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (460, N'Carl Sagan')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (461, N'Benjamin K. Bergen')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (462, N'Lee G. Bolman')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (463, N'Joan V. Gallos')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (464, N'Tom Rath')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (465, N'Barry Conchie')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (466, N'Amy Poehler')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (467, N'Beau Lotto')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (468, N'Val McDermid')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (469, N'Ron Chernow')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (470, N'Martha Stout')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (471, N'Bruce Bueno de Mesquita')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (472, N'Alastair Smith')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (473, N'Jeremy Narby')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (474, N'Joan Druett')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (475, N'Frank T. Vertosick')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (476, N'Hannah Nordhaus')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (477, N'Herodotus')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (478, N'Alex Haley')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (479, N'Jon Ronson')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (480, N'Joe Drape')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (481, N'Saroo Brierley')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (482, N'James E. Ryan')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (483, N'Hugo Mercier')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (484, N'Dan Sperber')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (485, N'Anne Katherine')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (486, N'Steve Sims')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (487, N'Beryl Markham')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (488, N'David Finkel')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (489, N'Kathleen McAuliffe')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (490, N'Neil Gaiman')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (491, N'Justin Lee Anderson')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (492, N'Iliza Shlesinger')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (493, N'James Nestor')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (494, N'JB Smoove')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (495, N'James Baldwin')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (496, N'Roxanne Dunbar-Ortiz')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (497, N'Ben Mezrich')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (498, N'Elizabeth Greenwood')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (499, N'Jennifer Senior')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (500, N'Steven Gaines')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (501, N'Robert Cialdini')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (502, N'Mike Myers')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (503, N'James Campbell')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (504, N'Kate Morton')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (505, N'Colm Toibin')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (506, N'Yamamoto Tsunetomo')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (507, N'Chelsea Fagan')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (508, N'Alexander C. Kane')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (509, N'Mike McCormack')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (510, N'Lee Alan Dugatkin')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (511, N'Lyudmila Trut')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (512, N'Ernest Cline')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (513, N'David DeSteno')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (514, N'Johann Hari')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (515, N'Cait Flanders')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (516, N'Ursula K. Le Guin')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (517, N'Diana Gabaldon')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (518, N'Robert A. Heinlein')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (519, N'Michael Crichton')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (520, N'Scott Meyer')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (521, N'Masaji Ishikawa')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (522, N'Michael Clarkson')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (523, N'William Stolzenburg')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1523, N'Katja Millay')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1524, N'Patricia Williams')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1525, N'Scott Parazynski')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1526, N'Susy Flory')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1527, N'Jeff Hawkins')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1528, N'Joe Hill')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1529, N'Tom Clancy')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1530, N'Andrew Mayne')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1531, N'N. T. Wright')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1532, N'Gordon Korman')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1533, N'Robert Dugoni')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1534, N'Hans Rosling')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1535, N'Anna Rosling Rönnlund')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1536, N'Ola Rosling')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1537, N'Kasia Wezowski')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1538, N'Patryk Wezowski')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1539, N'Madeline Miller')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1540, N'Emma Donoghue')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1541, N'Whitney Cummings')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1542, N'John C. Maxwell')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1543, N'Edith Hamilton')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1544, N'Masih Alinejad')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1545, N'Yuval Noah Harari')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1546, N'Kelly Weinersmith')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1547, N'Zach Weinersmith')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1548, N'James S. A. Corey')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1549, N'Steve Brusatte')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1550, N'Gary John Bishop')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1551, N'Salman Rushdie')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1552, N'Patricia Evans')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1553, N'Les Carter')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1554, N'Keith J. Cunningham')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1555, N'Lucille Ball')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1556, N'Martin Luther King, Jr.')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1557, N'Ken Grimwood')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1558, N'Mark Miodownik')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1559, N'Felicia Day')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1560, N'Cormac McCarthy')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1561, N'Gabrielle Union')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1562, N'Eric Barker')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1563, N'Margot Lee Shetterly')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1564, N'David Sedaris')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1565, N'Fredrik Backman')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1566, N'John Kennedy Toole')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1567, N'Russell Brand')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1568, N'Yahtzee Croshaw')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1569, N'Jonas Jonasson')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1570, N'Sarah A. Denzil')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1571, N'Rob Dircks')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1572, N'Kurt Vonnegut')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1573, N'Margaret Atwood')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1574, N'Truman Capote')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1575, N'Pat Conroy')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1576, N'Barbara O''Connor')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1577, N'Patrick Ness')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1578, N'Anne Rice')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1579, N'Ruth Goodman')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1580, N'Francine Jay')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1581, N'Josiah Bancroft')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1582, N'Joel C. Rosenberg')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1583, N'Cal Newport')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1584, N'Malala Yousafzai')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1585, N'Sy Montgomery')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1586, N'Mackenzi Lee')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1587, N'Sebastian Barry')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1588, N'Adam Silvera')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1589, N'Matthew Mather')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1590, N'Cynthia Hand')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1591, N'Brodi Ashton')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1592, N'Jodi Meadows')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (1593, N'Scott Carney')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (2590, N'Brian Christian')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (2591, N'Tom Griffiths')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (2592, N'Helen Russell')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (2593, N'Grant Cardone')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (2594, N'Joshua Medcalf')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (2595, N'Chris Voss')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (2596, N'Brené Brown')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (2597, N'William Strunk Jr.')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (2598, N'E. B. White')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (2599, N'Ken Coleman')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (2600, N'Michael S. Sorensen')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (2601, N'Albert Camus')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (2602, N'Sebastian Junger')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (2603, N'H. Jon Benjamin')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (2604, N'Erica Layne')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (2605, N'Caitlin Doughty')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (2606, N'Amir Husain')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (2607, N'Nana Kwame Adjei-Brenyah')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (2608, N'Tim O''Brien')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (2609, N'Jonathan Franklin')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (3604, N'Erin Hunter')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (3605, N'Lindy West')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (3606, N'Ty Tashiro')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (3607, N'Qiu Miaojin')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (3608, N'Peter Boghossian')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (3609, N'James Lindsay')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (3610, N'Lysa TerKeurst')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (3611, N'Michael Shermer')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (3612, N'Carol S. Dweck')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (3613, N'Jason Schreier')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (3614, N'Sabine Hossenfelder')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (3615, N'Paul Cunningham')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (3616, N'Roger Lederer')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (3617, N'Philip Freeman')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (3618, N'Joshua Schimel')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (3619, N'Mario Livio')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (3620, N'Liz Wolfe')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (3621, N'Peter Brown')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (3622, N'Kelly Barnhill')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (3623, N'Humble the Poet')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (3624, N'Jeremy Robinson')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (3625, N'Andrea Vaughan')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (3626, N'William Vaughan')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4621, N'Peter Brannen')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4622, N'David Mitchell')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4623, N'Amanda Palmer')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4624, N'Dave Asprey')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4625, N'Mike Duncan')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4626, N'Elizabeth Acevedo')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4627, N'Pearl S. Buck')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4628, N'Nathan H. Lents')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4629, N'Charles Veley')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4630, N'Alfred Bester')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4631, N'Mike Bockoven')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4632, N'Mateo Askaripour')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4633, N'Jonathan Safran Foer')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4634, N'Tom Wolfe')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4635, N'Russell Blake')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4636, N'Alec Ross')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4637, N'Daniel Breyer')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4638, N'Robin DiAngelo')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4639, N'Tim Marshall')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4640, N'Daniel Immerwahr')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4641, N'Charles Murray')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4642, N'Catherine Bly Cox')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4643, N'Craig Beck')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4644, N'Judith Grisel')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4645, N'Toby Wilkinson')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4646, N'Paul Jarvis')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4647, N'Robert Greene')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4648, N'Masha Gessen')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4649, N'Ramon P. Degennaro')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4650, N'Vivek H. Murthy')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4651, N'Simon Parkin')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4652, N'Nadia White')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4653, N'Mark Lanegan')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4654, N'Marie Kondo')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4655, N'Kit Yates')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4656, N'Michael Breus')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4657, N'Carmine Gallo')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4658, N'Shala Nicely')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4659, N'Catherine M. Pittman')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4660, N'William H. Youngs')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4661, N'Reeves Wiedeman')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4662, N'Brandon Turner')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4663, N'Brian Murray')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4664, N'James King')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4665, N'Chuck Klosterman')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4666, N'Sir David Attenborough')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4667, N'James J. Cramer')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4668, N'Guy Raz')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4669, N'Elizabeth C. Economy')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4670, N'Uma Naidoo')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4671, N'Andrea Owen')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4672, N'John Kim')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4673, N'Andrew Yang')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4674, N'Garrett Sutton')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4675, N'Tom Wheelwright')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4676, N'Ken McElroy')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4677, N'Daphne Du Maurier')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4678, N'John Bierce')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4679, N'Edward Savio')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4680, N'Amy Harmon')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4681, N'Emily Lloyd-Jones')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4682, N'Allen Eskens')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4683, N'Ed West')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4684, N'Devon C. Ford')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4685, N'Nathan Hystad')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4686, N'Matthew Polly')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4687, N'John Bolton')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4688, N'Paul Beatty')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4689, N'Andrew Chaikin')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4690, N'Paulo Coelho')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4691, N'David Greene')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4692, N'Noelle Salazar')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4693, N'Eric Jason Martin')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4694, N'George S. Clason')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4695, N'Rory Power')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4696, N'Russell H. Conwell')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4697, N'Suzanne Redfearn')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4698, N'E. Annie Proulx')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4699, N'James Rosone')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4700, N'Brom')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4701, N'Tim Rhode')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4702, N'Pat Hiban')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4703, N'J. Scott')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4704, N'Dave Meyer')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4705, N'Eric Tyson')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4706, N'Robert S. Griswold')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4707, N'John R. Bruning')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4708, N'Annette Marie')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4709, N'Jeff Haden')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4710, N'David Graeber')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4711, N'Katherine Applegate')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4712, N'Susan Wise Bauer')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4713, N'Scott Galloway')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4714, N'Donald J. Robertson')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4715, N'Sheryl Sandberg')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4716, N'Adam Grant')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4717, N'Rick Atkinson')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4718, N'Sara Pennypacker')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4719, N'Ken Follett')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4720, N'Chanda Prescod-Weinstein')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4721, N'Steven Pressfield')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4722, N'Paulette Jiles')
GO
INSERT [Author] ([authorId], [authorName]) VALUES (4723, N'Karen Baugh Menuhin')
GO
SET IDENTITY_INSERT [Author] OFF
GO
SET IDENTITY_INSERT [Book] ON 
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1, N'1776', 400, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (2, N'1984', 368, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (3, N'10 Books That Screwed Up the World', 260, 22)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (4, N'100 Great Businesses and the Minds Behind Them', 432, 15)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5, N'12 Years a Slave', 248, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (6, N'13 Things that Don''t Make Sense: The Most Baffling Scientific Mysteries of Our Time', 256, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (7, N'1968: The Year That Rocked the World', 480, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (8, N'20,000 Leagues Under the Sea', 320, 108)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (9, N'23 Minutes In Hell', 192, 4)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (10, N'3D Negotiation', 286, 20)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (11, N'400 Things Cops Know', 211, 7)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (12, N'90 Minutes in Heaven', 304, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (13, N'A Bear Called Paddington', 176, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (14, N'A Briefer History of Time', 176, 21)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (15, N'A Christmas Carol', 239, 111)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (16, N'A Clash of Kings', 784, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (17, N'A Connecticut Yankee in King Arthur''s Court', 575, 113)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (18, N'A Dance with Dragons', 1040, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (19, N'A Daughter of the Snows', 334, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (20, N'A Dialogue Concerning Oratory, or the Causes of Corrupt Eloquence', 144, 22)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (21, N'A Feast for Crows', 976, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (22, N'A Game of Thrones', 720, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (23, N'A Knight of the Seven Kingdoms', 368, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (24, N'A Midsummer Night''s Dream', 256, 119)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (25, N'A Mind for Numbers', 336, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (26, N'A More Beautiful Question', 272, 22)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (27, N'A New Earth', 338, 14)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (28, N'A Portrait of the Artist as a Young Man', 368, 103)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (29, N'A Random Walk down Wall Street', 496, 24)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (30, N'A Rebel''s Recollections', 130, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (31, N'A Room of One''s Own', 128, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (32, N'A Short History of Nearly Everything', 560, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (33, N'A Storm of Swords', 1216, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (34, N'A Tale of Two Cities', 520, 111)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (35, N'A Universe from Nothing: Why There Is Something Rather than Nothing', 240, 21)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (36, N'A War of Gifts', 208, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (37, N'A Woman of No Importance', 94, 118)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (38, N'Adapt: Why Success Always Starts with Failure', 352, 19)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (39, N'Aesop''s Fables', 285, 107)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (40, N'Age of Context: Mobile, Sensors, Data and the Future of Privacy', 248, 25)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (41, N'Agricola and Germania', 224, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (42, N'Ahead of the Curve: Two Years at Harvard Business School', 304, 15)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (43, N'Alexander the Great', 147, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (44, N'Alexander the Great and His Time', 324, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (45, N'Alice''s Adventures in Wonderland', 96, 111)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (46, N'All the Shah''s Men', 296, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (47, N'All Together Dead', 352, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (48, N'Allan Quatermain', 279, 111)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (49, N'Allegiant', 526, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (50, N'All''s Well That Ends Well', 336, 124)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (51, N'America: The Book', 240, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (52, N'American Men of Mind', 231, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (53, N'American Notes', 244, 111)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (54, N'An Astronaut''s Guide to Life on Earth', 304, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (55, N'An Ideal Husband', 98, 118)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (56, N'And Another Thing...', 288, 114)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (57, N'And Then There''s This: How Stories Live and Die in Viral Culture', 208, 18)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (58, N'Angels & Demons', 480, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (59, N'Angler: The Cheney Vice Presidency', 512, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (60, N'Animal Farm', 144, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (61, N'Anne of Avonlea', 304, 121)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (62, N'Anne of Green Gables', 429, 121)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (63, N'Anne of the Island', 326, 121)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (64, N'Anthem', 147, 110)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (65, N'Antony and Cleopatra', 336, 124)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (66, N'Applied Economics: Thinking Beyond Stage One', 352, 12)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (67, N'Argo', 320, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (68, N'Arms and the Man', 116, 118)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (69, N'Around the World in Eighty Days', 212, 108)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (70, N'As You Like It', 320, 124)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (71, N'Auguste Comte and Positivism', 112, 14)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (72, N'Automatic Wealth For Grads', 256, 24)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (73, N'Back to Work: Why We Need Smart Government for a Strong Economy', 208, 12)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (74, N'Barnaby Rudge: A Tale of the Riots of Eighty', 730, 111)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (75, N'Basic Economics: A Citizen''s Guide to the Economy', 448, 12)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (76, N'Beau Geste', 431, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (77, N'Because the Cat Purrs: How We Relate to Other Species and Why it Matters', 240, 18)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (78, N'Before Adam', 91, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (79, N'Before Darwin: Reconciling God and Nature', 336, 4)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (80, N'Behave: The Biology of Humans at Our Best and Worst', 800, 23)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (81, N'Beloved', 352, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (82, N'Beowulf', 176, 109)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (83, N'Beyond Goals', 320, 16)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (84, N'Billy Budd', 265, 113)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (85, N'Bird by Bird', 239, 22)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (86, N'Black Holes and Baby Universes and Other Essays', 192, 21)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (87, N'Black Like Me', 208, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (88, N'Blink: The Power of Thinking Without Thinking', 296, 19)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (89, N'Blood of the Fold', 640, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (90, N'Blue at the Mizzen', 272, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (91, N'Bonk: The Curious Coupling of Science and Sex', 336, 23)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (92, N'Born with Teeth: A Memoir', 448, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (93, N'Borne', 336, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (94, N'Brave New World', 288, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (95, N'Bunker Hill: A City, A Siege, A Revolution', 416, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (96, N'Burning Daylight', 310, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (97, N'Bursts: The Hidden Pattern Behind Everything We Do', 310, 18)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (98, N'Buyology', 272, 19)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (99, N'Caesar''s Legion', 336, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (100, N'Call the Nurse', 320, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (101, N'Calvin for Armchair Theologians', 182, 4)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (102, N'Candide', 224, 120)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (103, N'Can''t Remember What I Forgot: The Good News from the Front Lines of Memory Research', 272, 16)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (104, N'Capital in the Twenty-First Century', 696, 12)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (105, N'Captains Courageous', 220, 111)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (106, N'Casino Royale', 192, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (107, N'Catastrophe: The Story of Bernard L. Madoff, the Man Who Swindled the World', 294, 24)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (108, N'Catch-22', 453, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (109, N'Catching Fire', 391, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (110, N'Chainfire', 768, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (111, N'Chaos Monkeys: Obscene Fortune and Random Failure in Silicon Valley', 533, 15)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (112, N'Children of the Mind', 387, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (113, N'Churchill: The Prophetic Statesman', 300, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (114, N'Clarissa Oakes', 304, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (115, N'Clark Howard''s Living Large in Lean Times', 272, 24)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (116, N'Cleopatra', 204, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (117, N'Club Dead', 320, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (118, N'Coal: A Human History', 304, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (119, N'College Unbound: The Future of Higher Education and What It Means for Students', 256, 7)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (120, N'Colonel Sun', 244, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (121, N'Coming Clean', 272, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (122, N'Common Sense', 94, 7)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (123, N'Common Sense on Mutual Funds', 656, 24)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (124, N'Common Stocks and Uncommon Profits', 320, 24)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (125, N'Complexity and Chaos', 97, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (126, N'Confessions of an English Opium-Eater', 240, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (127, N'Confessor', 768, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (128, N'Coriolanus', 400, 124)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (129, N'Cratylus', 133, 14)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (130, N'Creating a World Without Poverty', 320, 7)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (131, N'Cymbeline', 384, 124)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (132, N'Damn! A Book of Calumny', 91, 22)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (133, N'Dark Matter: The Private Life of Sir Isaac Newton', 352, 105)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (134, N'David and Goliath: Underdogs, Misfits, and the Art of Battling Giants', 320, 16)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (135, N'David Copperfield', 950, 111)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (136, N'D-Day: The Battle for Normandy', 608, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (137, N'Dead and Gone', 320, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (138, N'Dead as a Doornail', 320, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (139, N'Dead in the Family', 311, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (140, N'Dead Reckoning', 336, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (141, N'Dead to the World', 320, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (142, N'Dead Until Dark', 336, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (143, N'Debt of Bones', 175, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (144, N'Decision Points', 512, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (145, N'Definitely Dead', 352, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (146, N'Democracy Matters', 240, 7)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (147, N'Desolation Island', 351, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (148, N'Diamonds Are Forever', 240, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (149, N'Divergent', 496, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (150, N'Dombey and Son', 1040, 111)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (151, N'Dorothy and the Wizard in Oz', 272, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (152, N'Down and Out in Paris and London', 228, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (153, N'Dr. No', 240, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (154, N'Dreamsongs: Volume I', 720, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (155, N'Dreamsongs: Volume II', 768, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (156, N'Drift: The Unmooring of American Military Power', 304, 7)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (157, N'Dune', 544, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (158, N'Dust and Shadow: An Account of the Ripper Killings by Dr. John H. Watson', 336, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (159, N'E=mc2: A Biography of the World''s Most Famous Equation', 337, 21)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (160, N'Earth (The Book)', 256, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (161, N'Earth Afire', 400, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (162, N'Earth Awakens', 400, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (163, N'Earth Unaware', 464, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (164, N'East of Eden', 601, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (165, N'Economic Facts and Fallacies', 272, 12)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (166, N'Edgar Allan Poe: The Complete Short Story Collection', 692, 113)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (167, N'Edible: An Adventure into the World of Eating Insects and the Last Great Hope to Save the Planet', 272, 23)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (168, N'Einstein and the Quantum: The Quest of the Valiant Swabian', 344, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (169, N'Einstein: His Life and Universe', 704, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (170, N'Einstein''s Cosmos', 272, 21)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (171, N'El Narco: Inside Mexico''s Criminal Insurgency', 336, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (172, N'Electric Universe: The Shocking True Story of Electricity', 320, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (173, N'Elizabeth and Mary: Cousins, Rivals, Queens', 535, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (174, N'Elizabeth I: Red Rose of the House of Tudor', 240, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (175, N'Ender in Exile', 455, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (176, N'Ender''s Game', 384, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (177, N'Ender''s Shadow', 480, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (178, N'Everyday Survival: Why Smart People Do Stupid Things', 288, 19)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (179, N'Excellence in IT', 152, 15)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (180, N'Experiments in Ethics', 288, 14)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (181, N'Exploring and Mapmaking', 128, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (182, N'Exploring J.R.R. Tolkien''s ''The Hobbit''', 336, 22)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (183, N'Extraordinary Popular Delusions and The Madness of Crowds', 410, 19)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (184, N'Fahrenheit 451', 179, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (185, N'Faith of the Fallen', 800, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (186, N'Famous Men of Greece', 274, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (187, N'Famous Men of Modern Times', 170, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (188, N'Famous Men of Rome', 158, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (189, N'Famous Men of the Middle Ages', 118, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (190, N'Farewell to Reality: How Modern Physics Has Betrayed the Search for Scientific Truth', 353, 21)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (191, N'Fear of Physics', 288, 21)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (192, N'Feynman''s Rainbow: A Search for Beauty in Physics and in Life', 192, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (193, N'First Meetings', 224, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (194, N'Flowers for Algernon', 304, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (195, N'Fool', 352, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (196, N'For Your Eyes Only', 192, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (197, N'Four: A Divergent Collection', 304, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (198, N'Frankenstein', 352, 111)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (199, N'Freakonomics', 336, 12)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (200, N'Free to Choose', 360, 12)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (201, N'Freedomnomics', 256, 12)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (202, N'From Dead to Worse', 336, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (203, N'From Russia with Love', 272, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (204, N'Fun Is Good', 256, 15)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (205, N'Generation Blend: Managing Across the Technology Age Gap', 272, 15)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (206, N'Genghis Khan and the Making of the Modern World', 352, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (207, N'George Washington: First in War, First in Peace', 240, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (208, N'Gimme My Money Back', 160, 24)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (209, N'Go Set a Watchman', 288, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (210, N'Goldfinger', 272, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (211, N'Gulp: Adventures on the Alimentary Canal', 352, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (212, N'Guns, Germs, and Steel: The Fates of Human Societies', 512, 7)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (213, N'Half Empty', 240, 14)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (214, N'Hamlet', 342, 124)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (215, N'Happy Accidents: Serendipity in Major Medical Breakthroughs in the Twentieth Century', 400, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (216, N'Hard Call: The Art of Great Decisions', 480, 19)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (217, N'Harry Potter and the Chamber of Secrets', 368, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (218, N'Harry Potter and the Cursed Child', 320, 105)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (219, N'Harry Potter and the Deathly Hallows', 759, 105)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (220, N'Harry Potter and the Goblet of Fire', 734, 105)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (221, N'Harry Potter and the Half-Blood Prince', 652, 105)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (222, N'Harry Potter and the Order of the Phoenix', 870, 105)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (223, N'Harry Potter and the Philosopher''s Stone', 336, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (224, N'Harry Potter and the Prisoner of Azkaban', 464, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (225, N'Heart of Darkness', 514, 104)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (226, N'Heinrich Himmler: The Sinister Life of the Head of the SS and Gestapo', 320, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (227, N'Henry IV, Part 1', 336, 119)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (228, N'Henry IV, Part 2', 400, 119)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (229, N'Henry V', 294, 119)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (230, N'Henry VI, Part 1', 352, 119)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (231, N'Henry VI, Part 2', 384, 119)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (232, N'Henry VI, Part 3', 384, 119)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (233, N'Henry VIII', 352, 124)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (234, N'Hitler', 224, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (235, N'Hitler''s Scientists: Science, War, and the Devil''s Pact', 576, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (236, N'HMS Surprise', 384, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (237, N'Homage to Catalonia', 232, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (238, N'How Did You Get This Number?', 288, 22)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (239, N'How Google Works', 320, 15)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (240, N'How the Hippies Saved Physics: Science, Counterculture, and the Quantum Revival', 372, 21)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (241, N'How to Listen to and Understand Great Music', 1229, 5)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (242, N'Huck Finn and Tom Sawyer Among the Indians', 277, 113)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (243, N'Humboldt''s Gift', 512, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (244, N'I Was Told There''d Be Cake', 240, 22)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (245, N'I.O.U.', 288, 12)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (246, N'Immortality', 304, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (247, N'In Cheap We Trust', 336, 24)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (248, N'Incidents in the Life of a Slave Girl', 272, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (249, N'Incognito: The Secret Lives of the Brain', 304, 16)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (250, N'Inferno', 480, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (251, N'Insurgent', 576, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (252, N'Integrity', 304, 18)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (253, N'Into the Wild', 207, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (254, N'Isaac Asimov''s Guide to Earth and Space', 288, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (255, N'Isaac Newton', 288, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (256, N'Isaac Newton''s New Physics', 149, 21)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (257, N'It Works', 96, 18)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (258, N'James Madison: the Founding Father', 312, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (259, N'Jane Eyre', 592, 111)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (260, N'John Adams', 752, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (261, N'John Lennon: The Life', 864, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (262, N'John Quincy Adams', 384, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (263, N'Johnny Carson', 320, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (264, N'Julius Caesar', 307, 119)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (265, N'Jungle Tales of Tarzan', 319, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (266, N'Kidnapped', 340, 111)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (267, N'King John', 352, 119)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (268, N'King Lear', 384, 124)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (269, N'King Solomon''s Mines', 320, 111)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (270, N'Krakatoa: The Day the World Exploded', 464, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (271, N'La Vita Nuova', 128, 5)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (272, N'Ladies of the Night', 176, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (273, N'Lady Chatterley''s Lover', 352, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (274, N'Lady Windermere''s Fan', 152, 118)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (275, N'Le Vicomte de Bragelonne', 768, 108)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (276, N'Leonard: My Fifty-Year Friendship with a Remarkable Man', 304, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (277, N'Leonardo Da Vinci', 176, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (278, N'Life Beyond Earth', 221, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (279, N'Life of Pi', 401, 122)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (280, N'Life on a Little Known Planet', 330, 23)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (281, N'Life on the Mississippi', 400, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (282, N'Life, the Universe, and Everything', 227, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (283, N'Lincoln in the Bardo', 368, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (284, N'Live and Let Die', 240, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (285, N'Lives of the Twelve Caesars', 384, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (286, N'Living Dead In Dallas', 304, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (287, N'Logan''s Run', 160, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (288, N'Logan''s Search', 145, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (289, N'Logan''s World', 149, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (290, N'Longitude', 208, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (291, N'Lord of the Flies', 304, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (292, N'Louise de la Vallière', 768, 108)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (293, N'Love''s Labour''s Lost', 352, 119)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (294, N'Lyra''s Oxford', 64, 105)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (295, N'Macbeth', 304, 124)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (296, N'Madame Bovary', 352, 108)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (297, N'Made to Stick', 291, 16)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (298, N'Maggie, a Girl of the Streets', 102, 113)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (299, N'Man''s Search for Meaning', 184, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (300, N'Martin Luther, the Lion-hearted Reformer', 125, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (301, N'Master and Commander', 457, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (302, N'Measure for Measure', 336, 124)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (303, N'Meditations', 160, 14)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (304, N'Memory', 194, 16)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (305, N'Merle''s Door: Lessons from a Freethinking Dog', 416, 14)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (306, N'Mindware', 336, 16)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (307, N'Misbehaving: The Making of Behavioral Economics', 432, 12)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (308, N'Misquoting Jesus', 256, 4)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (309, N'Moby Dick', 767, 113)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (310, N'Mockingjay', 390, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (311, N'Moonraker', 256, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (312, N'Mostly Harmless', 224, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (313, N'Mr. Sammler''s Planet', 352, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (314, N'Much Ado About Nothing', 246, 119)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (315, N'My Side of the Mountain', 177, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (316, N'Myths and Legends of Alaska', 214, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (317, N'Naked Empire', 752, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (318, N'Napoleon Bonaparte: England''s Prisoner', 320, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (319, N'Napoleon''s Hemorrhoids: And Other Small Events That Changed History', 284, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (320, N'Narrative of the Life of Frederick Douglass: An American Slave', 208, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (321, N'Natural Science and the Planet Earth', 80, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (322, N'Negotiation Boot Camp', 208, 20)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (323, N'Negotiation Genius', 352, 20)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (324, N'No Easy Day', 336, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (325, N'No God But God', 336, 4)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (326, N'Northern Lights', 399, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (327, N'Nudge: Improving Decisions About Health, Wealth, and Happiness', 320, 19)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (328, N'Octopussy and The Living Daylights', 128, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (329, N'Oedipus the King', 144, 107)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (330, N'Of Mice and Men', 112, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (331, N'On Her Majesty''s Secret Service', 272, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (332, N'On the Road', 304, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (333, N'Once Upon a Time in the North', 104, 105)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (334, N'Othello', 314, 124)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (335, N'Our Inner Ape', 304, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (336, N'Outliers: The Story of Success', 336, 7)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (337, N'Outposts: Journeys to the Surviving Relics of the British Empire', 400, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (338, N'Outrageous Fortunes: The Twelve Surprising Trends That Will Reshape the Global Economy', 288, 12)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (339, N'Ozma of Oz', 272, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (340, N'Panic in Level 4: Cannibals, Killer Viruses, and Other Journeys to the Edge of Science', 240, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (341, N'Paradise Lost', 624, 5)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (342, N'Particle Physics', 160, 21)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (343, N'Pericles, Prince of Tyre', 304, 124)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (344, N'Peter Pan', 267, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (345, N'Phantom', 673, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (346, N'Philip Augustus', 162, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (347, N'Physics of the Impossible', 352, 21)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (348, N'Poisons: From Hemlock to Botox and the Killer Bean of Calabar', 264, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (349, N'Post Captain', 529, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (350, N'Predictably Irrational', 400, 16)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (351, N'Present at the Creation: The Story of CERN and the Large Hadron Collider', 288, 21)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (352, N'Pride and Prejudice', 382, 111)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (353, N'Prince Caspian', 190, 103)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (354, N'Proposed Roads to Freedom', 240, 7)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (355, N'Proust Was a Neuroscientist', 256, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (356, N'Pudd''nhead Wilson', 337, 113)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (357, N'Quantum Man: Richard Feynman''s Life in Science', 368, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (358, N'Quantum: Einstein, Bohr, and the Great Debate about the Nature of Reality', 448, 21)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (359, N'Red Moon Rising', 336, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (360, N'Redshirts', 320, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (361, N'Reflections on the Formation and Distribution of Wealth', 132, 12)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (362, N'Relativity: The Special and General Theory', 164, 21)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (363, N'Revolution 2.0', 320, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (364, N'Rich Dad, Poor Dad', 128, 24)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (365, N'Richard II', 352, 119)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (366, N'Richard III', 369, 119)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (367, N'Rise of the Robots', 354, 25)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (368, N'Robinson Crusoe', 448, 112)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (369, N'Rocks of Ages', 256, 14)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (370, N'Romeo and Juliet', 336, 119)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (371, N'Running With Scissors', 288, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (372, N'Russia in 1919', 140, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (373, N'Sacred Cows', 212, 4)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (374, N'Science and Human Values', 98, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (375, N'Science Matters: Achieving Scientific Literacy', 384, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (376, N'Secrets of Power Negotiation', 320, 20)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (377, N'Secrets of Power Persuasion', 320, 20)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (378, N'Seize the Day', 211, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (379, N'Sense And Sensibility', 288, 111)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (380, N'Severed Souls', 559, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (381, N'Sh*t My Dad Says', 176, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (382, N'Shadow of the Giant', 371, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (383, N'Shadow of the Hegemon', 451, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (384, N'Shadow Puppets', 375, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (385, N'Shadows in Flight', 305, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (386, N'Small Data', 256, 15)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (387, N'Snoop: What Your Stuff Says About You', 272, 16)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (388, N'So Long, and Thanks for All the Fish', 224, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (389, N'Soul of the Fire', 800, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (390, N'Speaker for the Dead', 415, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (391, N'Stepping Up', 192, 18)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (392, N'Stiff: The Curious Lives of Human Cadavers', 304, 23)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (393, N'Stone of Tears', 992, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (394, N'Strange and Obscure Stories of the Civil War', 224, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (395, N'Succeed', 288, 16)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (396, N'Super Crunchers', 320, 17)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (397, N'Surely You''re Joking, Mr. Feynman!', 352, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (398, N'Swann''s Way', 314, 5)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (399, N'Sworn Sword', 152, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (400, N'Tarzan and the Jewels of Opar', 350, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (401, N'Tarzan of the Apes', 432, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (402, N'Tarzan the Terrible', 408, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (403, N'Tarzan the Untamed', 428, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (404, N'Temple of the Winds', 992, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (405, N'That''s Not in My American History Book', 256, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (406, N'The 10 Commandments of Money', 304, 24)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (407, N'The 4% Universe: Dark Matter, Dark Energy, and the Race to Discover the Rest of Reality', 320, 21)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (408, N'The Abolition of Man', 60, 14)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (409, N'The Accidental Mind: How Brain Evolution Has Given Us Love, Memory, Dreams, and God', 288, 16)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (410, N'The Advance of Science in the Last Half-Century', 76, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (411, N'The Adventures of Buffalo Bill', 170, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (412, N'The Adventures of Huckleberry Finn', 424, 113)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (413, N'The Adventures of Oliver Twist', 672, 111)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (414, N'The Adventures of Peter Cottontail', 192, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (415, N'The Adventures of Sherlock Holmes', 448, 111)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (416, N'The Adventures of Tom Sawyer', 271, 113)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (417, N'The Age of Wonder: How the Romantic Generation Discovered the Beauty and Terror of Science', 576, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (418, N'The Alchemy of Finance', 367, 24)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (419, N'The Amber Spyglass', 480, 105)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (420, N'The American Revolution', 200, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (421, N'The Americanization of Benjamin Franklin', 320, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (422, N'The Analects of Confucius', 114, 14)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (423, N'The Android''s Dream', 398, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (424, N'The Annals, Volume 1', 380, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (425, N'The Annals, Volume 2', 500, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (426, N'The Annals, Volume 3', 536, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (427, N'The Art of Innovation', 320, 15)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (428, N'The Art of War', 374, 22)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (429, N'The Assault on Reason', 320, 7)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (430, N'The Autobiography of Benjamin Franklin', 208, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (431, N'The Autobiography of Charles Darwin', 176, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (432, N'The Baker Street Letters', 288, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (433, N'The Battle for the Soul of Capitalism', 288, 24)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (434, N'The Battle of Life', 128, 111)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (435, N'The Beasts of Tarzan', 336, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (436, N'The Bhagavad Gita', 296, 4)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (437, N'The Big Short: Inside the Doomsday Machine', 291, 24)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (438, N'The Big Three in Economics: Adam Smith, Karl Marx, and John Maynard Keynes', 243, 12)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (439, N'The Black Hole War', 480, 21)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (440, N'The Black Tulip', 292, 108)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (441, N'The Bloody Battle of Suribachi', 192, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (442, N'The Body Has a Mind of Its Own', 240, 16)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (443, N'The Book of Investing Wisdom', 498, 24)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (444, N'The Book of Mormon', 640, 4)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (445, N'The Book of Were-Wolves', 152, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (446, N'The Borrowers', 192, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (447, N'The Borrowers Afield', 224, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (448, N'The Borrowers Afloat', 192, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (449, N'The Borrowers Aloft', 224, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (450, N'The Botany of Desire: A Plant''s-Eye View of the World', 304, 23)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (451, N'The Bourne Ascendancy', 592, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (452, N'The Bourne Betrayal', 656, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (453, N'The Bourne Deception', 544, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (454, N'The Bourne Dominion', 608, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (455, N'The Bourne Enigma', 544, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (456, N'The Bourne Identity', 523, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (457, N'The Bourne Imperative', 448, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (458, N'The Bourne Legacy', 608, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (459, N'The Bourne Objective', 560, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (460, N'The Bourne Retribution', 560, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (461, N'The Bourne Sanction', 624, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (462, N'The Bourne Supremacy', 597, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (463, N'The Bourne Ultimatum', 611, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (464, N'The Bridge of San Luis Rey', 160, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (465, N'The Brothers Karamazov', 1072, 115)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (466, N'The Call of the Wild', 231, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (467, N'The Canon: A Whirligig Tour of the Beautiful Basics of Science', 304, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (468, N'The Canterbury Tales', 688, 116)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (469, N'The Canterville Ghost and Other Stories', 128, 118)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (470, N'The Case for Democracy', 303, 7)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (471, N'The Castle of Otranto', 176, 112)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (472, N'The Catcher in the Rye', 220, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (473, N'The Character of Physical Law', 192, 21)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (474, N'The Chimes', 112, 111)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (475, N'The Civil War: A Narrative, Volume 1', 840, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (476, N'The Civil War: A Narrative, Volume 2', 1000, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (477, N'The Civil War: A Narrative, Volume 3', 1106, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (478, N'The Clan of the Cave Bear', 592, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (479, N'The Clockwork Universe', 416, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (480, N'The Comedy of Errors', 272, 119)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (481, N'The Commitment', 336, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (482, N'The Commodore', 352, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (483, N'The Complete Idiot''s Guide to String Theory', 368, 21)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (484, N'The Complete Poetry of Edgar Allan Poe', 144, 5)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (485, N'The Confessions', 352, 4)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (486, N'The Constitution of Athens', 327, 14)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (487, N'The Constitution of Society', 402, 7)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (488, N'The Count of Monte Cristo', 1312, 108)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (489, N'The Cricket on the Hearth', 192, 111)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (490, N'The Cruise of the Dazzler', 144, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (491, N'The Da Vinci Code', 583, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (492, N'The Denial of Death', 336, 16)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (493, N'The Design Revolution', 334, 4)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (494, N'The Drunkard''s Walk: How Randomness Rules Our Lives', 272, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (495, N'The eBay Phenomenon', 224, 15)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (496, N'The End of Wall Street', 384, 24)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (497, N'The Essential Engineer', 288, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (498, N'The Fabric of the Cosmos: Space, Time, and the Texture of Reality', 592, 21)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (499, N'The Face of Battle: A Study of Agincourt, Waterloo, and the Somme', 368, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (500, N'The Faith of Men', 110, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (501, N'The Far Side of the World', 416, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (502, N'The Fellowship of the Ring', 544, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (503, N'The Feynman Lectures on Physics, Volume 1', 560, 21)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (504, N'The Feynman Lectures on Physics, Volume 2', 592, 21)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (505, N'The Field: The Quest for the Secret Force of the Universe', 268, 21)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (506, N'The Fighter''s Mind', 304, 16)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (507, N'The Final Unfinished Voyage of Jack Aubrey', 144, 105)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (508, N'The First Confessor', 481, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (509, N'The First Three Minutes: A Modern View Of The Origin Of The Universe', 224, 21)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (510, N'The Fortune of War', 336, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (511, N'The French Lieutenant''s Woman', 480, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (512, N'The Future of Life', 256, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (513, N'The Future of the Mind: The Scientific Quest to Understand, Enhance, and Empower the Mind', 400, 16)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (514, N'The Girl in the Spider''s Web', 544, 125)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (515, N'The Girl Who Kicked the Hornet''s Nest', 602, 125)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (516, N'The Girl Who Played with Fire', 631, 125)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (517, N'The Girl with the Dragon Tattoo', 672, 125)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (518, N'The God Delusion', 464, 4)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (519, N'The Google Story', 352, 15)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (520, N'The Grapes of Wrath', 464, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (521, N'The Great Divorce', 160, 103)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (522, N'The Great Gatsby', 176, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (523, N'The Great Siege: Malta 1565', 260, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (524, N'The Gripping Hand', 401, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (525, N'The Halo Effect', 256, 19)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (526, N'The Hate U Give', 469, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (527, N'The Haunted Man and the Ghost''s Bargain', 132, 111)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (528, N'The Head Trip: Adventures on the Wheel of Consciousness', 400, 16)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (529, N'The Hedge Knight', 160, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (530, N'The Hidden Reality: Parallel Universes and the Deep Laws of the Cosmos', 464, 21)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (531, N'The Higgs Boson and Beyond', 380, 21)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (532, N'The Histories', 384, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (533, N'The Hitchhiker''s Guide to the Galaxy', 224, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (534, N'The Hobbit', 320, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (535, N'The Horse and His Boy', 240, 103)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (536, N'The House of the Seven Gables', 502, 113)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (537, N'The Housing Boom and Bust', 256, 12)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (538, N'The Hundred Days', 352, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (539, N'The Hunger Games', 384, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (540, N'The Ice Dragon', 112, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (541, N'The Ides: Caesar''s Murder and the War for Rome', 288, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (542, N'The Iliad', 704, 5)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (543, N'The Immortal Life Of Henrietta Lacks', 384, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (544, N'The Importance of Being Earnest', 86, 118)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (545, N'The Ionian Mission', 401, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (546, N'The Island of Knowledge: The Limits of Science and the Search for Meaning', 368, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (547, N'The Jungle', 475, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (548, N'The Land of Painted Caves', 768, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (549, N'The Language of Life: DNA and the Revolution in Personalized Medicine', 368, 23)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (550, N'The Last Battle', 240, 103)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (551, N'The Last Lecture', 224, 14)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (552, N'The Legend of Sleepy Hollow', 108, 113)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (553, N'The Letter of Marque', 336, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (554, N'The Life and Adventures of Martin Chuzzlewit', 864, 111)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (555, N'The Life and Adventures of Nicholas Nickleby', 926, 111)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (556, N'The Life of Abraham Lincoln', 270, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (557, N'The Life of Charlemagne', 352, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (558, N'The Life of Wolfgang Amadeus Mozart', 226, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (559, N'The Lion, the Witch and the Wardrobe', 256, 103)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (560, N'The Lost Symbol', 671, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (561, N'The Machine Stops', 93, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (562, N'The Magician''s Nephew', 221, 103)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (563, N'The Making of Modern Economics', 494, 12)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (564, N'The Mammoth Hunters', 784, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (565, N'The Man in the Iron Mask', 656, 108)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (566, N'The Man Who Mistook His Wife For A Hat', 258, 16)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (567, N'The Man Who Quit Money', 272, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (568, N'The Man With The Golden Gun', 192, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (569, N'The Martian', 387, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (570, N'The Marvelous Land of Oz', 294, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (571, N'The Mauritius Command', 352, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (572, N'The Mayor of Casterbridge', 424, 111)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (573, N'The Meaning of It All: Thoughts of a Citizen-Scientist', 144, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (574, N'The Medusa and the Snail', 192, 23)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (575, N'The Memoirs of Sherlock Holmes', 256, 111)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (576, N'The Merchant of Venice', 238, 119)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (577, N'The Merry Adventures of Robin Hood', 416, 113)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (578, N'The Merry Wives of Windsor', 320, 119)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (579, N'The Microsoft Edge', 192, 15)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (580, N'The Ministry of Guidance Invites You to Not Stay: An American Family in Iran', 272, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (581, N'The Mote in God''s Eye', 537, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (582, N'The Mutiny on Board HMS Bounty', 240, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (583, N'The Mystery Knight', 153, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (584, N'The Neverending Story', 448, 123)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (585, N'The Next 100 Years: A Forecast for the 21st Century', 272, 25)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (586, N'The Norman Conquest: The Battle of Hastings and the Fall of Anglo-Saxon England', 464, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (587, N'The Normans in European History', 272, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (588, N'The Now Habit', 224, 16)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (589, N'The Nutmeg of Consolation', 384, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (590, N'The Old Curiosity Shop', 672, 111)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (591, N'The Omen Machine', 528, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (592, N'The Origin Of Species', 576, 23)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (593, N'The Perks of Being a Wallflower', 256, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (594, N'The Philosophy of Style', 118, 14)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (595, N'The Picture of Dorian Gray', 287, 118)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (596, N'The Pillars of Creation', 736, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (597, N'The Plains of Passage', 976, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (598, N'The Planets', 288, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (599, N'The Pleasure of Finding Things Out', 270, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (600, N'The Politically Incorrect Guide to Darwinism and Intelligent Design', 273, 4)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (601, N'The Postcatastrophe Economy', 224, 12)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (602, N'The Posthumous Papers of the Pickwick Club', 848, 111)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (603, N'The Power of Now', 258, 14)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (604, N'The Prince', 130, 7)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (605, N'The Problem of China', 250, 7)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (606, N'The Problems of Philosophy', 114, 14)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (607, N'The Purpose Driven Life', 336, 4)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (608, N'The Pursuit of God', 144, 4)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (609, N'The Qur''an', 512, 4)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (610, N'The Real-Life MBA', 256, 15)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (611, N'The Red Badge of Courage', 240, 113)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (612, N'The Restaurant at the End of the Universe', 250, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (613, N'The Return of Tarzan', 365, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (614, N'The Return of the King', 544, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (615, N'The Reverse of the Medal', 288, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (616, N'The Road to Oz', 267, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (617, N'The Road to Samarcand', 272, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (618, N'The Scarlet Letter', 240, 113)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (619, N'The Schoolmaster''s Daughter', 416, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (620, N'The Seashell on the Mountaintop', 240, 23)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (621, N'The Sea-Wolf', 320, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (622, N'The Selfish Gene', 384, 23)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (623, N'The Shelters of Stone', 928, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (624, N'The Silmarillion', 480, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (625, N'The Silver Chair', 256, 103)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (626, N'The Silver Linings Playbook', 304, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (627, N'The Singularity Is Near', 672, 25)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (628, N'The Social Animal', 448, 18)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (629, N'The Son of Tarzan', 394, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (630, N'The Souls of Black Folk', 320, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (631, N'The Spy Who Loved Me', 176, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (632, N'The Story of the Romans', 368, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (633, N'The Stuff of Thought', 512, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (634, N'The Substance of Civilization: Materials and Human History from the Stone Age to the Age of Silicon', 328, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (635, N'The Subtle Art of Not Giving a Fuck', 229, 14)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (636, N'The Subtle Knife', 304, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (637, N'The Surgeon''s Mate', 408, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (638, N'The Swarm', 464, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (639, N'The Swiss Family Robinson', 352, 117)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (640, N'The Taming of the Shrew', 304, 119)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (641, N'The Tempest', 304, 124)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (642, N'The Theory Of Everything', 176, 21)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (643, N'The Third Kingdom', 527, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (644, N'The Thirteen Gun Salute', 368, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (645, N'The Three Musketeers', 768, 108)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (646, N'The Tipping Point', 304, 15)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (647, N'The Truth About Negotiations', 224, 20)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (648, N'The Turn of the Screw', 136, 113)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (649, N'The Two Gentlemen of Verona', 304, 119)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (650, N'The Two Noble Kinsmen', 386, 124)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (651, N'The Two Towers', 448, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (652, N'The Universe in a Nutshell', 224, 21)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (653, N'The Universe in a Single Atom: The Convergence of Science and Spirituality', 224, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (654, N'The Valley of Horses', 592, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (655, N'The Voyage of the Dawn Treader', 215, 103)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (656, N'The War of the Worlds', 303, 111)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (657, N'The Warren Buffett Way', 272, 24)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (658, N'The Wine-Dark Sea', 352, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (659, N'The Winter''s Tale', 352, 124)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (660, N'The Wisdom of Crowds', 288, 19)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (661, N'The Wolf-Leader', 115, 108)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (662, N'The Wonderful Wizard of Oz', 240, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (663, N'The World is Flat', 608, 7)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (664, N'The World of Ice & Fire', 336, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (665, N'The World Without Us', 336, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (666, N'The Wright Brothers', 336, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (667, N'The Yellow Admiral', 320, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (668, N'They Saw it Happen: Eyewitness Accounts from Ancient Greece to Hiroshima', 200, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (669, N'Think Like a Freak', 304, 12)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (670, N'Thinking, Fast and Slow', 512, 18)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (671, N'This Republic of Suffering: Death and the American Civil War', 645, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (672, N'This Sceptred Isle: Empire, Volume 1', 186, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (673, N'Thomas Jefferson and His Time, Volume 1: The Virginian', 484, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (674, N'Thomas Jefferson and His Time, Volume 2: Jefferson and the Rights of Man', 523, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (675, N'Thomas Jefferson and His Time, Volume 3: Jefferson and the Ordeal of Liberty', 545, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (676, N'Thomas Jefferson and His Time, Volume 4: The President: First Term, 1801-1805', 539, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (677, N'Thomas Jefferson and His Time, Volume 5: The President: Second Term, 1805-1809', 704, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (678, N'Thomas Jefferson and His Time, Volume 6: The Sage of Monticello', 551, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (679, N'Through the Looking Glass', 176, 111)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (680, N'Thunderball', 272, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (681, N'Timon of Athens', 304, 124)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (682, N'''Tis Pity She''s a Whore', 176, 124)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (683, N'Titus Andronicus', 320, 119)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (684, N'To Kill a Mockingbird', 296, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (685, N'Tom Sawyer Abroad', 132, 113)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (686, N'Tom Sawyer, Detective', 224, 113)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (687, N'Toxic Truth: A Scientist, a Doctor, and the Battle Over Lead', 452, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (688, N'Travels In Alaska', 272, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (689, N'Treason''s Harbour', 361, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (690, N'Treasure Island', 352, 111)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (691, N'Troilus and Cressida', 416, 124)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (692, N'Twelfth Night', 272, 124)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (693, N'Twenty Years After', 880, 108)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (694, N'Uncertainty: Einstein, Heisenberg, Bohr, and the Struggle for the Soul of Science', 272, 21)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (695, N'Uncle Tom''s Cabin', 662, 113)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (696, N'Understanding the Fundamentals of Music', 616, 5)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (697, N'Unstoppable: Harnessing Science to Change the World', 368, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (698, N'Upstairs at the White House: My Life With the First Ladies', 381, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (699, N'Utopia', 208, 119)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (700, N'Valkyrie', 224, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (701, N'Visions: How Science Will Revolutionize the 21st Century', 416, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (702, N'Waking from the Trance', 395, 16)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (703, N'Walden', 196, 5)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (704, N'Walpole', 178, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (705, N'War Horse', 176, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (706, N'Warheart', 480, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (707, N'Washington''s Immortals', 480, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (708, N'Waterloo: The History of Four Days, Three Armies, and Three Battles', 352, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (709, N'Way Station', 225, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (710, N'We Learn Nothing', 256, 22)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (711, N'Web 3.0 Startups', 154, 15)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (712, N'What I Learned Losing a Million Dollars', 192, 24)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (713, N'What If?: Serious Scientific Answers to Absurd Hypothetical Questions', 320, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (714, N'What We Say Goes: Conversations on U.S. Power in a Changing World', 240, 7)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (715, N'What''s Mine Is Yours: The Rise of Collaborative Consumption', 304, 7)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (716, N'What''s Wrong with the World', 306, 22)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (717, N'Where Good Ideas Come From: The Natural History of Innovation', 336, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (718, N'Where the Red Fern Grows', 245, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (719, N'Whilomville Stories', 128, 113)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (720, N'White Fang', 298, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (721, N'Who''s in Charge?: Free Will and the Science of the Brain', 260, 16)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (722, N'Why Beautiful People Have More Daughters', 272, 16)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (723, N'WikiLeaks: Inside Julian Assange''s War on Secrecy', 352, 7)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (724, N'William Shakespeare''s Star Wars: The Empire Striketh Back', 176, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (725, N'William Shakespeare''s Star Wars: The Jedi Doth Return', 170, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (726, N'William Shakespeare''s Star Wars: Verily, a New Hope', 176, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (727, N'Winnie-the-Pooh', 176, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (728, N'Without You, There Is No Us: My Time with the Sons of North Korea''s Elite', 304, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (729, N'Wizard''s First Rule', 848, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (730, N'Word by Word', 77, 22)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (731, N'Xenocide', 418, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (732, N'You Are a Badass', 256, 14)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (733, N'You Are Not a Gadget', 224, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (734, N'You Only Live Twice', 224, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (735, N'Your Inner Fish', 256, 23)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (736, N'Zealot: The Life and Times of Jesus of Nazareth', 336, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (737, N'Zen and the Art of Motorcycle Maintenance', 448, 14)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (739, N'A Mind at Play: How Claude Shannon Invented the Information Age', 384, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (740, N'We Are Legion (We Are Bob)', 308, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (741, N'The Book of Joy: Lasting Happiness in a Changing World', 384, 14)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (742, N'Origin', 480, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (743, N'The Evolution of God', 576, 4)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (744, N'Children of the Fleet', 304, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (745, N'The Moral Animal: Why We Are the Way We Are', 467, 16)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (746, N'Forrest Gump', 228, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (747, N'The Book of Dust: La Belle Sauvage', 464, 105)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (748, N'For We Are Many', 320, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (749, N'All These Worlds', 280, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (750, N'Artemis', 320, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (751, N'Decoding Reality: The Universe as Quantum Information', 240, 21)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (752, N'The Godfather', 468, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (753, N'The Exorcist', 403, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (754, N'Leonardo da Vinci', 624, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (755, N'Benjamin Franklin: An American Life', 624, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (756, N'Fire and Fury: Inside the Trump White House', 336, 7)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (757, N'Everything All at Once', 384, 22)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (758, N'Caesar''s Last Breath: Decoding the Secrets of the Air Around Us', 384, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (759, N'Life 3.0: Being Human in the Age of Artificial Intelligence', 384, 25)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (760, N'Funny in Farsi: A Memoir of Growing Up Iranian in America', 240, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (761, N'Spaceman: An Astronaut''s Unlikely Journey to Unlock the Secrets of the Universe', 336, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (762, N'The Unknown Universe: A New Exploration of Time, Space, and Modern Cosmology', 320, 21)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (763, N'Words on the Move: Why English Won''t - and Can''t - Sit Still', 272, 22)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (764, N'Up from Slavery', 186, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (765, N'Suggestible You: The Curious Science of Your Brain’s Ability to Deceive, Transform, and Heal', 288, 16)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (766, N'Scores', 328, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (767, N'Get Well Soon: History''s Worst Plagues and the Heroes Who Fought Them', 336, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (768, N'Astrophysics for People in a Hurry', 224, 21)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (769, N'Cosmos', 432, 21)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (770, N'Louder Than Words: The New Science of How the Mind Makes Meaning', 312, 16)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (771, N'What the F: What Swearing Reveals About Our Language, Our Brains, and Ourselves', 304, 22)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (772, N'Reframing Academic Leadership', 288, 22)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (773, N'Strengths Based Leadership: Great Leaders, Teams, and Why People Follow', 266, 22)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (774, N'Yes Please', 352, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (775, N'Deviate: The Science of Seeing Differently', 352, 16)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (776, N'The Professor and the Madman: A Tale of Murder, Insanity, and the Making of the Oxford English Dictionary', 256, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (777, N'Forensics: What Bugs, Burns, Prints, DNA, and More Tell Us About Crime', 320, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (778, N'The Death of the Banker: The Decline and Fall of the Great Financial Dynasties and the Triumph of the Small Investor', 130, 24)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (779, N'The Sociopath Next Door', 241, 16)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (780, N'The Dictator''s Handbook: Why Bad Behavior Is Almost Always Good Politics', 352, 7)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (781, N'The Cosmic Serpent: DNA and the Origins of Knowledge', 272, 23)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (782, N'Island of the Lost: Shipwrecked at the Edge of the World', 299, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (783, N'When the Air Hits Your Brain: Tales of Neurosurgery', 272, 16)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (784, N'Light Falls: Space, Time, and an Obsession of Einstein', 120, 21)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (785, N'The Beekeeper''s Lament: How One Man and Half a Billion Honey Bees Help Feed America', 291, 23)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (786, N'The Histories', 840, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (787, N'Roots', 912, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (788, N'So You''ve Been Publicly Shamed', 336, 18)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (789, N'American Pharaoh: The Untold Story of the Triple Crown Winner''s Legendary Rise', 304, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (790, N'A Long Way Home', 288, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (791, N'Wait, What?: And Life''s Other Essential Questions', 144, 14)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (792, N'The Enigma of Reason', 408, 14)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (793, N'Where to Draw the Line', 288, 18)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (794, N'Bluefishing: The Art of Making Things Happen', 224, 18)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (795, N'What Do You Care What Other People Think?', 288, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (796, N'West with the Night', 293, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (797, N'The Good Soldiers', 336, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (798, N'This Is Your Brain on Parasites: How Tiny Creatures Manipulate Our Behavior and Shape Society', 304, 23)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (799, N'Norse Mythology', 304, 4)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (800, N'Carpet Diem: Or...How to Save the World by Accident', 298, 105)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (801, N'Girl Logic: The Genius and the Absurdity', 264, 18)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (802, N'The Singularity Trap', 370, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (803, N'Deep: Freediving, Renegade Science, and What the Ocean Tells Us About Ourselves', 288, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (804, N'The Book of Leon: Philosophy of a Fool', 272, 14)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (805, N'Giovanni''s Room', 224, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (806, N'An Indigenous Peoples'' History of the United States', 312, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (807, N'Woolly: The True Story of the Quest to Revive History''s Most Iconic Extinct Creature', 304, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (808, N'Gilgamesh', 290, 126)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (809, N'Playing Dead: A Journey Through the World of Death Fraud', 272, 18)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (810, N'All Joy and No Fun: The Paradox of Modern Parenthood', 336, 18)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (811, N'One of These Things First: A Memoir', 272, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (812, N'Pre-Suasion', 432, 16)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (813, N'Canada', 304, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (814, N'Contact', 448, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (816, N'Neverwhere', 464, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (817, N'Braving It: A Father, a Daughter, and an Unforgettable Journey into the Alaskan Wild', 384, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (818, N'The Secret Keeper', 496, 127)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (819, N'The Testament of Mary', 97, 114)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (820, N'Hagakure: The Secret Wisdom of the Samurai', 288, 14)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (821, N'The Financial Diet', 212, 24)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (822, N'Andrea Vernon and the Corporation for UltraHuman Protection', 432, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (823, N'Solar Bones', 273, 114)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (824, N'How to Tame a Fox (and Build a Dog)', 240, 23)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (825, N'Ready Player One', 400, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (826, N'Emotional Success', 240, 16)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (827, N'Lost Connections', 336, 16)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (828, N'The Year of Less', 221, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (829, N'No Time to Spare: Thinking About What Matters', 241, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (830, N'Outlander', 850, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (831, N'Starship Troopers', 292, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (832, N'Jurassic Park', 464, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (833, N'Off to Be the Wizard', 372, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (834, N'Spell or High Water', 442, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (835, N'An Unwelcome Quest', 421, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (836, N'Fight and Flight', 362, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (837, N'Out of Spite, Out of Mind', 262, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (838, N'Foundation', 296, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (839, N'The Andromeda Strain', 304, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (840, N'A River in Darkness: One Man''s Escape from North Korea', 172, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (841, N'The Age of Daredevils', 256, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (842, N'Heart of a Lion: A Lone Cat''s Walk Across America', 256, 23)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1842, N'The Sea of Tranquility', 448, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1843, N'Rabbit: The Autobiography of Ms. Pat', 240, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1844, N'The Sky Below: A True Story of Summits, Space, and Speed', 284, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1845, N'Fire & Blood, Volume 1', 736, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1846, N'On Intelligence', 272, 16)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1847, N'NOS4A2', 720, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1848, N'Fuzzy Nation', 368, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1849, N'The Hunt for Red October', 656, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1850, N'Station Breaker', 384, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1851, N'Paul: A Biography', 480, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1852, N'Restart', 256, 122)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1853, N'The Extraordinary Life of Sam Hell', 428, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1854, N'Factfulness', 352, 17)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1855, N'Without Saying a Word', 272, 18)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1856, N'The Song of Achilles', 416, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1857, N'Speak Like Churchill, Stand Like Lincoln', 224, 22)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1858, N'Room', 352, 114)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1859, N'Beyond Religion: Ethics for a Whole World', 208, 14)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1860, N'I''m Fine... And Other Lies', 288, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1861, N'The 21 Irrefutable Laws of Leadership', 336, 15)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1862, N'Mythology', 384, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1863, N'The Wind in My Hair', 400, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1864, N'Sapiens: A Brief History of Humankind', 464, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1865, N'Soonish: Ten Emerging Technologies That''ll Improve and/or Ruin Everything', 368, 25)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1866, N'Leviathan Wakes', 592, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1867, N'Caliban''s War', 605, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1868, N'Abaddon''s Gate', 547, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1869, N'The Rise and Fall of the Dinosaurs: A New History of a Lost World', 416, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1870, N'Cibola Burn', 591, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1871, N'Unfuck Yourself', 224, 18)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1872, N'Haroun and the Sea of Stories', 224, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1873, N'Nemesis Games', 536, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1874, N'Babylon''s Ashes', 544, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1875, N'Controlling People: How to Recognize, Understand, and Deal with People Who Try to Control You', 300, 18)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1876, N'The Anger Trap', 224, 18)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1877, N'Persepolis Rising', 560, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1878, N'The Road Less Stupid', 320, 24)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1879, N'Love, Lucy', 256, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1880, N'Stride Toward Freedom: The Montgomery Story', 272, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1881, N'Tiamat''s Wrath', 544, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1882, N'Replay', 322, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1883, N'Stuff Matters: Exploring the Marvelous Materials That Shape Our Man-Made World', 272, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1884, N'You''re Never Weird on the Internet (Almost)', 304, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1885, N'No Country for Old Men', 320, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1886, N'We''re Going to Need More Wine', 272, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1887, N'Barking up the Wrong Tree', 320, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1888, N'Hidden Figures: The American Dream and the Untold Story of the Black Women Mathematicians Who Helped Win the Space Race', 368, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1889, N'When You Are Engulfed in Flames', 336, 22)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1890, N'A Man Called Ove', 368, 125)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1891, N'A Confederacy of Dunces', 405, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1892, N'Recovery', 288, 18)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1893, N'Will Save the Galaxy for Food', 232, 105)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1894, N'The 100-Year-Old Man Who Climbed Out the Window and Disappeared', 400, 125)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1895, N'Silent Child', 416, 105)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1896, N'You''re Going to Mars!', 464, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1897, N'Slaughterhouse-Five', 288, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1898, N'The Handmaid''s Tale', 311, 121)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1899, N'Breakfast at Tiffany''s', 179, 121)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1900, N'The Hive', 400, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1901, N'The Prince of Tides', 576, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1902, N'Wish', 256, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1903, N'A Monster Calls', 224, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1904, N'Interview with the Vampire', 371, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1905, N'Great Expectations', 544, 111)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1906, N'How to Behave Badly in Elizabethan England', 320, 18)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1907, N'Lightly', 256, 18)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1908, N'Senlin Ascends', 448, 105)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1909, N'The Persian Gamble', 448, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1910, N'Deep Work: Rules for Focused Success in a Distracted World', 304, 18)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1911, N'I Am Malala', 256, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1912, N'How to Be a Good Creature: A Memoir in Thirteen Animals', 219, 22)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1913, N'The Gentleman''s Guide to Vice and Virtue', 544, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1914, N'The Lady''s Guide to Petticoats and Piracy', 464, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1915, N'The Book of Dust: The Secret Commonwealth', 656, 105)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1916, N'Days Without End', 343, 114)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1917, N'They Both Die at the End', 384, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1918, N'The Secret Diary of Hendrik Groen', 384, 128)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1919, N'On the Bright Side: The New Secret Diary of Hendrik Groen', 448, 128)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1920, N'Polar Vortex', 366, 105)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1921, N'My Lady Jane', 512, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (1922, N'What Doesn''t Kill Us', 272, 23)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (2921, N'Algorithms to Live By: The Computer Science of Human Decisions', 368, 19)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (2922, N'The Year of Living Danishly: Uncovering the Secrets of the World''s Happiest Country', 389, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (2923, N'The 10X Rule', 240, 15)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (2924, N'Our Magnificent Bastard Tongue: The Untold History of English', 268, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (2925, N'Chop Wood Carry Water', 130, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (2926, N'Never Split the Difference', 288, 20)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (2927, N'The Gifts of Imperfection', 160, 16)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (2928, N'The Elements of Style', 128, 22)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (2929, N'The Proximity Principle', 240, 18)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (2930, N'I Hear You', 148, 18)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (2931, N'The Myth Of Sisyphus', 212, 14)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (2932, N'Tribe', 192, 18)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (2933, N'Failure Is an Option: An Attempted Memoir', 256, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (2934, N'Calypso', 272, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (2935, N'The Minimalist Way', 161, 18)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (2936, N'Will My Cat Eat My Eyeballs?', 240, 23)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (2937, N'The Sentient Machine: The Coming Age of Artificial Intelligence', 240, 25)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (2938, N'Friday Black', 211, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (2939, N'The Things They Carried', 256, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (2940, N'438 Days', 288, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (3935, N'Into the Wild', 272, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (3936, N'The Witches Are Coming', 272, 7)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (3937, N'Fire and Ice', 336, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (3938, N'Awkward', 288, 16)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (3939, N'Forest of Secrets', 368, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (3940, N'Notes of a Crocodile', 256, 129)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (3941, N'Rising Storm', 368, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (3942, N'How to Have Impossible Conversations', 272, 18)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (3943, N'A Dangerous Path', 368, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (3944, N'The Best Yes', 272, 19)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (3945, N'The Darkest Hour', 368, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (3946, N'Conspiracies & Conspiracy Theories', 294, 16)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (3947, N'Firestar''s Quest', 544, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (3948, N'Mindset', 320, 16)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (3949, N'The Sun Trail', 368, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (3950, N'Blood, Sweat, and Pixels', 304, 15)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (3951, N'Thunder Rising', 365, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (3952, N'Lost in Math: How Beauty Leads Physics Astray', 304, 21)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (3953, N'The First Battle', 341, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (3954, N'Surviving IT', 310, 15)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (3955, N'The Blazing Star', 334, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (3956, N'Beaks, Bones & Bird Songs', 282, 23)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (3957, N'A Forest Divided', 400, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (3958, N'How We Got to Now: Six Innovations That Made the Modern World', 320, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (3959, N'Path of Stars', 352, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (3960, N'Celtic Mythology', 296, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (3961, N'Heaven''s River', 654, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (3962, N'Writing Science', 221, 22)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (3963, N'Galileo: And the Science Deniers', 304, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (3964, N'Eat the Yolks', 292, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (3965, N'Talking to Strangers: What We Should Know about the People We Don''t Know', 400, 7)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (3966, N'The Wild Robot', 320, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (3967, N'The Girl Who Drank the Moon', 386, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (3968, N'Unlearn', 320, 14)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (3969, N'Space Force', 304, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (3970, N'2nd Gen', 376, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (4966, N'The Ends of the World', 336, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (4967, N'Thinking About It Only Makes It Worse', 336, 7)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (4968, N'The Art of Asking', 352, 18)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (4969, N'The Ballad of Songbirds and Snakes', 528, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (4970, N'Head Strong', 352, 16)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (4971, N'Ready Player Two', 384, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (4972, N'Armada', 384, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (4973, N'The Storm Before the Storm: The Beginning of the End of the Roman Republic', 352, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (4974, N'With the Fire on High', 400, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (4975, N'The Good Earth', 384, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (4976, N'Human Errors: A Panorama of Our Glitches, from Pointless Bones to Broken Genes', 256, 23)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (4977, N'The Last Moriarty', 305, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (4978, N'The Stars My Destination', 457, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (4979, N'The Bomber Mafia', 256, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (4980, N'FantasticLand', 304, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (4981, N'The Wilhelm Conspiracy', 284, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (4982, N'Comet', 398, 21)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (4983, N'Black Buck', 400, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (4984, N'Everything Is Illuminated', 288, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (4985, N'The Electric Kool-Aid Acid Test', 432, 7)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (4986, N'Ramsey''s Gold', 350, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (4987, N'Emerald Buddha', 344, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (4988, N'The Industries of the Future', 320, 25)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (4989, N'The Goddess Legacy', 315, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (4990, N'Understanding the Dark Side of Human Nature', 442, 18)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (4991, N'White Fragility', 192, 7)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (4992, N'Arm of the Sphinx', 448, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (4993, N'The Hod King', 624, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (4994, N'The Fall of Babel', 672, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (4995, N'Prisoners of Geography: Ten Maps That Explain Everything About the World', 320, 7)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (4996, N'How to Hide an Empire: A History of the Greater United States', 528, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (4997, N'Apollo', 443, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (4998, N'Until the End of Time: Mind, Matter, and Our Search for Meaning in an Evolving Universe', 360, 21)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (4999, N'A Primate''s Memoir: A Neuroscientist''s Unconventional Life Among the Baboons', 304, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5000, N'Alcohol Lied to Me', 168, 18)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5001, N'Never Enough', 256, 23)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5002, N'The Rise and Fall of Ancient Egypt', 656, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5003, N'Company Of One: Why Staying Small Is the Next Big Thing for Business', 272, 15)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5004, N'The 50th Law', 297, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5005, N'The Man Without a Face: The Unlikely Rise of Vladimir Putin', 315, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5006, N'How the Stock Market Works', 280, 24)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5007, N'Together: The Healing Power of Human Connection in a Sometimes Lonely World', 352, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5008, N'A Game of Birds and Wolves', 336, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5009, N'Highly Sensitive Person', 189, 18)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5010, N'Sing Backwards and Weep', 352, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5011, N'Joy at Work', 256, 22)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5012, N'The Math of Life and Death: 7 Mathematical Principles That Shape Our Lives', 288, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5013, N'The Power of When', 384, 23)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5014, N'Talk Like TED', 304, 22)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5015, N'Is Fred in the Refrigerator?', 312, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5016, N'Rewire Your OCD Brain', 216, 18)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5017, N'Billion Dollar Loser', 304, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5018, N'The Book on Rental Property Investing', 347, 24)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5019, N'The Multifamily Millionaire, Volume I', 344, 24)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5020, N'The Ultimate History of the ''80s Teen Movie', 490, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5021, N'The Multifamily Millionaire, Volume II', 368, 24)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5022, N'The Nineties', 384, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5023, N'A Life on Our Planet: My Witness Statement and a Vision for the Future', 272, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5024, N'Get Rich Carefully', 450, 24)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5025, N'How I Built This', 320, 15)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5026, N'The Third Revolution: Xi Jinping and the New Chinese State', 360, 7)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5027, N'Adventures in Opting Out', 272, 18)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5028, N'This Is Your Brain on Food', 384, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5029, N'How to Stop Feeling Like Sh*t', 204, 18)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5030, N'Single On Purpose', 256, 18)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5031, N'Smart People Should Build Things', 272, 12)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5033, N'Start Your Own Corporation', 289, 24)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5034, N'Tax-Free Wealth', 320, 24)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5035, N'Why the Rich Are Getting Richer', 272, 24)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5036, N'The ABCs of Real Estate Investing', 220, 24)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5037, N'The Advanced Guide to Real Estate Investing', 197, 24)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5038, N'Rebecca', 490, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5039, N'Into the Labyrinth', 214, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5040, N'Jewel of the Endless Erg', 278, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5041, N'Alexander X', 342, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5042, N'Ancient Among Us', 356, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5043, N'The First Girl Child', 400, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5044, N'The Bone Houses', 352, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5045, N'Nothing More Dangerous', 304, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5046, N'The Win-Win Wealth Strategy', 256, 24)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5047, N'Iron, Fire and Ice', 456, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5048, N'Occupation', 298, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5049, N'Salvation', 267, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5050, N'Reclamation', 330, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5051, N'Bruce Lee: A Life', 656, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5052, N'The Room Where It Happened: A White House Memoir', 592, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5053, N'The Sellout', 306, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5054, N'The Demon-Haunted World: Science as a Candle in the Dark', 457, 6)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5055, N'Project Hail Mary', 496, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5056, N'A Man on the Moon: The Voyages of the Apollo Astronauts', 688, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5057, N'The Alchemist', 200, 130)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5058, N'Buy, Rehab, Rent, Refinance, Repeat', 332, 24)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5059, N'Long-Distance Real Estate Investing', 287, 24)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5060, N'The Flight Girls', 384, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5061, N'New Arcadia: Stage One', 429, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5062, N'New Arcadia: Revolution', 472, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5063, N'The Richest Man in Babylon', 224, 24)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5064, N'Wilder Girls', 400, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5065, N'Acres of Diamonds', 92, 22)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5066, N'In an Instant', 331, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5067, N'The Shipping News', 352, 101)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5068, N'Into the Stars', 528, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5069, N'Into the Battle', 536, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5070, N'Krampus: The Yule Lord', 368, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5071, N'The Quitter''s Manifesto', 127, 22)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5072, N'Real Estate by the Numbers', 320, 24)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5073, N'Lost Gods', 496, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5074, N'Real Estate Investing for Dummies', 464, 24)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5075, N'Race of Aces', 552, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5076, N'Three Mages and a Margarita', 314, 122)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5077, N'The Motivation Myth', 288, 18)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5078, N'Debt: The First 5000 Years', 765, 24)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5079, N'The One and Only Ivan', 336, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5080, N'The Idiot', 720, 115)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5081, N'The History of the Ancient World: From the Earliest Accounts to the Fall of Rome', 896, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5082, N'Adrift: America in 100 Charts', 320, 22)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5083, N'How to Think Like a Roman Emperor: The Stoic Philosophy of Marcus Aurelius', 304, 9)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5084, N'Option B', 240, 18)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5085, N'The British Are Coming: The War for America, Lexington to Princeton, 1775-1777', 800, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5086, N'The History of the Medieval World: From the Conversion of Constantine to the First Crusade', 768, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5087, N'The History of the Renaissance World: From the Rediscovery of Aristotle to the Conquest of Constantinople', 816, 10)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5088, N'Pax', 304, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5089, N'Pax, Journey Home', 256, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5090, N'The Evening and the Morning', 912, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5091, N'The Pillars of The Earth', 992, 102)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5092, N'World Without End', 1024, 105)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5093, N'A Column of Fire', 928, 105)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5094, N'The Disordered Cosmos:', 352, 21)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5095, N'A Man at Arms', 336, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5096, N'News of the World', 240, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5097, N'Murder at Melrose Court', 262, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5098, N'The Nobleman''s Guide to Scandal and Shipwrecks', 592, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5099, N'The Gentleman’s Guide to Getting Lucky', 128, 106)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5100, N'The 48 Laws of Power', 452, 18)
GO
INSERT [Book] ([bookId], [title], [pages], [subcategoryId]) VALUES (5101, N'Blood Meridian', 368, 101)
GO
SET IDENTITY_INSERT [Book] OFF
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1, 92, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (2, 131, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (3, 38, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (4, 107, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5, 373, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (6, 281, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (7, 263, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (8, 230, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (9, 45, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (10, 81, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (10, 186, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (11, 6, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (12, 96, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (13, 280, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (14, 378, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (15, 54, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (16, 132, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (17, 268, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (18, 132, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (19, 176, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (20, 321, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (21, 132, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (22, 132, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (23, 132, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (24, 432, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (25, 33, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (26, 423, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (27, 101, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (28, 185, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (29, 49, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (30, 126, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (31, 417, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (32, 41, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (33, 132, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (34, 54, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (35, 244, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (36, 304, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (37, 305, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (38, 408, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (39, 7, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (40, 350, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (40, 437, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (41, 321, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (42, 315, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (43, 180, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (44, 8, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (45, 249, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (46, 381, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (47, 52, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (48, 155, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (49, 415, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (50, 432, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (51, 223, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (52, 48, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (53, 357, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (54, 59, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (55, 305, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (56, 108, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (57, 44, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (58, 71, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (59, 35, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (60, 131, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (61, 252, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (62, 252, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (63, 252, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (64, 31, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (65, 432, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (66, 405, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (67, 26, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (68, 125, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (69, 230, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (70, 432, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (71, 221, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (72, 284, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (73, 42, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (74, 54, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (75, 405, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (76, 308, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (77, 191, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (78, 176, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (79, 236, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (80, 348, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (81, 413, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (82, 23, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (83, 352, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (84, 157, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (85, 21, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (86, 378, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (87, 209, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (88, 257, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (89, 396, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (90, 307, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (91, 273, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (92, 233, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (93, 196, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (94, 15, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (95, 298, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (96, 176, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (97, 14, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (98, 270, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (99, 377, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (100, 271, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (101, 60, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (102, 418, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (103, 389, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (104, 404, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (105, 357, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (106, 165, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (107, 94, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (107, 136, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (108, 228, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (109, 393, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (110, 396, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (111, 25, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (112, 304, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (113, 183, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (114, 307, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (115, 63, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (116, 180, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (117, 52, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (118, 32, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (119, 198, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (120, 238, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (121, 237, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (122, 402, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (123, 204, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (124, 314, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (125, 355, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (126, 403, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (127, 396, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (128, 432, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (129, 320, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (130, 294, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (131, 432, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (132, 142, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (133, 317, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (134, 257, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (135, 54, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (136, 27, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (137, 52, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (138, 52, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (139, 52, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (140, 52, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (141, 52, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (142, 52, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (143, 396, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (144, 135, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (145, 52, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (146, 67, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (147, 307, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (148, 165, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (149, 415, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (150, 54, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (151, 240, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (152, 131, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (153, 165, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (154, 132, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (155, 132, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (156, 325, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (157, 118, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (158, 255, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (159, 83, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (160, 223, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (161, 304, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (162, 304, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (163, 304, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (164, 220, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (165, 405, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (166, 103, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (167, 78, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (168, 3, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (169, 422, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (170, 289, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (171, 167, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (172, 83, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (173, 190, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (174, 235, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (175, 304, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (176, 304, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (177, 304, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (178, 243, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (179, 424, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (180, 239, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (181, 166, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (182, 66, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (183, 56, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (184, 328, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (185, 396, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (186, 2, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (186, 208, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (187, 2, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (187, 208, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (188, 2, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (188, 208, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (189, 2, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (189, 208, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (190, 201, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (191, 244, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (192, 247, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (193, 304, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (194, 77, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (195, 62, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (196, 165, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (197, 415, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (198, 274, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (199, 384, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (200, 291, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (201, 217, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (202, 52, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (203, 165, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (204, 290, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (205, 341, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (206, 178, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (207, 182, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (208, 17, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (209, 144, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (210, 165, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (211, 273, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (212, 192, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (213, 93, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (214, 432, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (215, 292, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (216, 213, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (217, 172, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (218, 172, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (219, 172, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (220, 172, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (221, 172, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (222, 172, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (223, 172, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (224, 172, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (225, 227, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (226, 148, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (226, 354, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (227, 432, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (228, 432, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (229, 432, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (230, 432, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (231, 432, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (232, 432, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (233, 432, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (234, 4, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (235, 205, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (236, 307, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (237, 131, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (238, 372, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (239, 110, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (239, 225, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (240, 88, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (241, 343, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (242, 245, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (242, 268, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (243, 364, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (244, 372, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (245, 212, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (246, 36, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (247, 242, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (248, 146, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (249, 86, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (250, 71, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (251, 415, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (252, 150, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (253, 222, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (254, 168, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (255, 184, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (256, 137, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (257, 322, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (258, 349, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (259, 57, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (260, 92, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (261, 318, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (262, 143, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (263, 149, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (264, 432, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (265, 104, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (266, 344, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (267, 432, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (268, 432, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (269, 155, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (270, 369, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (271, 79, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (272, 123, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (273, 68, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (274, 305, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (275, 16, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (276, 433, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (277, 368, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (278, 411, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (279, 436, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (280, 161, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (281, 268, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (282, 97, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (283, 133, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (284, 165, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (285, 390, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (286, 52, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (287, 127, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (287, 429, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (288, 429, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (289, 429, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (290, 80, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (291, 430, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (292, 16, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (293, 432, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (294, 319, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (295, 432, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (296, 139, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (297, 58, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (297, 72, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (298, 376, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (299, 416, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (300, 169, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (301, 307, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (302, 432, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (303, 262, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (304, 434, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (305, 395, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (306, 333, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (307, 335, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (308, 34, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (309, 157, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (310, 393, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (311, 165, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (312, 97, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (313, 364, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (314, 432, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (315, 194, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (316, 234, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (317, 396, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (318, 117, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (319, 312, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (320, 120, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (321, 177, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (322, 102, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (323, 95, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (323, 279, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (324, 265, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (325, 331, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (326, 319, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (327, 51, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (327, 335, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (328, 165, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (329, 374, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (330, 220, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (331, 165, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (332, 175, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (333, 319, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (334, 432, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (335, 119, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (336, 257, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (337, 369, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (338, 74, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (339, 240, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (340, 338, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (341, 214, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (342, 116, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (343, 432, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (344, 173, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (345, 396, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (346, 431, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (347, 289, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (348, 311, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (349, 307, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (350, 70, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (351, 18, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (352, 189, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (353, 50, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (354, 40, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (355, 224, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (356, 268, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (357, 244, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (358, 258, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (359, 276, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (360, 218, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (361, 22, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (362, 12, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (363, 421, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (364, 351, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (365, 432, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (366, 432, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (367, 269, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (368, 75, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (369, 380, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (370, 432, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (371, 30, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (372, 29, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (373, 366, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (374, 181, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (375, 188, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (375, 346, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (376, 352, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (377, 352, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (378, 364, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (379, 189, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (380, 396, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (381, 232, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (382, 304, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (383, 304, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (384, 304, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (385, 304, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (386, 270, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (387, 360, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (388, 97, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (389, 396, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (390, 304, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (391, 210, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (392, 273, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (393, 396, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (394, 410, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (395, 147, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (396, 163, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (397, 334, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (398, 260, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (399, 132, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (400, 104, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (401, 104, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (402, 104, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (403, 104, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (404, 396, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (405, 397, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (406, 251, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (407, 337, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (408, 50, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (409, 87, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (410, 400, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (411, 428, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (412, 268, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (413, 54, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (414, 406, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (415, 370, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (416, 268, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (417, 336, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (418, 134, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (419, 319, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (420, 129, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (421, 138, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (422, 65, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (423, 218, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (424, 321, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (425, 321, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (426, 321, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (427, 412, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (428, 392, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (429, 13, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (430, 37, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (431, 53, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (432, 287, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (433, 204, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (434, 54, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (435, 104, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (436, 419, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (437, 283, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (438, 266, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (439, 248, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (440, 16, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (441, 339, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (442, 275, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (442, 362, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (443, 310, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (444, 229, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (445, 358, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (446, 272, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (447, 272, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (448, 272, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (449, 272, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (450, 286, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (451, 111, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (452, 111, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (453, 111, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (454, 111, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (455, 111, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (456, 345, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (457, 111, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (458, 111, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (459, 111, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (460, 111, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (461, 111, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (462, 345, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (463, 345, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (464, 407, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (465, 121, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (466, 176, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (467, 295, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (468, 124, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (469, 305, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (470, 296, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (471, 160, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (472, 171, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (473, 334, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (474, 54, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (475, 367, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (476, 367, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (477, 367, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (478, 195, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (479, 105, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (480, 432, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (481, 73, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (482, 307, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (483, 130, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (484, 103, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (485, 359, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (486, 28, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (487, 24, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (488, 16, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (489, 54, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (490, 176, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (491, 71, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (492, 112, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (493, 426, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (494, 247, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (495, 85, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (496, 353, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (497, 154, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (498, 47, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (499, 211, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (500, 176, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (501, 307, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (502, 174, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (503, 334, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (504, 334, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (505, 256, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (506, 361, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (507, 307, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (508, 396, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (509, 387, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (510, 307, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (511, 207, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (512, 106, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (513, 289, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (514, 89, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (515, 388, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (516, 388, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (517, 388, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (518, 332, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (519, 82, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (520, 220, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (521, 50, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (522, 114, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (523, 113, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (524, 200, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (524, 241, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (525, 313, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (526, 20, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (527, 54, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (528, 197, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (529, 132, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (530, 47, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (531, 365, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (532, 321, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (533, 97, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (534, 174, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (535, 50, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (536, 297, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (537, 405, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (538, 307, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (539, 393, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (540, 132, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (541, 377, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (542, 158, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (543, 330, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (544, 305, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (545, 307, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (546, 261, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (547, 414, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (548, 195, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (549, 115, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (550, 50, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (551, 327, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (552, 425, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (553, 307, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (554, 54, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (555, 54, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (556, 153, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (557, 401, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (558, 309, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (559, 50, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (560, 71, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (561, 100, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (562, 50, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (563, 266, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (564, 195, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (565, 16, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (566, 303, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (567, 267, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (568, 165, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (569, 19, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (570, 240, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (571, 307, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (572, 399, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (573, 334, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (574, 250, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (575, 370, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (576, 432, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (577, 162, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (578, 432, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (579, 231, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (580, 159, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (581, 200, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (581, 241, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (582, 427, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (583, 132, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (584, 282, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (585, 128, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (586, 259, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (587, 55, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (588, 299, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (589, 307, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (590, 54, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (591, 396, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (592, 53, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (593, 375, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (594, 156, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (595, 305, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (596, 396, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (597, 195, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (598, 80, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (599, 334, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (600, 226, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (601, 109, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (602, 54, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (603, 101, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (604, 301, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (605, 40, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (606, 40, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (607, 340, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (608, 5, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (609, 293, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (610, 179, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (610, 394, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (611, 376, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (612, 97, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (613, 104, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (614, 174, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (615, 307, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (616, 240, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (617, 307, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (618, 297, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (619, 219, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (620, 9, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (621, 176, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (622, 332, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (623, 195, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (624, 174, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (625, 50, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (626, 278, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (627, 329, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (628, 84, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (629, 104, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (630, 420, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (631, 165, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (632, 140, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (633, 386, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (634, 382, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (635, 264, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (636, 319, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (637, 307, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (638, 304, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (639, 203, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (640, 432, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (641, 432, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (642, 378, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (643, 396, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (644, 307, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (645, 16, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (646, 257, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (647, 246, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (648, 152, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (649, 432, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (650, 432, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (651, 174, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (652, 378, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (653, 69, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (654, 195, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (655, 50, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (656, 141, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (657, 342, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (658, 307, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (659, 432, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (660, 187, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (661, 16, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (662, 240, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (663, 398, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (664, 132, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (665, 11, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (666, 92, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (667, 307, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (668, 277, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (669, 379, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (669, 384, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (670, 76, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (671, 98, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (672, 61, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (673, 99, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (674, 99, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (675, 99, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (676, 99, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (677, 99, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (678, 99, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (679, 249, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (680, 165, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (681, 432, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (682, 206, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (683, 432, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (684, 144, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (685, 268, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (686, 268, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (687, 254, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (688, 216, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (689, 307, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (690, 344, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (691, 432, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (692, 432, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (693, 16, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (694, 91, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (695, 145, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (696, 343, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (697, 43, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (698, 170, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (699, 371, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (700, 316, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (701, 289, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (702, 383, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (703, 151, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (704, 215, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (705, 285, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (706, 396, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (707, 306, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (708, 39, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (709, 64, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (710, 409, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (711, 323, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (712, 46, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (712, 202, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (713, 326, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (714, 302, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (715, 324, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (715, 356, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (716, 122, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (717, 385, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (718, 435, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (719, 376, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (720, 176, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (721, 288, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (722, 10, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (722, 363, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (723, 90, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (723, 253, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (724, 164, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (725, 164, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (726, 164, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (727, 1, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (728, 391, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (729, 396, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (730, 21, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (731, 304, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (732, 199, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (733, 193, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (734, 165, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (735, 300, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (736, 331, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (737, 347, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (739, 438, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (739, 439, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (740, 440, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (741, 69, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (741, 441, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (741, 442, 3)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (742, 71, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (743, 443, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (744, 304, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (745, 443, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (746, 444, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (747, 319, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (748, 440, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (749, 440, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (750, 19, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (751, 445, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (752, 446, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (753, 447, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (754, 422, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (755, 422, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (756, 448, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (757, 43, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (758, 449, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (759, 450, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (760, 451, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (761, 452, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (762, 453, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (763, 454, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (764, 455, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (765, 456, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (766, 457, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (767, 458, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (768, 459, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (769, 460, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (770, 461, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (771, 461, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (772, 462, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (772, 463, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (773, 464, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (773, 465, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (774, 466, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (775, 467, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (776, 369, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (777, 468, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (778, 469, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (779, 470, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (780, 471, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (780, 472, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (781, 473, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (782, 474, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (783, 475, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (784, 47, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (785, 476, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (786, 477, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (787, 478, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (788, 479, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (789, 480, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (790, 481, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (791, 482, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (792, 483, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (792, 484, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (793, 485, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (794, 486, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (795, 334, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (796, 487, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (797, 488, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (798, 489, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (799, 490, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (800, 491, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (801, 492, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (802, 440, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (803, 493, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (804, 494, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (805, 495, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (806, 496, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (807, 497, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (808, 23, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (809, 498, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (810, 499, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (811, 500, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (812, 501, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (813, 502, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (814, 460, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (816, 490, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (817, 503, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (818, 504, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (819, 505, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (820, 506, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (821, 507, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (822, 508, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (823, 509, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (824, 510, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (824, 511, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (825, 512, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (826, 513, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (827, 514, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (828, 515, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (829, 516, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (830, 517, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (831, 518, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (832, 519, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (833, 520, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (834, 520, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (835, 520, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (836, 520, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (837, 520, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (838, 168, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (839, 519, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (840, 521, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (841, 522, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (842, 523, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1842, 1523, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1843, 1524, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1844, 1525, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1844, 1526, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1845, 132, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1846, 362, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1846, 1527, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1847, 1528, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1848, 218, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1849, 1529, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1850, 1530, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1851, 1531, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1852, 1532, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1853, 1533, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1854, 1534, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1854, 1535, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1854, 1536, 3)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1855, 1537, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1855, 1538, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1856, 1539, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1857, 183, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1858, 1540, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1859, 69, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1860, 1541, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1861, 1542, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1862, 1543, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1863, 1544, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1864, 1545, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1865, 1546, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1865, 1547, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1866, 1548, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1867, 1548, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1868, 1548, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1869, 1549, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1870, 1548, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1871, 1550, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1872, 1551, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1873, 1548, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1874, 1548, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1875, 1552, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1876, 1553, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1877, 1548, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1878, 1554, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1879, 1555, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1880, 1556, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1881, 1548, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1882, 1557, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1883, 1558, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1884, 1559, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1885, 1560, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1886, 1561, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1887, 1562, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1888, 1563, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1889, 1564, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1890, 1565, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1891, 1566, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1892, 1567, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1893, 1568, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1894, 1569, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1895, 1570, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1896, 1571, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1897, 1572, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1898, 1573, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1899, 1574, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1900, 304, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1901, 1575, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1902, 1576, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1903, 1577, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1904, 1578, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1905, 54, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1906, 1579, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1907, 1580, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1908, 1581, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1909, 1582, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1910, 1583, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1911, 1584, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1912, 1585, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1913, 1586, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1914, 1586, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1915, 319, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1916, 1587, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1917, 1588, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1918, 23, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1919, 23, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1920, 1589, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1921, 1590, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1921, 1591, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1921, 1592, 3)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (1922, 1593, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (2921, 2590, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (2921, 2591, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (2922, 2592, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (2923, 2593, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (2924, 454, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (2925, 2594, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (2926, 2595, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (2927, 2596, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (2928, 2597, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (2928, 2598, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (2929, 2599, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (2930, 2600, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (2931, 2601, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (2932, 2602, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (2933, 2603, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (2934, 1564, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (2935, 2604, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (2936, 2605, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (2937, 2606, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (2938, 2607, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (2939, 2608, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (2940, 2609, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (3935, 3604, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (3936, 3605, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (3937, 3604, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (3938, 3606, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (3939, 3604, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (3940, 3607, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (3941, 3604, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (3942, 3608, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (3942, 3609, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (3943, 3604, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (3944, 3610, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (3945, 3604, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (3946, 3611, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (3947, 3604, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (3948, 3612, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (3949, 3604, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (3950, 3613, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (3951, 3604, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (3952, 3614, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (3953, 3604, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (3954, 3615, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (3955, 3604, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (3956, 3616, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (3957, 3604, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (3958, 385, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (3959, 3604, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (3960, 3617, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (3961, 440, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (3962, 3618, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (3963, 3619, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (3964, 3620, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (3965, 257, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (3966, 3621, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (3967, 3622, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (3968, 3623, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (3969, 3624, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (3970, 3625, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (3970, 3626, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (4966, 4621, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (4967, 4622, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (4968, 4623, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (4969, 393, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (4970, 4624, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (4971, 512, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (4972, 512, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (4973, 4625, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (4974, 4626, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (4975, 4627, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (4976, 4628, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (4977, 4629, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (4978, 4630, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (4979, 257, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (4980, 4631, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (4981, 4629, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (4982, 460, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (4983, 4632, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (4984, 4633, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (4985, 4634, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (4986, 4635, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (4987, 4635, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (4988, 4636, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (4989, 4635, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (4990, 4637, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (4991, 4638, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (4992, 1581, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (4993, 1581, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (4994, 1581, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (4995, 4639, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (4996, 4640, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (4997, 4641, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (4997, 4642, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (4998, 47, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (4999, 348, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5000, 4643, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5001, 4644, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5002, 4645, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5003, 4646, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5004, 4647, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5005, 4648, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5006, 4649, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5007, 4650, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5008, 4651, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5009, 4652, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5010, 4653, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5011, 4654, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5012, 4655, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5013, 4656, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5014, 4657, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5015, 4658, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5016, 4659, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5016, 4660, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5017, 4661, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5018, 4662, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5019, 4662, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5019, 4663, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5020, 4664, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5021, 4662, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5021, 4663, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5022, 4665, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5023, 4666, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5024, 4667, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5025, 4668, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5026, 4669, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5027, 515, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5028, 4670, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5029, 4671, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5030, 4672, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5031, 4673, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5033, 4674, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5034, 4675, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5035, 351, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5036, 4676, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5037, 4676, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5038, 4677, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5039, 4678, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5040, 4678, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5041, 4679, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5042, 4679, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5043, 4680, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5044, 4681, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5045, 4682, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5046, 4675, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5047, 4683, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5048, 4684, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5048, 4685, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5049, 4684, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5049, 4685, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5050, 4684, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5050, 4685, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5051, 4686, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5052, 4687, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5053, 4688, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5054, 460, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5055, 19, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5056, 4689, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5057, 4690, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5058, 4691, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5059, 4691, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5060, 4692, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5061, 4693, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5062, 4693, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5063, 4694, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5064, 4695, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5065, 4696, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5066, 4697, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5067, 4698, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5068, 4699, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5069, 4699, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5070, 4700, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5071, 4701, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5071, 4702, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5072, 4703, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5072, 4704, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5073, 4700, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5074, 4705, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5074, 4706, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5075, 4707, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5076, 4708, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5077, 4709, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5078, 4710, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5079, 4711, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5080, 121, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5081, 4712, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5082, 4713, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5083, 4714, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5084, 4715, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5084, 4716, 2)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5085, 4717, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5086, 4712, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5087, 4712, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5088, 4718, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5089, 4718, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5090, 4719, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5091, 4719, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5092, 4719, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5093, 4719, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5094, 4720, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5095, 4721, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5096, 4722, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5097, 4723, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5098, 1586, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5099, 1586, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5100, 4647, 1)
GO
INSERT [BookAuthor] ([bookId], [authorId], [authorOrder]) VALUES (5101, 1560, 1)
GO
SET IDENTITY_INSERT [BookRead] ON 
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1, 682, 2016, 618, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2, 3, 2013, 461, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (3, 4, 2009, 132, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (4, 5, 2016, 630, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5, 6, 2012, 384, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (6, 1, 2009, 79, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (7, 7, 2011, 250, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (8, 2, 2007, 19, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (9, 8, 2008, 55, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (10, 9, 2012, 341, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (11, 10, 2010, 220, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (12, 11, 2016, 644, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (13, 12, 2012, 339, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (14, 13, 2014, 519, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (15, 14, 2006, 6, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (16, 15, 2007, 26, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (17, 16, 2016, 706, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (18, 16, 2011, 281, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (19, 17, 2013, 457, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (20, 18, 2011, 290, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (21, 18, 2016, 709, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (22, 19, 2017, 721, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (23, 20, 2016, 669, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (24, 21, 2016, 708, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (25, 21, 2011, 283, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (26, 22, 2011, 280, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (27, 22, 2016, 705, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (28, 23, 2016, 710, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (29, 24, 2015, 566, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (30, 25, 2016, 681, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (31, 26, 2017, 740, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (32, 27, 2015, 592, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (33, 28, 2007, 21, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (34, 29, 2016, 686, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (35, 30, 2016, 646, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (36, 31, 2016, 697, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (37, 32, 2008, 64, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (38, 33, 2016, 707, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (39, 33, 2011, 282, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (40, 34, 2016, 624, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (41, 35, 2012, 418, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (42, 36, 2014, 509, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (43, 37, 2015, 550, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (44, 38, 2012, 374, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (45, 39, 2008, 45, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (46, 40, 2014, 489, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (47, 41, 2016, 670, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (48, 42, 2011, 286, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (49, 43, 2016, 607, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (50, 44, 2008, 57, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (51, 45, 2010, 243, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (52, 46, 2016, 604, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (53, 47, 2009, 123, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (54, 50, 2015, 584, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (55, 48, 2012, 390, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (56, 49, 2014, 495, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (57, 51, 2008, 38, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (58, 52, 2016, 610, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (59, 53, 2016, 637, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (60, 54, 2014, 473, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (61, 55, 2015, 551, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (62, 56, 2010, 203, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (63, 57, 2012, 369, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (64, 58, 2013, 438, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (65, 59, 2011, 249, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (66, 60, 2007, 16, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (67, 61, 2013, 432, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (68, 62, 2013, 431, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (69, 63, 2013, 433, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (70, 64, 2008, 53, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (71, 65, 2015, 588, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (72, 66, 2009, 140, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (73, 67, 2013, 445, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (74, 68, 2016, 640, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (75, 69, 2008, 28, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (76, 70, 2015, 577, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (77, 71, 2016, 642, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (78, 72, 2012, 363, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (79, 73, 2012, 375, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (80, 74, 2011, 324, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (81, 75, 2009, 137, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (82, 76, 2008, 43, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (83, 77, 2014, 520, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (84, 78, 2017, 719, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (85, 79, 2007, 14, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (86, 80, 2017, 754, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (87, 81, 2009, 89, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (88, 82, 2008, 29, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (89, 83, 2011, 305, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (90, 84, 2008, 27, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (91, 85, 2010, 194, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (92, 86, 2014, 493, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (93, 87, 2016, 687, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (94, 88, 2012, 382, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (95, 89, 2010, 206, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (96, 90, 2009, 127, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (97, 91, 2010, 168, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (98, 92, 2016, 672, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (99, 93, 2017, 746, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (100, 94, 2008, 47, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (101, 95, 2016, 652, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (102, 96, 2017, 720, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (103, 97, 2010, 218, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (104, 98, 2009, 148, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (105, 99, 2009, 87, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (106, 100, 2014, 525, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (107, 101, 2011, 277, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (108, 103, 2010, 238, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (109, 102, 2008, 34, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (110, 104, 2014, 527, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (111, 105, 2009, 90, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (112, 106, 2011, 259, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (113, 107, 2012, 354, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (114, 108, 2017, 724, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (115, 109, 2013, 428, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (116, 110, 2010, 212, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (117, 111, 2017, 743, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (118, 112, 2015, 574, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (119, 113, 2013, 454, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (120, 114, 2017, 770, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (121, 114, 2009, 116, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (122, 115, 2012, 355, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (123, 116, 2016, 613, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (124, 117, 2009, 111, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (125, 118, 2010, 183, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (126, 119, 2014, 490, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (127, 120, 2011, 273, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (128, 121, 2014, 526, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (129, 122, 2016, 617, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (130, 123, 2012, 366, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (131, 124, 2012, 362, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (132, 125, 2010, 167, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (133, 126, 2011, 313, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (134, 127, 2010, 214, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (135, 128, 2015, 596, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (136, 129, 2016, 623, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (137, 130, 2009, 151, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (138, 131, 2015, 598, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (139, 136, 2011, 287, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (140, 132, 2016, 625, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (141, 133, 2010, 155, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (142, 134, 2014, 492, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (143, 135, 2012, 397, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (144, 137, 2009, 125, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (145, 138, 2009, 118, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (146, 139, 2011, 274, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (147, 140, 2011, 275, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (148, 141, 2009, 117, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (149, 142, 2009, 102, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (150, 143, 2010, 215, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (151, 144, 2010, 239, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (152, 145, 2009, 119, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (153, 146, 2006, 7, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (154, 147, 2009, 99, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (155, 147, 2017, 760, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (156, 148, 2011, 262, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (157, 149, 2014, 487, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (158, 150, 2012, 376, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (159, 151, 2013, 471, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (160, 152, 2013, 451, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (161, 153, 2011, 264, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (162, 154, 2012, 395, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (163, 155, 2012, 396, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (164, 156, 2012, 398, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (165, 157, 2009, 129, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (166, 158, 2015, 554, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (167, 159, 2014, 500, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (168, 160, 2010, 232, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (169, 161, 2014, 480, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (170, 162, 2014, 499, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (171, 163, 2014, 476, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (172, 164, 2011, 301, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (173, 165, 2011, 251, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (174, 166, 2011, 289, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (175, 167, 2015, 547, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (176, 168, 2013, 468, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (177, 170, 2013, 467, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (178, 169, 2013, 430, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (179, 171, 2014, 516, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (180, 172, 2010, 164, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (181, 173, 2009, 82, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (182, 174, 2009, 85, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (183, 175, 2014, 534, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (184, 176, 2014, 503, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (185, 177, 2014, 506, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (186, 178, 2010, 170, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (187, 179, 2016, 649, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (188, 180, 2010, 217, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (189, 181, 2010, 180, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (190, 182, 2017, 714, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (191, 183, 2010, 202, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (192, 184, 2012, 388, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (193, 185, 2010, 209, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (194, 186, 2016, 662, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (195, 187, 2016, 665, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (196, 188, 2016, 661, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (197, 189, 2016, 664, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (198, 190, 2015, 544, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (199, 191, 2016, 632, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (200, 192, 2014, 498, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (201, 193, 2014, 540, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (202, 194, 2007, 15, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (203, 195, 2010, 216, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (204, 196, 2011, 266, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (205, 197, 2016, 620, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (206, 198, 2008, 35, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (207, 199, 2008, 60, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (208, 200, 2009, 150, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (209, 201, 2009, 149, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (210, 202, 2009, 124, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (211, 203, 2011, 263, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (212, 204, 2013, 422, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (213, 205, 2009, 153, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (214, 206, 2017, 744, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (215, 207, 2009, 77, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (216, 208, 2012, 359, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (217, 209, 2015, 589, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (218, 210, 2011, 265, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (219, 211, 2016, 639, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (220, 212, 2010, 156, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (221, 213, 2010, 240, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (222, 214, 2015, 578, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (223, 215, 2015, 548, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (224, 216, 2009, 154, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (225, 217, 2008, 46, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (226, 217, 2017, 733, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (227, 218, 2017, 739, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (228, 219, 2017, 738, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (229, 219, 2008, 56, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (230, 220, 2008, 50, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (231, 220, 2017, 735, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (232, 221, 2017, 737, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (233, 221, 2008, 54, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (234, 222, 2008, 52, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (235, 222, 2017, 736, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (236, 223, 2017, 732, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (237, 223, 2008, 44, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (238, 224, 2008, 48, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (239, 224, 2017, 734, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (240, 225, 2008, 30, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (241, 226, 2014, 522, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (242, 227, 2015, 570, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (243, 228, 2015, 572, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (244, 229, 2015, 575, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (245, 230, 2015, 559, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (246, 231, 2015, 557, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (247, 232, 2015, 558, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (248, 233, 2015, 601, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (249, 234, 2012, 413, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (250, 235, 2010, 158, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (251, 236, 2009, 95, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (252, 236, 2017, 758, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (253, 237, 2014, 511, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (254, 238, 2011, 252, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (255, 239, 2017, 745, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (256, 240, 2011, 323, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (257, 241, 2012, 340, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (258, 242, 2010, 226, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (259, 243, 2013, 425, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (260, 244, 2011, 247, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (261, 245, 2012, 347, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (262, 246, 2010, 176, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (263, 247, 2012, 361, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (264, 248, 2014, 504, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (265, 249, 2011, 291, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (266, 250, 2013, 441, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (267, 251, 2014, 491, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (268, 252, 2009, 147, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (269, 253, 2009, 131, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (270, 254, 2011, 311, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (271, 255, 2010, 165, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (272, 256, 2012, 337, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (273, 257, 2016, 631, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (274, 258, 2010, 204, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (275, 259, 2007, 24, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (276, 260, 2009, 80, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (277, 261, 2009, 130, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (278, 262, 2014, 478, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (279, 263, 2014, 505, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (280, 264, 2015, 576, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (281, 265, 2012, 409, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (282, 266, 2008, 32, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (283, 267, 2015, 567, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (284, 268, 2015, 585, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (285, 269, 2012, 389, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (286, 270, 2010, 173, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (287, 271, 2006, 3, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (288, 272, 2012, 379, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (289, 273, 2013, 450, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (290, 274, 2015, 553, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (291, 275, 2009, 96, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (292, 276, 2016, 619, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (293, 277, 2009, 72, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (294, 278, 2010, 235, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (295, 279, 2013, 443, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (296, 280, 2010, 187, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (297, 281, 2014, 521, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (298, 282, 2006, 8, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (299, 283, 2017, 725, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (300, 284, 2011, 260, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (301, 285, 2009, 88, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (302, 286, 2009, 107, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (303, 287, 2013, 458, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (304, 288, 2013, 460, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (305, 289, 2013, 459, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (306, 290, 2010, 174, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (307, 291, 2012, 391, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (308, 292, 2011, 245, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (309, 293, 2015, 563, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (310, 294, 2009, 67, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (311, 295, 2015, 587, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (312, 296, 2011, 309, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (313, 297, 2009, 144, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (314, 298, 2017, 715, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (315, 299, 2016, 680, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (316, 300, 2009, 73, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (317, 301, 2009, 93, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (318, 301, 2017, 756, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (319, 302, 2015, 582, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (320, 303, 2017, 748, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (321, 303, 2016, 695, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (322, 304, 2016, 641, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (323, 305, 2014, 510, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (324, 306, 2016, 675, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (325, 307, 2017, 742, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (326, 308, 2006, 2, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (327, 309, 2010, 219, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (328, 310, 2013, 429, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (329, 311, 2011, 261, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (330, 312, 2009, 113, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (331, 313, 2013, 424, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (332, 314, 2015, 573, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (333, 315, 2013, 435, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (334, 316, 2016, 629, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (335, 317, 2010, 211, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (336, 318, 2011, 253, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (337, 319, 2014, 528, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (338, 320, 2009, 74, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (339, 321, 2010, 184, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (340, 322, 2010, 222, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (341, 323, 2011, 307, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (342, 324, 2013, 453, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (343, 325, 2006, 5, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (344, 326, 2008, 61, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (345, 327, 2014, 475, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (346, 328, 2011, 272, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (347, 329, 2009, 68, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (348, 330, 2011, 300, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (349, 331, 2011, 269, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (350, 332, 2010, 190, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (351, 333, 2017, 731, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (352, 334, 2015, 583, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (353, 335, 2011, 316, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (354, 336, 2011, 285, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (355, 337, 2014, 479, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (356, 338, 2011, 321, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (357, 339, 2013, 470, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (358, 340, 2010, 234, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (359, 341, 2008, 37, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (360, 342, 2017, 755, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (361, 343, 2015, 595, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (362, 344, 2013, 448, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (363, 345, 2010, 213, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (364, 346, 2016, 657, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (365, 347, 2010, 159, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (366, 348, 2015, 549, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (367, 349, 2009, 94, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (368, 349, 2017, 757, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (369, 350, 2009, 143, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (370, 351, 2010, 237, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (371, 352, 2009, 84, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (372, 353, 2011, 295, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (373, 354, 2016, 653, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (374, 355, 2010, 175, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (375, 356, 2013, 456, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (376, 357, 2012, 343, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (377, 358, 2013, 434, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (378, 359, 2010, 178, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (379, 360, 2014, 484, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (380, 361, 2016, 614, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (381, 362, 2014, 496, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (382, 363, 2012, 350, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (383, 364, 2009, 134, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (384, 365, 2015, 564, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (385, 366, 2015, 561, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (386, 367, 2016, 694, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (387, 368, 2008, 41, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (388, 369, 2012, 344, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (389, 370, 2015, 565, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (390, 371, 2007, 17, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (391, 372, 2016, 654, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (392, 373, 2016, 684, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (393, 374, 2017, 712, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (394, 375, 2010, 223, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (395, 376, 2011, 306, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (396, 377, 2011, 304, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (397, 378, 2013, 423, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (398, 379, 2010, 229, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (399, 380, 2015, 590, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (400, 381, 2012, 373, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (401, 382, 2014, 530, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (402, 383, 2014, 514, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (403, 384, 2014, 523, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (404, 385, 2014, 537, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (405, 386, 2016, 685, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (406, 387, 2012, 378, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (407, 388, 2009, 112, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (408, 389, 2010, 208, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (409, 390, 2015, 543, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (410, 391, 2012, 352, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (411, 392, 2010, 177, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (412, 393, 2010, 205, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (413, 394, 2014, 535, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (414, 395, 2011, 248, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (415, 396, 2009, 146, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (416, 397, 2016, 678, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (417, 397, 2017, 726, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (418, 398, 2014, 539, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (419, 399, 2011, 279, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (420, 400, 2012, 408, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (421, 401, 2012, 401, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (422, 402, 2012, 412, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (423, 403, 2012, 411, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (424, 404, 2010, 207, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (425, 405, 2009, 69, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (426, 406, 2012, 348, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (427, 407, 2011, 314, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (428, 408, 2011, 258, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (429, 409, 2014, 474, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (430, 410, 2016, 633, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (431, 411, 2016, 609, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (432, 412, 2010, 224, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (433, 413, 2011, 315, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (434, 414, 2017, 717, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (435, 415, 2006, 10, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (436, 416, 2010, 225, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (437, 417, 2011, 312, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (438, 418, 2009, 141, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (439, 419, 2008, 65, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (440, 420, 2009, 81, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (441, 421, 2009, 66, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (442, 422, 2016, 626, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (443, 423, 2013, 462, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (444, 424, 2016, 666, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (445, 425, 2016, 667, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (446, 426, 2016, 668, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (447, 427, 2009, 138, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (448, 428, 2008, 59, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (449, 429, 2010, 189, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (450, 430, 2008, 62, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (451, 431, 2016, 612, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (452, 432, 2011, 255, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (453, 433, 2012, 364, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (454, 434, 2012, 334, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (455, 435, 2012, 403, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (456, 436, 2012, 406, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (457, 437, 2016, 628, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (458, 438, 2009, 152, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (459, 439, 2010, 231, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (460, 440, 2016, 615, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (461, 441, 2015, 546, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (462, 442, 2012, 383, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (463, 443, 2012, 367, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (464, 444, 2012, 404, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (465, 445, 2014, 538, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (466, 446, 2012, 356, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (467, 447, 2012, 358, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (468, 448, 2012, 360, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (469, 449, 2012, 365, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (470, 450, 2010, 162, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (471, 451, 2016, 699, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (472, 452, 2016, 651, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (473, 453, 2016, 659, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (474, 454, 2016, 677, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (475, 455, 2016, 700, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (476, 456, 2016, 627, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (477, 457, 2016, 690, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (478, 458, 2016, 647, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (479, 459, 2016, 663, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (480, 460, 2016, 698, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (481, 461, 2016, 655, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (482, 462, 2016, 635, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (483, 463, 2016, 643, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (484, 464, 2007, 25, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (485, 465, 2011, 276, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (486, 466, 2013, 449, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (487, 467, 2010, 163, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (488, 468, 2011, 256, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (489, 469, 2012, 380, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (490, 470, 2007, 11, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (491, 471, 2008, 49, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (492, 472, 2013, 466, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (493, 473, 2014, 501, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (494, 474, 2011, 326, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (495, 475, 2012, 415, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (496, 476, 2012, 417, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (497, 477, 2012, 419, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (498, 478, 2011, 327, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (499, 479, 2016, 683, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (500, 480, 2015, 562, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (501, 481, 2014, 482, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (502, 482, 2009, 121, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (503, 482, 2017, 772, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (504, 483, 2011, 325, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (505, 484, 2011, 288, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (506, 485, 2011, 254, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (507, 486, 2016, 621, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (508, 487, 2007, 13, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (509, 488, 2008, 33, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (510, 489, 2011, 333, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (511, 490, 2017, 718, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (512, 491, 2013, 439, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (513, 492, 2017, 722, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (514, 493, 2011, 317, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (515, 494, 2012, 371, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (516, 495, 2009, 142, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (517, 496, 2012, 357, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (518, 497, 2010, 186, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (519, 498, 2010, 161, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (520, 499, 2012, 386, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (521, 500, 2017, 723, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (522, 501, 2017, 765, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (523, 501, 2009, 108, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (524, 502, 2017, 750, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (525, 502, 2009, 97, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (526, 503, 2013, 437, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (527, 504, 2017, 727, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (528, 505, 2014, 497, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (529, 506, 2016, 693, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (530, 507, 2009, 128, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (531, 508, 2013, 442, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (532, 509, 2012, 370, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (533, 510, 2017, 761, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (534, 510, 2009, 100, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (535, 511, 2011, 303, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (536, 512, 2011, 318, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (537, 513, 2014, 486, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (538, 514, 2016, 704, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (539, 515, 2016, 703, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (540, 516, 2016, 702, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (541, 517, 2016, 701, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (542, 518, 2014, 507, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (543, 519, 2009, 136, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (544, 520, 2011, 299, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (545, 521, 2011, 257, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (546, 522, 2007, 20, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (547, 523, 2014, 483, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (548, 524, 2017, 730, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (549, 525, 2012, 377, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (550, 526, 2017, 747, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (551, 527, 2012, 335, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (552, 528, 2010, 233, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (553, 529, 2011, 278, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (554, 530, 2015, 580, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (555, 531, 2016, 696, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (556, 532, 2016, 671, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (557, 533, 2006, 1, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (558, 534, 2007, 18, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (559, 534, 2017, 749, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (560, 535, 2011, 294, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (561, 536, 2008, 39, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (562, 537, 2011, 319, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (563, 538, 2017, 774, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (564, 538, 2009, 126, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (565, 539, 2013, 427, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (566, 540, 2012, 393, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (567, 541, 2014, 477, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (568, 542, 2009, 75, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (569, 543, 2010, 193, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (570, 544, 2015, 552, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (571, 545, 2009, 104, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (572, 545, 2017, 763, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (573, 546, 2016, 605, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (574, 547, 2013, 447, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (575, 548, 2011, 332, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (576, 549, 2010, 182, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (577, 550, 2011, 298, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (578, 551, 2010, 242, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (579, 552, 2008, 31, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (580, 553, 2009, 110, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (581, 553, 2017, 767, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (582, 554, 2012, 346, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (583, 555, 2011, 320, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (584, 556, 2014, 515, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (585, 557, 2016, 645, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (586, 558, 2009, 71, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (587, 559, 2011, 293, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (588, 560, 2013, 440, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (589, 561, 2016, 636, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (590, 562, 2011, 292, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (591, 563, 2009, 145, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (592, 564, 2011, 329, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (593, 565, 2011, 246, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (594, 566, 2014, 508, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (595, 567, 2014, 481, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (596, 568, 2011, 271, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (597, 569, 2015, 593, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (598, 570, 2013, 469, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (599, 571, 2009, 98, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (600, 571, 2017, 759, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (601, 572, 2012, 387, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (602, 573, 2010, 169, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (603, 574, 2010, 181, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (604, 575, 2007, 12, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (605, 576, 2015, 568, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (606, 577, 2008, 40, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (607, 578, 2015, 571, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (608, 579, 2012, 349, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (609, 580, 2014, 542, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (610, 581, 2017, 729, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (611, 582, 2009, 76, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (612, 583, 2012, 394, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (613, 584, 2014, 518, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (614, 585, 2012, 385, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (615, 586, 2014, 512, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (616, 587, 2016, 656, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (617, 588, 2009, 139, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (618, 589, 2017, 769, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (619, 589, 2009, 115, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (620, 590, 2011, 322, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (621, 591, 2012, 392, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (622, 592, 2009, 86, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (623, 593, 2013, 464, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (624, 594, 2016, 622, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (625, 595, 2012, 399, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (626, 596, 2010, 210, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (627, 597, 2011, 330, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (628, 598, 2010, 172, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (629, 599, 2017, 728, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (630, 600, 2012, 342, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (631, 601, 2012, 351, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (632, 602, 2011, 310, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (633, 603, 2015, 594, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (634, 604, 2016, 682, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (635, 605, 2016, 648, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (636, 606, 2016, 650, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (637, 607, 2009, 78, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (638, 608, 2014, 488, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (639, 609, 2012, 405, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (640, 610, 2017, 741, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (641, 611, 2008, 36, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (642, 612, 2006, 4, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (643, 613, 2012, 402, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (644, 614, 2017, 752, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (645, 614, 2009, 106, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (646, 615, 2009, 109, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (647, 615, 2017, 766, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (648, 616, 2013, 472, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (649, 617, 2012, 400, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (650, 618, 2011, 308, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (651, 619, 2014, 524, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (652, 621, 2013, 452, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (653, 620, 2010, 179, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (654, 622, 2012, 420, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (655, 623, 2011, 331, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (656, 624, 2017, 753, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (657, 625, 2011, 297, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (658, 626, 2013, 463, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (659, 627, 2013, 421, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (660, 628, 2011, 284, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (661, 629, 2012, 407, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (662, 630, 2014, 517, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (663, 631, 2011, 268, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (664, 632, 2016, 660, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (665, 633, 2010, 171, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (666, 634, 2015, 545, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (667, 635, 2017, 713, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (668, 636, 2008, 63, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (669, 637, 2017, 762, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (670, 637, 2009, 103, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (671, 638, 2016, 676, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (672, 639, 2010, 221, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (673, 640, 2015, 556, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (674, 641, 2015, 600, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (675, 642, 2012, 336, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (676, 643, 2014, 531, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (677, 644, 2009, 114, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (678, 644, 2017, 768, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (679, 645, 2009, 91, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (680, 646, 2009, 133, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (681, 647, 2011, 302, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (682, 648, 2007, 22, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (683, 649, 2015, 555, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (684, 650, 2015, 602, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (685, 651, 2009, 101, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (686, 651, 2017, 751, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (687, 652, 2010, 160, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (688, 653, 2010, 157, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (689, 654, 2011, 328, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (690, 655, 2011, 296, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (691, 656, 2008, 42, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (692, 657, 2009, 135, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (693, 658, 2009, 120, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (694, 658, 2017, 771, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (695, 659, 2015, 597, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (696, 660, 2010, 192, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (697, 661, 2016, 634, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (698, 662, 2012, 345, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (699, 663, 2006, 9, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (700, 664, 2017, 711, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (701, 665, 2010, 236, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (702, 666, 2016, 673, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (703, 667, 2017, 773, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (704, 667, 2009, 122, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (705, 668, 2008, 58, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (706, 669, 2015, 591, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (707, 670, 2012, 372, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (708, 671, 2012, 410, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (709, 672, 2009, 83, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (710, 673, 2010, 195, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (711, 674, 2010, 196, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (712, 675, 2010, 197, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (713, 676, 2010, 198, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (714, 677, 2010, 199, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (715, 678, 2010, 200, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (716, 679, 2010, 244, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (717, 680, 2011, 267, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (718, 681, 2015, 586, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (719, 683, 2015, 560, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (720, 684, 2013, 465, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (721, 685, 2010, 227, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (722, 686, 2010, 228, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (723, 687, 2010, 188, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (724, 688, 2014, 533, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (725, 689, 2009, 105, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (726, 689, 2017, 764, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (727, 690, 2007, 23, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (728, 691, 2015, 581, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (729, 692, 2015, 579, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (730, 693, 2009, 92, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (731, 694, 2014, 494, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (732, 695, 2014, 529, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (733, 696, 2012, 338, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (734, 697, 2015, 603, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (735, 698, 2014, 532, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (736, 699, 2008, 51, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (737, 700, 2012, 414, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (738, 701, 2014, 502, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (739, 702, 2012, 416, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (740, 703, 2016, 689, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (741, 704, 2016, 658, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (742, 705, 2014, 513, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (743, 706, 2015, 599, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (744, 707, 2016, 688, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (745, 708, 2016, 674, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (746, 709, 2014, 485, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (747, 710, 2016, 691, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (748, 711, 2016, 616, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (749, 712, 2016, 692, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (750, 713, 2016, 638, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (751, 714, 2012, 381, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (752, 715, 2012, 353, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (753, 716, 2014, 536, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (754, 717, 2010, 241, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (755, 718, 2013, 436, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (756, 719, 2017, 716, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (757, 720, 2013, 455, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (758, 721, 2013, 426, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (759, 722, 2010, 230, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (760, 723, 2012, 368, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (761, 724, 2016, 608, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (762, 725, 2016, 611, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (763, 726, 2016, 606, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (764, 727, 2013, 446, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (765, 728, 2014, 541, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (766, 729, 2010, 201, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (767, 730, 2010, 191, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (768, 731, 2015, 569, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (769, 732, 2016, 679, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (770, 733, 2010, 185, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (771, 734, 2011, 270, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (772, 735, 2010, 166, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (773, 736, 2013, 444, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (774, 737, 2009, 70, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1469, 90, 2017, 775, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1470, 507, 2017, 776, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1471, 739, 2017, 777, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1472, 740, 2017, 778, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1473, 741, 2017, 779, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1474, 742, 2017, 780, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1475, 743, 2017, 781, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1476, 744, 2017, 782, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1477, 745, 2017, 783, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1478, 746, 2017, 784, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1479, 747, 2017, 785, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1480, 326, 2017, 786, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1481, 636, 2017, 787, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1482, 419, 2017, 788, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1483, 294, 2017, 789, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1484, 748, 2017, 790, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1485, 749, 2017, 791, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1486, 750, 2017, 792, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1487, 751, 2017, 793, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1488, 752, 2017, 794, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1489, 753, 2017, 795, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1490, 754, 2018, 796, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1491, 755, 2018, 797, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1492, 756, 2018, 798, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1493, 757, 2018, 799, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1494, 758, 2018, 800, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1495, 759, 2018, 801, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1496, 760, 2018, 802, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1497, 761, 2018, 803, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1498, 762, 2018, 804, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1499, 763, 2018, 805, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1500, 764, 2018, 806, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1501, 765, 2018, 807, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1502, 766, 2018, 808, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1503, 767, 2018, 809, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1504, 768, 2018, 810, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1505, 769, 2018, 811, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1506, 770, 2018, 812, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1507, 771, 2018, 813, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1508, 772, 2018, 814, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1509, 773, 2018, 815, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1510, 774, 2018, 816, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1511, 775, 2018, 817, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1512, 776, 2018, 818, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1513, 777, 2018, 819, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1514, 778, 2018, 820, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1515, 779, 2018, 821, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1516, 780, 2018, 822, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1517, 781, 2018, 823, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1518, 782, 2018, 824, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1519, 783, 2018, 825, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1520, 784, 2018, 826, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1521, 785, 2018, 827, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1522, 786, 2018, 828, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1523, 787, 2018, 829, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1524, 788, 2018, 830, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1525, 789, 2018, 831, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1526, 790, 2018, 832, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1527, 791, 2018, 833, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1528, 792, 2018, 834, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1529, 793, 2018, 835, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1530, 794, 2018, 836, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1531, 795, 2018, 837, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1532, 796, 2018, 838, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1533, 797, 2018, 839, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1534, 798, 2018, 840, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1535, 799, 2018, 841, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1536, 800, 2018, 842, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1537, 801, 2018, 843, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1538, 802, 2018, 844, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1539, 803, 2018, 845, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1540, 804, 2018, 846, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1541, 805, 2018, 847, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1542, 806, 2018, 848, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1543, 807, 2018, 849, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1544, 808, 2018, 850, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1545, 809, 2018, 851, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1546, 810, 2018, 852, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1547, 811, 2018, 853, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1548, 812, 2018, 854, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1549, 813, 2018, 855, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1550, 814, 2018, 856, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1552, 816, 2018, 857, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1553, 817, 2018, 858, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1554, 818, 2018, 859, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1555, 819, 2018, 860, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1556, 820, 2018, 861, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1557, 821, 2018, 862, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1558, 822, 2018, 863, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1559, 823, 2018, 864, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1560, 824, 2018, 865, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1561, 825, 2018, 866, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1562, 826, 2018, 867, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1563, 827, 2018, 868, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1564, 828, 2018, 869, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1565, 829, 2018, 870, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1566, 830, 2018, 871, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1567, 831, 2018, 872, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1568, 832, 2018, 873, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1569, 833, 2018, 874, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1570, 834, 2018, 875, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1571, 835, 2018, 876, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1572, 836, 2018, 877, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1573, 837, 2018, 878, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1574, 838, 2018, 879, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1575, 839, 2018, 880, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1576, 840, 2018, 881, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1577, 841, 2018, 882, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (1578, 842, 2018, 883, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2578, 1842, 2018, 884, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2579, 1843, 2018, 885, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2580, 1844, 2018, 886, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2581, 1845, 2018, 887, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2582, 1846, 2018, 888, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2583, 1847, 2018, 889, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2584, 1848, 2018, 890, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2585, 1849, 2018, 891, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2586, 1850, 2018, 892, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2587, 1851, 2018, 893, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2588, 1852, 2018, 894, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2589, 1853, 2019, 895, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2590, 1854, 2019, 896, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2591, 1855, 2019, 897, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2592, 1856, 2019, 898, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2593, 1857, 2019, 899, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2594, 1858, 2019, 900, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2595, 1859, 2019, 901, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2596, 1860, 2019, 902, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2597, 1861, 2019, 903, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2598, 1862, 2019, 904, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2599, 1863, 2019, 905, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2600, 1864, 2019, 906, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2601, 1865, 2019, 907, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2602, 1866, 2019, 908, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2603, 1867, 2019, 909, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2604, 1868, 2019, 910, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2605, 1869, 2019, 911, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2606, 1870, 2019, 912, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2607, 1871, 2019, 913, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2608, 1872, 2019, 914, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2609, 1873, 2019, 915, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2610, 1874, 2019, 916, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2611, 1875, 2019, 917, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2612, 1876, 2019, 918, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2613, 1877, 2019, 919, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2614, 1878, 2019, 920, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2615, 1879, 2019, 921, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2616, 1880, 2019, 922, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2617, 1881, 2019, 923, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2618, 1882, 2019, 924, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2619, 1883, 2019, 925, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2620, 1884, 2019, 926, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2621, 1885, 2019, 927, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2622, 1886, 2019, 928, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2623, 1887, 2019, 929, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2624, 1888, 2019, 930, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2625, 1889, 2019, 931, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2626, 1890, 2019, 932, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2627, 1891, 2019, 933, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2628, 1892, 2019, 934, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2629, 1893, 2019, 935, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2630, 1894, 2019, 936, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2631, 1895, 2019, 937, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2632, 1896, 2019, 938, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2633, 1897, 2019, 939, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2634, 1898, 2019, 940, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2635, 1899, 2019, 941, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2636, 1900, 2019, 942, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2637, 1901, 2019, 943, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2638, 1902, 2019, 944, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2639, 1903, 2019, 945, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2640, 1904, 2019, 946, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2641, 1905, 2019, 947, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2642, 1906, 2019, 948, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2643, 1907, 2019, 949, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2644, 1908, 2019, 950, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2645, 1909, 2019, 951, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2646, 1910, 2019, 952, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2647, 1911, 2019, 953, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2648, 1912, 2019, 954, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2649, 1913, 2019, 955, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2650, 1914, 2019, 956, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2651, 1915, 2019, 957, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2652, 1916, 2019, 958, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2653, 1917, 2019, 959, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2654, 1918, 2019, 960, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2655, 1919, 2019, 961, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2656, 539, 2019, 962, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2657, 109, 2019, 963, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2658, 310, 2019, 964, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2659, 1920, 2019, 965, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2660, 534, 2019, 966, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2661, 502, 2019, 967, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2662, 651, 2019, 968, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2663, 614, 2019, 969, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2664, 1921, 2019, 970, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (2665, 1922, 2020, 971, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (3664, 2921, 2020, 972, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (3665, 2922, 2020, 973, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (3666, 2923, 2020, 974, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (3667, 2924, 2020, 975, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (3668, 2925, 2020, 976, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (3669, 2926, 2020, 977, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (3670, 2927, 2020, 978, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (3671, 2928, 2020, 979, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (3672, 2929, 2020, 980, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (3673, 2930, 2020, 981, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (3674, 2931, 2020, 982, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (3675, 2932, 2020, 983, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (3676, 2933, 2020, 984, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (3677, 2934, 2020, 985, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (3678, 2935, 2020, 986, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (3679, 2936, 2020, 987, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (3680, 2937, 2020, 988, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (3681, 2938, 2020, 989, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (3682, 2939, 2020, 990, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (3683, 2940, 2020, 991, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (4678, 3935, 2020, 992, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (4679, 3936, 2020, 993, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (4680, 3937, 2020, 994, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (4681, 3938, 2020, 995, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (4682, 3939, 2020, 996, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (4683, 3940, 2020, 997, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (4684, 3941, 2020, 998, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (4685, 3942, 2020, 999, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (4686, 3943, 2020, 1000, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (4687, 3944, 2020, 1001, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (4688, 3945, 2020, 1002, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (4689, 3946, 2020, 1003, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (4690, 3947, 2020, 1004, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (4691, 3948, 2020, 1005, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (4692, 3949, 2020, 1006, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (4693, 3950, 2020, 1007, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (4694, 3951, 2020, 1008, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (4695, 3952, 2020, 1009, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (4696, 3953, 2020, 1010, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (4697, 3954, 2020, 1011, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (4698, 3955, 2020, 1012, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (4699, 3956, 2020, 1013, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (4700, 3957, 2020, 1014, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (4701, 3958, 2020, 1015, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (4702, 3959, 2020, 1016, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (4703, 3960, 2020, 1017, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (4704, 740, 2020, 1018, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (4705, 748, 2020, 1019, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (4706, 749, 2020, 1020, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (4707, 3961, 2020, 1021, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (4708, 3962, 2020, 1022, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (4709, 3963, 2020, 1023, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (4710, 3964, 2020, 1024, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (4711, 3965, 2020, 1025, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (4712, 3966, 2021, 1026, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (4713, 3967, 2021, 1027, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (4714, 3968, 2021, 1028, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (4715, 3969, 2021, 1029, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (4716, 3970, 2021, 1030, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5712, 4966, 2021, 1031, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5713, 195, 2021, 1032, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5714, 539, 2021, 1033, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5715, 4967, 2021, 1034, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5716, 109, 2021, 1035, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5717, 310, 2021, 1036, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5718, 4968, 2021, 1037, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5719, 4969, 2021, 1038, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5720, 825, 2021, 1039, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5721, 4970, 2021, 1040, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5722, 4971, 2021, 1041, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5723, 4972, 2021, 1042, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5724, 4973, 2021, 1043, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5725, 4974, 2021, 1044, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5726, 4975, 2021, 1045, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5727, 4976, 2021, 1046, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5728, 4977, 2021, 1047, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5729, 4978, 2021, 1048, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5730, 4979, 2021, 1049, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5731, 4980, 2021, 1050, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5732, 4981, 2021, 1051, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5733, 4982, 2021, 1052, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5734, 4983, 2021, 1053, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5735, 4984, 2021, 1054, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5736, 4985, 2021, 1055, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5737, 4986, 2021, 1056, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5738, 4987, 2021, 1057, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5739, 4988, 2021, 1058, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5740, 4989, 2021, 1059, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5741, 4990, 2021, 1060, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5742, 4991, 2021, 1061, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5743, 301, 2021, 1062, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5744, 349, 2021, 1063, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5745, 236, 2021, 1064, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5746, 571, 2021, 1065, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5747, 147, 2021, 1066, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5748, 510, 2021, 1067, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5749, 637, 2021, 1068, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5750, 545, 2021, 1069, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5751, 689, 2021, 1070, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5752, 501, 2021, 1071, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5753, 615, 2021, 1072, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5754, 553, 2021, 1073, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5755, 644, 2021, 1074, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5756, 589, 2021, 1075, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5757, 114, 2021, 1076, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5758, 658, 2021, 1077, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5759, 482, 2021, 1078, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5760, 667, 2021, 1079, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5761, 538, 2021, 1080, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5762, 90, 2021, 1081, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5763, 507, 2021, 1082, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5764, 1908, 2021, 1083, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5765, 4992, 2021, 1084, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5766, 4993, 2022, 1085, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5767, 4994, 2022, 1086, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5768, 3968, 2022, 1087, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5769, 4995, 2022, 1088, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5770, 4996, 2022, 1089, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5771, 4997, 2022, 1090, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5772, 4998, 2022, 1091, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5773, 4999, 2022, 1092, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5774, 5000, 2022, 1093, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5775, 5001, 2022, 1094, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5776, 5002, 2022, 1095, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5777, 5003, 2022, 1096, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5778, 5004, 2022, 1097, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5779, 5005, 2022, 1098, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5780, 5006, 2022, 1099, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5781, 5007, 2022, 1100, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5782, 5008, 2022, 1101, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5783, 5009, 2022, 1102, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5784, 5010, 2022, 1103, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5785, 5011, 2022, 1104, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5786, 5012, 2022, 1105, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5787, 5013, 2022, 1106, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5788, 5014, 2022, 1107, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5789, 5015, 2022, 1108, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5790, 5016, 2022, 1109, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5791, 5017, 2022, 1110, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5792, 5018, 2022, 1111, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5793, 5019, 2022, 1112, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5794, 5020, 2022, 1113, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5795, 5021, 2022, 1114, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5796, 5022, 2022, 1115, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5797, 5023, 2022, 1116, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5798, 5024, 2022, 1117, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5799, 5025, 2022, 1118, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5800, 5026, 2022, 1119, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5801, 5027, 2022, 1120, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5802, 5028, 2022, 1121, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5803, 5029, 2022, 1122, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5804, 5030, 2022, 1123, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5805, 5031, 2022, 1124, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5806, 364, 2022, 1125, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5807, 5033, 2022, 1126, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5808, 5034, 2022, 1127, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5809, 5035, 2022, 1128, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5810, 5036, 2022, 1129, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5811, 5037, 2022, 1130, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5812, 5038, 2022, 1131, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5813, 5039, 2022, 1132, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5814, 5040, 2022, 1133, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5815, 5041, 2022, 1134, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5816, 5042, 2022, 1135, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5817, 5043, 2022, 1136, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5818, 5044, 2022, 1137, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5819, 5045, 2022, 1138, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5820, 5046, 2022, 1139, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5821, 5047, 2022, 1140, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5822, 5048, 2022, 1141, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5823, 5049, 2022, 1142, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5824, 5050, 2022, 1143, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5825, 5051, 2022, 1144, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5826, 5052, 2022, 1145, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5827, 5053, 2022, 1146, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5828, 5054, 2022, 1147, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5829, 5055, 2022, 1148, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5830, 5056, 2022, 1149, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5831, 5057, 2022, 1150, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5832, 5058, 2022, 1151, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5833, 5059, 2022, 1152, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5834, 5060, 2022, 1153, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5835, 5061, 2022, 1154, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5836, 5062, 2022, 1155, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5837, 5063, 2022, 1156, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5838, 5064, 2022, 1157, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5839, 5065, 2022, 1158, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5840, 5066, 2022, 1159, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5841, 5067, 2022, 1160, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5842, 5068, 2022, 1161, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5843, 5069, 2022, 1162, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5844, 5070, 2022, 1163, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5845, 5071, 2022, 1164, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5846, 5072, 2022, 1165, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5847, 5073, 2022, 1166, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5848, 5074, 2022, 1167, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5849, 5075, 2022, 1168, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5850, 5076, 2022, 1169, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5851, 5077, 2022, 1170, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5852, 5078, 2022, 1171, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5853, 5079, 2022, 1172, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5854, 5080, 2022, 1173, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5855, 5081, 2022, 1174, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5856, 5082, 2022, 1175, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5857, 5083, 2022, 1176, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5858, 5084, 2022, 1177, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5859, 5085, 2022, 1178, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5860, 5086, 2022, 1179, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5861, 5087, 2022, 1180, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5862, 5088, 2022, 1181, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5863, 5089, 2023, 1182, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5864, 5090, 2023, 1183, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5865, 5091, 2023, 1184, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5866, 5092, 2023, 1185, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5867, 5093, 2023, 1186, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5868, 5094, 2023, 1187, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5869, 5095, 2023, 1188, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5870, 5096, 2023, 1189, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5871, 5097, 2023, 1190, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5872, 5098, 2023, 1191, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5873, 1913, 2023, 1192, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5874, 5099, 2023, 1193, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5875, 1914, 2023, 1194, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5876, 5100, 2023, 1195, 0)
GO
INSERT [BookRead] ([bookReadId], [bookId], [yearRead], [readingOrder], [currentlyReading]) VALUES (5877, 5101, 2023, 1196, 1)
GO
SET IDENTITY_INSERT [BookRead] OFF
GO
INSERT [Category] ([categoryId], [categoryName]) VALUES (1, N'Fiction')
GO
INSERT [Category] ([categoryId], [categoryName]) VALUES (2, N'Nonfiction')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (4, 2, N'Theology')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (5, 2, N'Art, Music, and Poetry')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (6, 2, N'Science and Mathematics')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (7, 2, N'Politics and Society')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (9, 2, N'Biography and Autobiography')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (10, 2, N'History')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (12, 2, N'Economics')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (14, 2, N'Philosophy')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (15, 2, N'Business')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (16, 2, N'Psychology and Neuroscience')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (17, 2, N'Statistics')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (18, 2, N'Behavior')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (19, 2, N'Decision-Making')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (20, 2, N'Negotiation')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (21, 2, N'Physics and Cosmology')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (22, 2, N'Essays and Treatise')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (23, 2, N'Biology')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (24, 2, N'Finance')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (25, 2, N'Future Studies')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (101, 1, N'20th Century American')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (102, 1, N'20th Century British')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (103, 1, N'20th Century Irish')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (104, 1, N'19th Century Polish')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (105, 1, N'21st Century British')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (106, 1, N'21st Century American')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (107, 1, N'Ancient Greek')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (108, 1, N'19th Century French')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (109, 1, N'Early Medieval British')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (110, 1, N'20th Century Russian')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (111, 1, N'19th Century British')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (112, 1, N'18th Century British')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (113, 1, N'19th Century American')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (114, 1, N'21st Century Irish')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (115, 1, N'19th Century Russian')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (116, 1, N'Medieval British')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (117, 1, N'19th Century Swiss')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (118, 1, N'19th Century Irish')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (119, 1, N'16th Century British')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (120, 1, N'18th Century French')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (121, 1, N'20th Century Canadian')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (122, 1, N'21st Century Canadian')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (123, 1, N'20th Century German')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (124, 1, N'17th Century British')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (125, 1, N'21st Century Swedish')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (126, 1, N'Ancient Mesopotamian')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (127, 1, N'21st Century Australian')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (128, 1, N'21st Century Dutch')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (129, 1, N'20th Century Taiwanese')
GO
INSERT [Subcategory] ([subcategoryId], [categoryId], [subcategoryName]) VALUES (130, 1, N'20th Century Brazilian')
GO
ALTER TABLE [Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Subcategory] FOREIGN KEY([subcategoryId])
REFERENCES [Subcategory] ([subcategoryId])
GO
ALTER TABLE [Book] CHECK CONSTRAINT [FK_Book_Subcategory]
GO
ALTER TABLE [BookAuthor]  WITH CHECK ADD  CONSTRAINT [FK_BookAuthor_Author] FOREIGN KEY([authorId])
REFERENCES [Author] ([authorId])
GO
ALTER TABLE [BookAuthor] CHECK CONSTRAINT [FK_BookAuthor_Author]
GO
ALTER TABLE [BookAuthor]  WITH CHECK ADD  CONSTRAINT [FK_BookAuthor_Book] FOREIGN KEY([bookId])
REFERENCES [Book] ([bookId])
GO
ALTER TABLE [BookAuthor] CHECK CONSTRAINT [FK_BookAuthor_Book]
GO
ALTER TABLE [BookRead]  WITH CHECK ADD  CONSTRAINT [FK_BookRead_Book] FOREIGN KEY([bookId])
REFERENCES [Book] ([bookId])
GO
ALTER TABLE [BookRead] CHECK CONSTRAINT [FK_BookRead_Book]
GO
ALTER TABLE [Subcategory]  WITH CHECK ADD  CONSTRAINT [FK_Subcategory_Category] FOREIGN KEY([categoryId])
REFERENCES [Category] ([categoryId])
GO
ALTER TABLE [Subcategory] CHECK CONSTRAINT [FK_Subcategory_Category]
GO

