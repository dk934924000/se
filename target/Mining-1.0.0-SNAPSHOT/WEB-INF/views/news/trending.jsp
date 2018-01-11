<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">
    <head>
        <title>Top News</title>
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
            img {
                max-height: 150px;
                max-width: 200px;
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
            <h1>Top five trending news:</h1>
        </div>
        <div>
            <br/><ul>
                <li th:each="story : ${news}">
                    <h2><a th:href="@{/news/{id}(id=${story.id})}" th:text="${story.heading}">title</a></h2>

                    <h3 th:text="${story.lead}">lead</h3>
                    <span th:inline="text">Date published:
                        <span th:text="${story.localTime}">releaseTime</span><br/>
                    </span>
                    <span th:inline="text">Views:
                        <span th:text="${story.visits}">visits</span><br/>
                    </span>
                    <img th:src="@{/news/{id}/content(id=${story.kuvaId})}"/><br/>
                </li>
            </ul>
        </div>
    </body>
</html>
