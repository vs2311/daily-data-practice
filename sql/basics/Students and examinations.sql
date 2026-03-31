-- Problem: Students and Examinations
-- Platform: LeetCode

-- Goal:
-- For each student and each subject,
-- count how many exams they attended.

-- Approach:
-- 1. CROSS JOIN Students and Subjects → get all combinations
-- 2. LEFT JOIN Examinations → attach exam data
-- 3. COUNT(subject_name) → count non-null values (handles 0 cases)

SELECT 
    s.student_id,
    s.student_name,
    sub.subject_name,
    COUNT(e.subject_name) AS attended_exams
FROM Students s
CROSS JOIN Subjects sub
LEFT JOIN Examinations e
ON s.student_id = e.student_id
   AND sub.subject_name = e.subject_name
GROUP BY s.student_id, s.student_name, sub.subject_name
ORDER BY s.student_id, sub.subject_name;