#0 (Done!)
Create base Redux App.

#1 (Done!)
Generate Models:
repositories - GET /repositories (get: id, $full_name) +
repository - GET /repos/$full_name (get: name, description, language, forks_count, stargazers_count, ?commits_count?; m.b. set: id, full_name) +/-
commits - GET /repos/$full_name/commits (get: only list lenght)

API

Home Screen:
 - Add list repos

#2 (Done!)

new middleware + new api

Info Screen:
 - get last commits (and info)
 - get avatar

 #3

Change github_middleware

Pull-to-refresh in list
 