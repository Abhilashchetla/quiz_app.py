
CREATE DATABASE  quiz_app;
USE quiz_app;

CREATE TABLE questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question TEXT NOT NULL,
    option_a VARCHAR(255),
    option_b VARCHAR(255),
    option_c VARCHAR(255),
    option_d VARCHAR(255),
    correct_answer CHAR(1)
);

create table scores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100),
    score INT
);
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_answer) VALUES
('What is the capital of India?', 'Telangana', 'New Delhi', 'Jaipur', 'AP', 'b'),
('Who is known as the Father of the Nation (India)?', 'Jawaharlal Nehru', 'Mahatma Gandhi', 'B. R. Ambedkar', 'Sardar Patel', 'b'),
('Which planet is called the Red Planet?', 'Earth', 'Jupiter', 'Mars', 'Venus', 'c'),
('What is the national animal of India?', 'Tiger', 'Lion', 'Elephant', 'Peacock', 'a'),
('Who invented the light bulb?', 'Isaac Newton', 'Thomas Edison', 'Albert Einstein', 'Nikola Tesla', 'b'),
('Which gas is essential for breathing?', 'Oxygen', 'Carbon Dioxide', 'Nitrogen', 'Hydrogen', 'a'),
('Which is the smallest continent in the world?', 'Africa', 'Europe', 'Australia', 'Antarctica', 'c'),
('Who was the first President of India?', 'Rajendra Prasad', 'S. Radhakrishnan', 'Zakir Hussain', 'Nehru', 'a'),
('Which is the largest ocean in the world?', 'Atlantic Ocean', 'Indian Ocean', 'Arctic Ocean', 'Pacific Ocean', 'd'),
('Which is the longest river in the world?', 'Amazon', 'Nile', 'Ganga', 'Mississippi', 'b'),
('What is the currency of Japan?', 'Yen', 'Yuan', 'Won', 'Dollar', 'a'),
('Who wrote the Ramayana?', 'Valmiki', 'Tulsidas', 'Vyasa', 'Kalidasa', 'a'),
('Which vitamin is produced when skin is exposed to sunlight?', 'Vitamin A', 'Vitamin B12', 'Vitamin C', 'Vitamin D', 'd'),
('Which Mughal emperor built the Taj Mahal?', 'Akbar', 'Shah Jahan', 'Aurangzeb', 'Humayun', 'b'),
('Which organ purifies our blood?', 'Heart', 'Lungs', 'Kidney', 'Liver', 'c');
