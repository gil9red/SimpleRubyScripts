#!/usr/bin/env ruby

__author__ = 'ipetrash'


require 'csv'


issue_by_number = Hash.new(0)

CSV.foreach('assignee_currentUser.csv', :headers => true) do |row|
    issue = row['Issue Type']
    issue_by_number[issue] += 1
end

p issue_by_number  # {"New Feature"=>37, "Task"=>157, "Bug"=>168, "Question"=>51, "Sub-task"=>30}
p

# Вывод задач: сначала задачи с наибольшим количеством
issue_by_number.sort_by {|k, v| v}.reverse.each do |k, v|
  puts "#{k} #{v}"
end

# Bug 168
# Task 157
# Question 51
# New Feature 37
# Sub-task 30
