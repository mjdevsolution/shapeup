INSERT INTO `shapeup`.`user` (`ID`, `NAME`, `PASSWORD`, `USERNAME`) VALUES ('1', 'Mahendran Jeyakaran', '123', 'jeya');
INSERT INTO `shapeup`.`user` (`ID`, `NAME`, `PASSWORD`, `USERNAME`) VALUES ('2', 'Mahendran Sasikaran', '123', 'karan');

INSERT INTO `shapeup`.`user_role` (`ID`, `USERROLE`) VALUES ('1', 'ADMIN');
INSERT INTO `shapeup`.`user_role` (`ID`, `USERROLE`) VALUES ('2', 'USER');

INSERT INTO `shapeup`.`user_user_role` (`USER_ID`, `USER_ROLE_ID`) VALUES ('1', 1);
INSERT INTO `shapeup`.`user_user_role` (`USER_ID`, `USER_ROLE_ID`) VALUES ('1', 2);
INSERT INTO `shapeup`.`user_user_role` (`USER_ID`, `USER_ROLE_ID`) VALUES ('2', 2);