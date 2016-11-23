# Personal Website Plan
	1. Answer Questions
		- What are we building?
		- What are we building it for?
		- What features do we need to have?
	2. User stories
	3. Model our data
	4. Think through pages we need in our app.

## Answer Questions
	- What are we building?
		A personal website to display a portfolio of past and current projects and a blog.
	- What are we building it for?
		Ourselves, future employers, and the general public.
	- What features do we need to have?
		A cleanly designed home page, that shows my personal logo, background, and current activities. On the same page there should be a section displaying my latest projects, then an invitation to view all projects on a separate page. Also a link to my blog.

## User Stories

Users should be able to view my information, download my CV, and browse my past projects and writing.
Users should be able to get in contact with me.
Users (only me) should be able to log into the web app and create a new project.

## Model

	- User (will be handled using devise)
	- Project
		- title:string
		- description:string
		- link:string
		- photos:array
