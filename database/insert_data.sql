INSERT INTO user (username, password, fullname) VALUES
('admin', '$2a$10$qWfZAV2F3V3A4rFA2W8nxeqQTxWNbvNNlfl0W31LoDKN3b7vxF7zK', 'John Doe'),
('jane_doe', '$2a$10$KkQ4oEPH3kIUBuScFAieIuw9znztJh1aISZ9AOMF4XzE3Kb4zi6iC', 'Jane Doe');
INSERT INTO role (code) VALUES
('ADMIN'),
('USER'),
('MANAGER');

INSERT INTO user_role (user_id, role_id) VALUES
(1, 1), -- john_doe là ADMIN
(2, 2); -- jane_doe là USER
