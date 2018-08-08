#!/usr/bin/env ruby

__author__ = 'ipetrash'


require 'csv'


project_by_number = Hash.new(0)

CSV.foreach('assignee_currentUser.csv', :headers => true) do |row|
    issue_key = row['Issue key']
    project = issue_key.split('-')[0]

    project_by_number[project] += 1
end

p project_by_number  # {"TTOP"=>182, "RBTWS"=>225, "STTXS"=>36}
p

# Вывод проектов: сначала проекты с наибольшим количеством
project_by_number.sort_by {|k, v| v}.reverse.each do |k, v|
  puts "#{k} #{v}"
end

# RBTWS 225
# TTOP 182
# STTXS 36
