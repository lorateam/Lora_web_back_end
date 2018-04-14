<%@page contentType="text/html; UTF-8" pageEncoding="utf-8" language="java" %>

<head>
    <title>Minimal 1.0 - Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8"/>
    <%@include file="WEB-INF/frame_jsp/frame_head_css.jsp"%>
</head>

<body>
<div id="wrap">
    <!-- Make page fluid -->
    <div class="row">
        <!-- Page content -->
        <div id="content" class="col-md-12">
            <div class="main">
                <div class="row">
                    <div class="col-lg-8 col-md-12">
                        <section class="tile transparent">


                            <!-- tile header -->
                            <div class="tile-header color transparent-black textured rounded-top-corners">
                                <h1><strong>Statistic</strong> Chart</h1>
                                <div class="controls">
                                    <a href="#" class="refresh"><i class="fa fa-refresh"></i></a>
                                    <a href="#" class="remove"><i class="fa fa-times"></i></a>
                                </div>
                            </div>
                            <!-- /tile header -->


                            <!-- tile widget -->
                            <div class="tile-widget color transparent-black textured">
                                <div id="statistics-chart" class="chart statistics" style="height: 250px;"></div>
                            </div>
                            <!-- /tile widget -->


                            <!-- tile body -->
                            <div class="tile-body color transparent-white rounded-bottom-corners">
                                <div class="row">
                                    <ul class="inline">

                                        <li class="col-md-8 col-sm-12 col-xs-12 text-center">

                                            <h4 class="underline text-left"><strong>Actual</strong> Statistics</h4>

                                            <div class="inner-container inline">
                                                <div data-percent="100" data-size="140" class="pie-chart inline"
                                                     data-scale-color="false" data-track-color="rgba(0,0,0,0)"
                                                     data-bar-color="#ffffff" data-line-width="5">
                                                    <div class="text-center">
                                                        <i class="fa fa-usd fa-5x"></i>
                                                    </div>
                                                </div>
                                                <p class="chart-overall text-center medium-thin uppercase"><span
                                                        class="big-medium animate-number" data-value="6175"
                                                        data-animation-duration="2500">0</span> Sales</p>
                                            </div>


                                            <div class="inner-container inline">
                                                <div data-percent="85" data-size="140" class="pie-chart inline"
                                                     data-scale-color="false" data-track-color="rgba(0,0,0,0)"
                                                     data-bar-color="rgba(0,0,0,.4)" data-line-width="5">
                                                    <div class="text-center">
                                                        <span><i
                                                                class="fa fa-eye fa-5x color-transparent-black"></i></span>
                                                    </div>
                                                </div>
                                                <p class="chart-overall text-center medium-thin uppercase color-transparent-black">
                                                    <span class="big-medium animate-number" data-value="8213"
                                                          data-animation-duration="2500">0</span> Visits</p>
                                            </div>

                                        </li>

                                        <li class="col-md-4 col-sm-12 col-xs-12">
                                            <h4 class="underline"><strong>Visitors</strong> Statistics</h4>
                                            <ul class="progress-list">
                                                <li>
                                                    <div class="details">
                                                        <div class="title">America</div>
                                                        <div class="description">Visitors from America</div>
                                                    </div>
                                                    <div class="status pull-right">
                                                        <span class="animate-number" data-value="40"
                                                              data-animation-duration="1500">0</span>%
                                                    </div>
                                                    <div class="clearfix"></div>
                                                    <div class="progress progress-little">
                                                        <div class="progress-bar progress-bar-green animate-progress-bar"
                                                             data-percentage="40%" style="width: 0%;"></div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="details">
                                                        <div class="title">Europe</div>
                                                        <div class="description">Visitors from Europe</div>
                                                    </div>
                                                    <div class="status pull-right">
                                                        <span class="animate-number" data-value="38"
                                                              data-animation-duration="1000">0</span>%
                                                    </div>
                                                    <div class="clearfix"></div>
                                                    <div class="progress progress-little">
                                                        <div class="progress-bar progress-bar-cyan animate-progress-bar"
                                                             data-percentage="35%" style="width: 0%;"></div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="details">
                                                        <div class="title">Asia</div>
                                                        <div class="description">Visitors from Asia</div>
                                                    </div>
                                                    <div class="status pull-right">
                                                        <span class="animate-number" data-value="12"
                                                              data-animation-duration="800">0</span>%
                                                    </div>
                                                    <div class="clearfix"></div>
                                                    <div class="progress progress-little">
                                                        <div class="progress-bar progress-bar-amethyst animate-progress-bar"
                                                             data-percentage="12%" style="width: 0%;"></div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="details">
                                                        <div class="title">Africa</div>
                                                        <div class="description">Visitors from Africa</div>
                                                    </div>
                                                    <div class="status pull-right">
                                                        <span class="animate-number" data-value="7"
                                                              data-animation-duration="600">0</span>%
                                                    </div>
                                                    <div class="clearfix"></div>
                                                    <div class="progress progress-little">
                                                        <div class="progress-bar progress-bar-orange animate-progress-bar"
                                                             data-percentage="7%" style="width: 0%;"></div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="details">
                                                        <div class="title">Other</div>
                                                    </div>
                                                    <div class="status pull-right">
                                                        <span class="animate-number" data-value="6"
                                                              data-animation-duration="400">0</span>%
                                                    </div>
                                                    <div class="clearfix"></div>
                                                    <div class="progress progress-little">
                                                        <div class="progress-bar progress-bar-red animate-progress-bar"
                                                             data-percentage="6%" style="width: 0%;"></div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- /tile body -->


                        </section>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

        <%@include file="WEB-INF/frame_jsp/frame_foot_js.jsp"%>
</body>