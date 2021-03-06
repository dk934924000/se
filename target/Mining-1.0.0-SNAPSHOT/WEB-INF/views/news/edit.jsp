<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">
    <head>
        <title th:text="${newsStory.heading}">heading</title>
        <meta charset="UTF-8"></meta>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
        <style>
            div {
                margin-left: 20px
            }
            ul {
                list-style-type: none;
            }
            input {
                position: absolute;
                left: 110px;
            }
            #button {
                position: absolute;
                left: 50px;
                padding-left: 20px;
                padding-right: 20px;
                margin-top: 15px;
                margin-bottom:30px;
            }
            nav {
                margin-left: 20px;
                margin-top: 20px;
            }
        </style>
    </head>
    <body>
        <nav>
            <a th:href="@{/news}">Home</a>
            <a th:href="@{/news/all}">All News</a>
            <a th:href="@{/news/categories}">Categories</a>
            <a th:href="@{/news/trending}">Trending</a>
        </nav>
        <div>
            <h3 th:text="${newsStory.heading}">heading</h3><br/>
            <span th:text="${newsStory.lead}">lead</span><br/>
            <span th:text="${newsStory.text}">story</span><br/>

            <br/><h4>Edit the story by inputting new values below:</h4>
            <form th:action="@{/news/{id}/edit(id=${storyId})}" method="POST" enctype="multipart/form-data">
                Heading: <input type="text" name="heading" id="heading"/><br/>
                Lead: <input type="text" name="lead" id="lead"/><br/>
                Story: <input type="text" name="story" id ="story"/><br/>
                Authors: <input type="text" name="authors" id="authors"/><br/>
                Categories: <input type="text" name="categories" id="categories"/><br/>
                Image: <input type="file" name="file" id="file"/><br/>
                <input type="submit" value="Edit the news story"/>            
            </form>
        </div>
    </body>
</html>
