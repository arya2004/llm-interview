curl -X POST http://127.0.0.1:5000/create_room -H "Content-Type: application/json" -d '{"room_id": "GolangInterviewRoom1"}'

sleep 2


curl -X POST http://127.0.0.1:5000/append_conversation -H "Content-Type: application/json" -d '{
  "room_id": "GolangInterviewRoom1", 
  "person_name": "Interviewer 1", 
  "text": "Welcome, thank you for joining us today. Could you please introduce yourself?"
}'

sleep 2


curl -X POST http://127.0.0.1:5000/append_conversation -H "Content-Type: application/json" -d '{
  "room_id": "GolangInterviewRoom1", 
  "person_name": "Candidate", 
  "text": "Thank you for having me. My name is Jane Smith, and I have over 6 years of experience in backend development, specializing in Golang and distributed systems."
}'

sleep 2


curl -X POST http://127.0.0.1:5000/append_conversation -H "Content-Type: application/json" -d '{
  "room_id": "GolangInterviewRoom1", 
  "person_name": "Interviewer 2", 
  "text": "Great to meet you, Jane. Can you describe a challenging Golang project you worked on, and how you handled concurrency issues in that project?"
}'

sleep 2

curl -X POST http://127.0.0.1:5000/append_conversation -H "Content-Type: application/json" -d '{
  "room_id": "GolangInterviewRoom1", 
  "person_name": "Candidate", 
  "text": "I dont know, sorry"
}'

sleep 2


curl -X POST http://127.0.0.1:5000/append_conversation -H "Content-Type: application/json" -d '{
  "room_id": "GolangInterviewRoom1", 
  "person_name": "Interviewer 1", 
  "text": " What technologies do you enjoy working with the most in your Golang projects?"
}'

sleep 2


curl -X POST http://127.0.0.1:5000/append_conversation -H "Content-Type: application/json" -d '{
  "room_id": "GolangInterviewRoom1", 
  "person_name": "Candidate", 
  "text": "I really enjoy working with Golang because of its simplicity and performance. I also like using Docker for containerization and Kubernetes for orchestrating microservices. For databases, I often use PostgreSQL and Redis, which integrate well with Golang applications."
}'

sleep 2


curl -X POST http://127.0.0.1:5000/generate_summary -H "Content-Type: application/json" -d '{"room_id": "GolangInterviewRoom1"}'

sleep 2


curl -X POST http://127.0.0.1:5000/generate_questions -H "Content-Type: application/json" -d '{"room_id": "GolangInterviewRoom1"}'

sleep 2


curl -X POST http://127.0.0.1:5000/check_question -H "Content-Type: application/json" -d '{
  "room_id": "GolangInterviewRoom1",
  "question": "What are your thoughts on the latest political events?"
}'

sleep 2

curl -X POST http://127.0.0.1:5000/evaluate_response -H "Content-Type: application/json" -d '{
  "room_id": "GolangInterviewRoom1"
}'
# Compare this snippet from server/curl/evaluate.sh:


