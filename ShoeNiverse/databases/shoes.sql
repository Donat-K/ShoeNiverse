DROP DATABASE IF EXISTS ShoeDatabase;
CREATE DATABASE ShoeDatabase;

CREATE TABLE Make (
    makeID INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (makeID)
);

CREATE TABLE Model (
    modelID INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(100),
    PRIMARY KEY (modelID)
);

CREATE TABLE Description (
    descriptionID INT AUTO_INCREMENT,
    description VARCHAR(1000),
    PRIMARY KEY (descriptionID)
);

CREATE TABLE ImagePath (
    imagePathID INT AUTO_INCREMENT,
    imagePath(VARCHAR1000),
    PRIMARY KEY (imagePathID)
);

CREATE TABLE Shoe (
    shoeID INT AUTO_INCREMENT NOT NULL,
    modelID INT NOT NULL,
    descriptionID VARCHAR(1000) NOT NULL,
    makeID NOT NULL,
    imagePathID NOT NULL,
    videoID INT,
    PRIMARY KEY (shoeID),
    FOREIGN KEY (modelID) REFERENCES Model(modelID),
    FOREIGN KEY (makeID) REFERENCES Make(makeID),
    FOREIGN KEY (descriptionID) REFERENCES Description(decsriptionID),
    FOREIGN KEY (imagePathID) REFERENCES ImagePath(imagePathID)
);

CREATE TABLE Video (
    videoID INT AUTO_INCREMENT,
    videoLink VARCHAR(1000),
    shoeID INT,
    PRIMARY KEY (videoID),
    FOREIGN KEY (shoeID) REFERENCES Shoe(shoeID)
);

CREATE TABLE Buy (
    buyID INT AUTO_INCREMENT,
    buyLink VARCHAR(1000),
    shoeID INT,
    PRIMARY KEY (buyID),
    FOREIGN KEY (shoeID) REFERENCES Shoe(shoeID)
);

INSERT INTO Make (name)
VALUES (")



