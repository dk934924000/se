<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">
    <head>
        <title th:text="${newsStory.heading}">heading</title>
        <meta charset="UTF-8"></meta>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>

        <link rel="stylesheet" href="../../../static/Wikideo/css/bootstrap.css">
        <link rel="stylesheet" href="../../../static/Wikideo/css/font-awesome.min.css">
        <link rel="stylesheet" href="../../../static/Wikideo/css/owl.carousel.css">
        <link rel="stylesheet" href="../../../static/Wikideo/css/owl.theme.css">
        <link rel="stylesheet" href="../../../static/Wikideo/css/normalize.css">
        <link rel="stylesheet" href="../../../static/Wikideo/css/main.css">
        <link rel="stylesheet" href="../../../static/Wikideo/css/responsive.css">

    </head>
    <body>

        <section class="mt-50 pb-50">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-sm-6 mt-50">
                        <h1 class="text-uppercase ls-3 bb text-center"><span class="yellow">${newsStory.heading}</span></h1>
                        <p class="mt-50 fz-15 text-center">
                            ${newsStory.lead}
                        </p>
                        <div align="center">
                        <img src="/news/img?id=${newsStory.id}" alt="" class="mt-50 img-responsive">
                        </div><br>
                        <h6 class="work-sans fz-12 gray-777">
                            <span>By - <span class="yellow">${newsStory.author}</span>  <span class="space">|</span>  </span>
                            <span>Date - <span class="yellow">${newsStory.localDateTime}</span><span class="space">|</span></span>
                            <span>Tags - <span class="yellow"></span></span>
                        </h6>
                        <p class="mt-30">${newsStory.text}</p>
                        <div class="table-responsive mt-40">
                            <table class="table mt-report1">
                                <thead>
                                <tr>
                                    <th><span class="work-sans text-medium gray-de text-uppercase">Match Venue</span></th>
                                    <th><span class="work-sans text-medium gray-de text-uppercase">Club Team</span></th>
                                    <th><span class="work-sans text-medium gray-de text-uppercase">Opponent</span></th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td data-title="Match Venue"><span class="work-sans fz-13 lh-26 gray-777">Sat 19 Dec 2017,  02:00 pm<br>FedEx Field, Down Town USA</span></td>
                                    <td data-title="Club Team"><span class="work-sans text-medium fz-14 gray-de text-uppercase"><img src="../../../static/GamePlay/images/team_beijing.png" alt="">Beijing</span></td>
                                    <td data-title="opponent"><span class="work-sans text-medium fz-14 gray-de text-uppercase"><img src="../../../static/GamePlay/images/team_shandong.png" alt="">Shandong</span></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <p class="mt-20">To a deluxe apartment in the sky. Makin their way the only way they know how. That's just a little bit more than the law will allow. In 1972 a crack commando unit was sent to prison by a military court for a crime they didn't commit these men promptly escaped from a maximum security.</p>
                    </div>

                    <div class="col-md-4 col-sm-6 mt-50">
                        <div class="sb-bordered text-center">
                            <h3 class="work-sans text-semi-bold fz-22 text-uppercase gray-de bb">Live Match Status</h3>
                            <div class="sb-lmu mt-30">
                                <h2 class="yellow text-uppercase">VS</h2>
                                <div class="lmu-team-a">
                                    <img src="img/sb-team-a.jpg" alt="">
                                    <ul class="list-unstyled text-left mt-20">
                                        <li class="work-sans fz-15 gray-777">Kwadwo<span class="pull-right">(2)</span></li>
                                        <li class="work-sans fz-15 gray-777">Mc Namara <span class="pull-right">(1)</span></li>
                                    </ul>
                                </div>
                                <div class="lmu-team-b">
                                    <img src="img/sb-team-b.jpg" alt="">
                                    <ul class="list-unstyled text-left mt-20">
                                        <li class="work-sans fz-15 gray-777">Patrick <span class="pull-right">(1)</span></li>
                                        <li class="work-sans fz-15 gray-777">Johansen  <span class="pull-right">(1)</span></li>
                                    </ul>
                                </div>
                                <div class="score-board">
                                    <h3 class="yellow display-ib">3 - 2</h3>
                                </div>
                                <span class="work-sans fz-13 gray-777 text-medium">56 Minutes Remaining </span>
                            </div>
                        </div>
                        <div class="sb-bordered mt-40">
                            <h3 class="work-sans text-semi-bold fz-22 text-uppercase gray-de bb text-center">Match Categories</h3>
                            <ul class="list-unstyled mt-50 list-2">
                                <li><a class="work-sans fz-15 gray-777" href="#">League Matches<span class="pull-right">(18)</span></a></li>
                                <li><a class="work-sans fz-15 gray-777" href="#">Club Events <span class="pull-right">(14)</span></a></li>
                                <li><a class="work-sans fz-15 gray-777" href="#">Domestic Meets<span class="pull-right">(11)</span></a></li>
                                <li><a class="work-sans fz-15 gray-777" href="#">Trainee Challenge<span class="pull-right">(19)</span></a></li>
                            </ul>
                        </div>
                        <div class="sb-bordered mt-40">
                            <h3 class="work-sans text-semi-bold fz-22 text-uppercase gray-de bb text-center">Flickr Streams</h3>
                            <ul class="mt-50 list-inline fs">
                                <li><a href="#"><img class="img-responsive" src="img/fs-1.jpg" alt=""></a></li>
                                <li><a href="#"><img class="img-responsive" src="img/fs-2.jpg" alt=""></a></li>
                                <li><a href="#"><img class="img-responsive" src="img/fs-3.jpg" alt=""></a></li>
                                <li><a href="#"><img class="img-responsive" src="img/fs-4.jpg" alt=""></a></li>
                                <li><a href="#"><img class="img-responsive" src="img/fs-5.jpg" alt=""></a></li>
                                <li><a href="#"><img class="img-responsive" src="img/fs-6.jpg" alt=""></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>

<!--
        <div>
            <h1 >heading${newsStory.heading}</h1><br/>
            <img src="/news/img?id=${newsStory.id}"/><br/>
            <p th:inline="text">Publish date:
                <span >release time:${newsStory.localDateTime}</span>
            </p>
            <span>Authors:</span>
            <ul>
                <li th:each="author :${newsStory.author}">
                    <span >author:${newsStory.author}</span>
                </li>
            </ul>
            <h3 >lead:${newsStory.lead}</h3>
            <p >story:${newsStory.text}</p><br/>

            <br/><a th:href="@{/news/{id}/edit(id=${newsStory.id})}">Edit</a>
        </div>
-->
    </body>
</html>