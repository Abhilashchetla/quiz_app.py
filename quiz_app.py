import mysql.connector
import random
conn=mysql.connector.connect(host='localhost',user="root",password='Abhi123@',database="quiz_app")
cursor=conn.cursor()

#quiz function
def my_quiz(username):
    cursor.execute("SELECT * FROM questions ORDER BY RAND() LIMIT 5")
    questions = cursor.fetchall()

    score=0
    for q in questions:
        print("\nQ:",q[1])
        print(q[2],q[3],q[4],q[5])
        ans=input("Your answer(a/b/c/d): ").strip().lower()
        if ans==q[6]:
            score+=1
            print("Correct!")
        else:
            print("Wrong!")


    print("\n"+username+",your final score: "+str(score))
    cursor.execute("INSERT INTO scores (username, score) VALUES (%s, %s)", (username, score))
    conn.commit()
    cursor.execute("SELECT username, score FROM scores ORDER BY score DESC")
    all_scores = cursor.fetchall()
    print("\n🏆 Leaderboard 🏆")
    rank = 1
    for player in all_scores:
        print(str(rank) + ". " + player[0] + " - " + str(player[1]))
        rank += 1

name = input("Enter your name: ")
my_quiz(name)

cursor.close()
conn.close()


    
    

