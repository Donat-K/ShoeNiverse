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
    imagePath VARCHAR(1000),
    PRIMARY KEY (imagePathID)
);

CREATE TABLE Shoe (
    shoeID INT AUTO_INCREMENT NOT NULL,
    modelID INT NOT NULL,
    descriptionID INT NOT NULL,
    makeID INT NOT NULL,
    imagePathID INT NOT NULL,
    isReleased BOOLEAN NOT NULL,
    PRIMARY KEY (shoeID),
    FOREIGN KEY (modelID) REFERENCES Model(modelID),
    FOREIGN KEY (makeID) REFERENCES Make(makeID),
    FOREIGN KEY (descriptionID) REFERENCES Description(descriptionID),
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

INSERT INTO Make VALUES
(1, "Reebok"),
(2, "Adidas"),
(3, "Air Jordan"),
(4, "Nike");

INSERT INTO Model VALUES
(1, "Yeezy 500 \'Stone\'"),
(2, "4 \'What The\'"),
(3, "React Element 55"),
(4, "Air Force 1"),
(5, "Zig Kinetica");

INSERT INTO Description VALUES
(1, "After initially seeing an early release at the Jesus is King pop-up experience last month, Kanye West and the Three Stripes are officially releasing their brand new adidas Yeezy 500 \“Stone\” to the public this weekend. While the traditional shape is kept consistent, the lifestyle silhouette is evolving ever so slightly by switching up its materials for a look more aligned with the winter season. Mesh panel constructions that usually arrive throughout the upper are now swapped for beefy lycra synthetics that shine through its segmented windows for an aesthetic closely resemblant of holiday puffer jackets. Color palettes are kept true to Yeezy DNA, opting for various shades of tonal neutral beiges, and rounded off down below with a classic gum outsole. Check out a complete store list here below to see where you can cop, and expect them to release in full family sizes on adidas.com and at affiliated retailers on November 23rd for $200 (adults), $130 (kids), and $100 (infants)."),
(2, "The upcoming \“What The\” Jordan 4 release pays homage to the four original colorways of the Tinker Hatfield-design shoe – the \“Black/Cement\” or \“Bred\”, \“White/Cement\”, \“Military Blue\”, and \“Fire Red\”. All four 1989 OGs can be spotted clearly as their signature details have been interspersed throughout the entire chassis of the shoes, but there’s an added feature that is rather easy to overlook. On the lace-tips of both shoes are a series of numbers that may appear random, but they’re the actual product codes from three decades ago – with each treated with their corresponding colorway. It’s connecting the dots to obscure details like these that impress the purists of original Jordans, so let’s hope there’s more of this style of thoughtful approach to designing future Retros. With a release landing on Saturday, November 23rd, grab a look at official images as well as our unboxing video here."),
(3, "After suffering a nearly fatal car crash at an early age, the young Kahleah Corona was forced to fight for her life and then pick up the pieces after multiple skull and face fractures. Bouncing back with ever-a-bubbly disposition, the young hero inspired her family to be “K-Strong” throughout her journey to recovery. Now set to join the ranks of the legendary Doernbecher Freestyle, Corona is able to encapsulate her entire being atop the React Element 55, featuring some of her favorite things along a pink upper of glittery materials that nod to her own bright personality. A single tongue-out emoji on the rivets of the sole call to her most used while green ribbons at the tongue symbolize her traumatic brain injury; elsewhere, the initials of her family members emblazon across the heel with a rattle to pay homage to her new baby sister. Alongside an all-over insole print of playful designs as well as football and brain graphics, the pair is full of small details with a release geared for December 7th at Nike.com."),
(4, "The South Korean entertainment industry — even despite its overwhelming spike in popularity the past few years — almost never intersects with the world of sneakers, and with its arguable heyday barren of any collaborations of their own, it’s a welcome sight to see its once indefinite dry spell broken by one of the most legendary: G-Dragon. Born for stardom and a product of near exhaustive idol training, the Big Bang leader has become a style icon through and through with an upcoming Nike collaboration further immortalizing his lengthy, accolade-ridden career. The Air Force 1 “Para-Noise” is almost entirely exemplary of his own personality and taste through a canvas already known as one of his key favorites; uppers, dyed with a loosely adhered paint, wears off to reveal an artwork of his own design, one that mirrors the motifs of the similarly adorned insole graphic. Swooshes, midsoles, as well as the lining are left colorless with few embellishments, leavening some of the artist’s trademarks like his own PEACEMINUSONE insignia as well as some paint streaks along the bottom. Grab one more look at the pair right here and take a look at our store list below to help secure your pair this Saturday, November 23rd."),
(5, "A silhouette that possesses a new and improved form of the brand’s ZigTech technology from 2010, the Reebok Zig Kinetica enters the performance space today to compete with the industry’s most notable cushioning systems. First debuted only but a couple of weeks ago, low-profile model is now adding another makeover to its lineup, leaning on primarily black color-blocking panels to stylize its upper. Arriving as somewhat of an inverted version of its original colorway, this upcoming offering wraps its mid to forefoot layers in pitch black hues, and adheres to bone white, lilac, and grey/teal accents to decorate the additional abstract overlays. In addition, the Zig-infused midsoles now present themselves in split-toned fashion, followed by a snowy white strap that buckles your foot across the middle for extra support. Take a closer look at the pair here below, and find these dropping at select Reebok retailers in December 6th for $180 USD.");

INSERT INTO ImagePath VALUES
(1, "TEST");

INSERT INTO Shoe
VALUES (1, 1, 1, 2, 1, 1);

INSERT INTO Video VALUES
(1, "https://www.youtube.com/watch?v=rkylzWPnMaw", "1");

INSERT INTO Buy VALUES
(1, "https://www.adidas.com/us/yeezy?clickId=wByUhY0%3A6TiUURPzPsQFpwraUkn16b1J3wHwyk0&irgwc=1&cm_mmc=AdieAffiliates_IR-_-Sneaker%20News%20Inc-_-deeplink-_-TEXT_LINK-_-&cm_mmc2=adidas-NA-eCom-Affiliates-_-Sneaker%20News%20Inc-_-None-None-US-always-on-None-1801", 1);


