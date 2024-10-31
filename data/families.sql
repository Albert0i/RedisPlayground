
-- Create the Families table
CREATE TABLE Families (
    family_id VARCHAR(10) PRIMARY KEY,
    family_name VARCHAR(100) NOT NULL,
    total_income DECIMAL(10, 2) NOT NULL,
    rent DECIMAL(10, 2) NOT NULL,
    family_size INT NOT NULL 
);

-- Create the Addresses table
CREATE TABLE Addresses (
    family_id VARCHAR(10) PRIMARY KEY,
    street VARCHAR(255) NOT NULL,
    city VARCHAR(100) NOT NULL,
    state VARCHAR(100) NOT NULL,
    zip_code VARCHAR(10) NOT NULL,
    FOREIGN KEY (family_id) REFERENCES Families(family_id) ON DELETE CASCADE
);

-- Create the Members table
CREATE TABLE Members (
    family_id VARCHAR(10),
    member_id VARCHAR(10)  NOT NULL,    
    name VARCHAR(100) NOT NULL,
    gender ENUM('Male', 'Female', 'Other') NOT NULL,
    relationship VARCHAR(50) NOT NULL,
    profession VARCHAR(100) NOT NULL,
    birthday DECIMAL(8, 0) NOT NULL,
    income DECIMAL(10, 2) NOT NULL,
    hobbies TEXT,

    PRIMARY KEY (family_id, member_id),
    FOREIGN KEY (family_id) REFERENCES Families(family_id) ON DELETE CASCADE
);

-- Create the Pets table
CREATE TABLE Pets (
    family_id VARCHAR(10),
    pet_id VARCHAR(10) NOT NULL,    
    pet_type VARCHAR(50) NOT NULL,
    pet_name VARCHAR(100) NOT NULL,

    PRIMARY KEY (family_id, pet_id),
    FOREIGN KEY (family_id) REFERENCES Families(family_id) ON DELETE CASCADE
);


INSERT INTO Families (family_id, family_name, total_income, rent, family_size) VALUES
('F001', 'Smith', 120000, 1500, 2),
('F002', 'Johnson', 100000, 1400, 2),
('F003', 'Williams', 60000, 1200, 1),
('F004', 'Brown', 75000, 1300, 2),
('F005', 'Garcia', 95000, 1600, 2),
('F006', 'Martinez', 70000, 1100, 1),
('F007', 'Davis', 130000, 2000, 2),
('F008', 'Miller', 50000, 900, 1),
('F009', 'Wilson', 85000, 1700, 2),
('F010', 'Taylor', 90000, 1800, 2);

INSERT INTO Addresses (family_id, street, city, state, zip_code) VALUES
('F001', '123 Maple St', 'Springfield', 'IL', '62701'),
('F002', '456 Oak St', 'Lincoln', 'NE', '68502'),
('F003', '789 Pine St', 'Omaha', 'NE', '68102'),
('F004', '321 Birch St', 'Des Moines', 'IA', '50309'),
('F005', '654 Cedar St', 'Chicago', 'IL', '60604'),
('F006', '123 Elm St', 'Phoenix', 'AZ', '85001'),
('F007', '987 Walnut St', 'Atlanta', 'GA', '30301'),
('F008', '555 Oak St', 'Seattle', 'WA', '98101'),
('F009', '888 Pine St', 'Dallas', 'TX', '75201'),
('F010', '246 Ash St', 'Miami', 'FL', '33101');

INSERT INTO Members (family_id, member_id, name, gender, relationship, profession, birthday, income, hobbies) VALUES
('F001', 'M001', 'John Smith', 'Male', 'Father', 'Engineer', 19800515, 80000, 'Fishing, Reading'),
('F001', 'M002', 'Emily Smith', 'Female', 'Mother', 'Teacher', 19830322, 40000, 'Dance, Painting'),
('F002', 'M003', 'Michael Johnson', 'Male', 'Father', 'Doctor', 19781230, 95000, 'Cycling'),
('F002', 'M004', 'David Johnson', 'Male', 'Son', 'Student', 20050115, 0, 'Video Games, Soccer'),
('F003', 'M005', 'Robert Williams', 'Male', 'Father', 'Chef', 19850512, 60000, 'Cooking'),
('F004', 'M006', 'Sarah Brown', 'Female', 'Mother', 'Photographer', 19900101, 45000, 'Photography, Traveling'),
('F004', 'M007', 'Tom Brown', 'Male', 'Son', 'Student', 2003-02-14, 0, 'Running, Writing'),
('F005', 'M008', 'Luis Garcia', 'Male', 'Father', 'Software Developer', 1988-05-25, 70000, 'Gaming, Cooking'),
('F005', 'M009', 'Maria Garcia', 'Female', 'Mother', 'Nurse', 19891210, 25000, 'Gardening'),
('F006', 'M010', 'Carlos Martinez', 'Male', 'Father', 'Sales Manager', 19770520, 60000, 'Fishing, Hiking'),
('F007', 'M011', 'James Davis', 'Male', 'Father', 'Architect', 19800228, 90000, 'Swimming, Cycling'),
('F007', 'M012', 'Linda Davis', 'Female', 'Mother', 'Writer', 19850315, 40000, 'Yoga, Painting'),
('F008', 'M013', 'Brian Miller', 'Male', 'Father', 'Graphic Designer', 19930110, 50000, 'Basketball, Reading'),
('F009', 'M014', 'Anna Wilson', 'Female', 'Mother', 'Baker', 19850505, 40000, 'Baking, Knitting'),
('F009', 'M015', 'Peter Wilson', 'Male', 'Father', 'Consultant', 19800214, 45000, 'Golfing, Traveling'),
('F010', 'M016', 'Jessica Taylor', 'Female', 'Daughter', 'Student', 20010530, 0, 'Dancing, Singing'),
('F010', 'M017', 'Mark Taylor', 'Male', 'Father', 'Photographer', 19870318, 60000, 'Cycling, Photography');

INSERT INTO Pets (family_id, pet_id, pet_type, pet_name) VALUES
('F001', 'P001', 'Dog', 'Buddy'),
('F003', 'P002', 'Cat', 'Whiskers'),
('F003', 'P003', 'Parrot', 'Polly'),
('F004', 'P004', 'Dog', 'Max'),
('F005', 'P005', 'Cat', 'Luna'),
('F007', 'P006', 'Dog', 'Rocky'),
('F008', 'P007', 'Fish', 'Nemo'),
('F010', 'P008', 'Rabbit', 'Fluffy');
