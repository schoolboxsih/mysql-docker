#  Create default administrator for RADIUS
CREATE USER 'radius'@'localhost';
SET PASSWORD FOR 'radius'@'localhost' = PASSWORD('password');

# The server can read any table in SQL
GRANT SELECT ON radius.* TO 'radius'@'localhost';

# The server can write to the accounting and post-auth logging table.
GRANT ALL on radius.radacct TO 'radius'@'localhost';
GRANT ALL on radius.radpostauth TO 'radius'@'localhost';

FLUSH PRIVILEGES;

/*
# Add groups - not sure about thus yet
INSERT INTO radgroupreply (groupname,attribute,op,value) VALUES("class_1", "cLEARTEXT-pASSWORD", ":=", "WILMA");
*/

# Add Networks
INSERT INTO networks (name, network) VALUES("class_1", "10.1.1.0/32");
INSERT INTO networks (name, network) VALUES("class_2", "10.1.2.0/32");
INSERT INTO networks (name, network) VALUES("class_3", "10.1.3.0/32");
INSERT INTO networks (name, network) VALUES("class_4", "10.1.4.0/32");
INSERT INTO networks (name, network) VALUES("class_5", "10.1.5.0/32");
INSERT INTO networks (name, network) VALUES("class_6", "10.1.6.0/32");
INSERT INTO networks (name, network) VALUES("class_7", "10.1.7.0/32");
INSERT INTO networks (name, network) VALUES("class_8", "10.1.8.0/32");
INSERT INTO networks (name, network) VALUES("class_9", "10.1.9.0/32");
INSERT INTO networks (name, network) VALUES("class_10", "10.1.10.0/32");
INSERT INTO networks (name, network) VALUES("canteen", "10.1.11.0/32");

# Add Urls
INSERT INTO urls (name, url) VALUES("github", "https://github.com");
INSERT INTO urls (name, url) VALUES("youtube", "https://youtube.com");
INSERT INTO urls (name, url) VALUES("google", "https://google.com");
INSERT INTO urls (name, url) VALUES("facebook", "https://facebook.com");
INSERT INTO urls (name, url) VALUES("keggle", "https://kaggle.com");
INSERT INTO urls (name, url) VALUES("codeforces", "https://codeforces.com");
INSERT INTO urls (name, url) VALUES("cisco", "https://cisco.com");
INSERT INTO urls (name, url) VALUES("cisco", "https://apple.com");
INSERT INTO urls (name, url) VALUES("cisco", "https://reddit.com");

# Add Vlans
INSERT INTO vlans (name, starttag, endtag) VALUES("Student VLAN", 100, 102);
INSERT INTO vlans (name, starttag, endtag) VALUES("Teacher VLAN", 200, 202);
