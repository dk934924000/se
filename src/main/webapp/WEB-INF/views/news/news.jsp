<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">
    <head>
        <title>Top News</title>
        <meta charset="UTF-8"></meta>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
        <style>
            img {
                max-height: 320px;
                max-width: 260px;
            }

        </style>

        <style type="text/css">
            .file_hidden{
                display:none;
            }
        </style>
            <!-- Place favicon.ico in the root directory -->
        <link rel="stylesheet" href="../../../static/Wikideo/css/bootstrap.css">
        <link rel="stylesheet" href="../../../static/Wikideo/css/font-awesome.min.css">
        <link rel="stylesheet" href="../../../static/Wikideo/css/owl.carousel.css">
        <link rel="stylesheet" href="../../../static/Wikideo/css/owl.theme.css">
        <link rel="stylesheet" href="../../../static/Wikideo/css/normalize.css">
        <link rel="stylesheet" href="../../../static/Wikideo/css/main.css">
        <link rel="stylesheet" href="../../../static/Wikideo/css/responsive.css">

    </head>
    <body>
    <!--
        <nav>
            <a th:href="@{/news}">Home</a>
            <a th:href="@{/news/all}">All News</a>
            <a th:href="@{/news/categories}">Categories</a>
            <a th:href="@{/news/trending}">Trending</a>
        </nav>
    -->

        <div>

            <ul>
                <%--<li th:each="news : ${news.content}">--%>
                    <%--<h2><a th:href="@{/news/{id}(id=${news.id})}" th:text="${.heading}">title</a></h2>--%>
                    <%--<h3 th:text="${story.lead}">lead</h3>--%>
                    <%--<span th:inline="text">Date published:--%>
                        <%--<span th:text="${story.localTime}">releaseTime</span><br/>--%>
                    <%--</span>--%>
                    <%--<img th:src="@{/news/{id}/content(id=${story.kuvaId})}"/><br/>--%>
                <%--</li>--%>
            </ul>

        </div>


            <div class="kode_content_wrap">
                <section class="kf_blog2">
                    <div class="container">
                        <!--Featured 3 Slider Start-->
                        <div class="kf_featured_wrap3">
                            <div class="row">
                                <c:forEach var="news" items="${newss.content}">

                                    <div class="col-md-4 col-sm-4">
                                        <!--Featured 3 thumb Start-->
                                        <div class="kf_featured_thumb">
                                            <figure>
                                                <img src="/news/img?id=${news.id}"/>
                                            </figure>
                                            <div class="text_wrper">
                                                <div class="text">
                                                    <h2><a href="/news/story?id=${f:h(news.id)}">${f:h(news.heading)}</a></h2>
                                                    <span>${f:h(news.localDateTime)}</span>
                                                    ${f:h(news.heading)}
                                                    <p>${f:h(news.lead)}</p>
                                                </div>
                                                <div class="thumb_footer">
                                                    <strong>Author:</strong>
                                                        ${f:h(news.author)}<br>
                                                    <strong>Visits:</strong>
                                                        ${f:h(news.visits)}
                                                        <%--<img th:src="@{/news/{id}/content(id=${news.id})}"/><br/>--%>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </section>
            </div>


        </div>

        <div class="col-md-12 col-sm-12">
            <div class="kf_form">
                <div class="kf_form_hd">
                    <h3>Add a news story</h3>
                    <p>Enter information and submit:</p>
                </div>
                <form th:action="@{/news}" method="POST" enctype="multipart/form-data">
                    <div class="input_dec">
                        Heading: <input type="text" name="heading" id="heading"/>
                    </div>
                    <div class="input_dec">
                        Lead:<input type="text" name="lead" id="lead">
                    </div>
                    <div class="input_dec">
                        Authors:<input type="text" name="authors" id="authors">
                    </div>
                    <div class="input_dec">
                        Categories: <input type="text" name="categories" id="categories"/>
                    </div>
                    <div class="input_textarea">
                        Story:<textarea name="story" id ="story"></textarea>
                    </div>
                    <input type="file" name="file" id="up_file" style="display: none"/>
                    Image:
                    <div class="input_dec">
                        <div class="sb-search">
                            <div class="input-group">
                               <!--<a class="input-group-addon work-sans fz-13 text-semi-bold text-uppercase"
                                   onclick="document.getElementById('up_file').click()" style="width: 20px;height: 40px"/>ADD PICTURE</a> -->
                                <input type="file" name="file" id="file">
                            </div>
                        </div>
                    </div>
                    <input class="input-btn" id="button" type="submit" value="Submit">
                </form>
            </div>
        </div>
    <!--
        <div>
            <h3>Add a news story</h3>
            Enter information and submit:<br/>
            <form th:action="@{/news}" method="POST" enctype="multipart/form-data">
                Heading: <input type="text" name="heading" id="heading"/><br/>
                Lead: <input type="text" name="lead" id="lead"/><br/>
                Story: <input type="text" name="story" id ="story"/><br/>
                Authors: <input type="text" name="authors" id="authors"/><br/>
                Categories: <input type="text" name="categories" id="categories"/><br/>
                Image: <input type="file" name="file" id="file"/><br/>
                <input id="button" type="submit" value="Add a news story"/>            
            </form>
        </div>
    -->
    </body>

</html>
