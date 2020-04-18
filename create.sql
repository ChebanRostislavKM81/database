create table Neutral(
    dates date NOT NULL,
    home_team varchar(28) NOT NULL,
    away_team varchar(28) NOT NULL,
    home_score int NOT NULL,
    away_score int NOT NULL,
    tournament varchar(28) NOT NULL,
    city varchar(28) NOT NULL,
    county varchar(28) NOT NULL,
    neutral boolean NOT NULL)
create table Winrate(
    home_team varchar(28) NOT NULL,
    away_team varchar(28) NOT NULL,
    home_score int NOT NULL,
    away_score int NOT NULL)
create table MatchesGoals(
    dates date NOT NULL,
    home_score int NOT NULL,
    away_score int NOT NULL)
    
ALTER TABLE Neutral ADD CONSTRAINT PK_Dates PRIMARY KEY (dates);
ALTER TABLE Neutral ADD CONSTRAINT PK_Home_Team PRIMARY KEY (home_team);
ALTER TABLE Neutral ADD CONSTRAINT PK_Away_Team PRIMARY KEY (away_team);
ALTER TABLE MatchesGoals ADD CONSTRAINT PK_Dates1 PRIMARY KEY (dates);
ALTER TABLE Winrate ADD CONSTRAINT PK_Home_Team1 PRIMARY KEY (home_team);    
ALTER TABLE Winrate ADD CONSTRAINT PK_Away_Team1 PRIMARY KEY (away_team);

ALTER TABLE Neutral
ADD CONSTRAINT FK_Dates FOREIGN KEY (dates) REFERENCES MatchesGoals;
ALTER TABLE Neutral
ADD CONSTRAINT FK_Home_Team FOREIGN KEY (home_team) REFERENCES Winrate;
ALTER TABLE Neutral
ADD CONSTRAINT FK_Away_Team FOREIGN KEY (away_team) REFERENCES Winrate;
ALTER TABLE Neutral
ADD CONSTRAINT FK_Home_Score FOREIGN KEY (home_score) REFERENCES Winrate;
ALTER TABLE Neutral
ADD CONSTRAINT FK_Away_Score FOREIGN KEY (away_score) REFERENCES Winrate;
ALTER TABLE Neutral
ADD CONSTRAINT FK_Home_Score1 FOREIGN KEY (home_score) REFERENCES MatchesGoals;
ALTER TABLE Neutral
ADD CONSTRAINT FK_Away_Score1 FOREIGN KEY (away_score) REFERENCES MatchesGoals;


