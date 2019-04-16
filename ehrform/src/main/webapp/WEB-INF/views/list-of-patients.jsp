<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Patients</title>
	<link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="lib/Ionicons/css/ionicons.css" rel="stylesheet">
    <link href="lib/perfect-scrollbar/css/perfect-scrollbar.css" rel="stylesheet">
    <link href="lib/jquery-switchbutton/jquery.switchButton.css" rel="stylesheet">
    <link href="lib/rickshaw/rickshaw.min.css" rel="stylesheet">
    <link href="lib/chartist/chartist.css" rel="stylesheet">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/typography.css">
    <link rel="stylesheet" href="css/forms.css">
    <link rel="stylesheet" href="css/component.css">
    <link rel="stylesheet" href="css/widgets.css">
    <link rel="stylesheet" href="css/vendorOverride.css">
    <link rel="stylesheet" href="css/dashboardSkin.css">
    <link rel="stylesheet" href="css/utility.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div class="card bd-0 shadow-base pd-30 mg-t-20">
                    <div class="d-flex align-items-center justify-content-between mg-b-30">
                        <div>
                            <h6 class="tx-13 tx-uppercase tx-inverse tx-semibold tx-spacing-1">Patients</h6>
                            <p class="mg-b-0"><i class="icon ion-calendar mg-r-5"></i> From October 2017 - December 2017</p>
                        </div>
                        <a href="#" class="btn btn-outline-info btn-oblong tx-11 tx-uppercase tx-mont tx-medium tx-spacing-1 pd-x-30 bd-2">See more</a>
                    </div><!-- d-flex -->

                    <table class="table table-valign-middle mg-b-0">
                        <tbody>
                        <tr>
                            <td class="pd-l-0-force">
                                <img src="img/img10.jpg" class="wd-40 rounded-circle" alt="">
                            </td>
                            <td>
                                <h6 class="tx-inverse tx-14 mg-b-0">Deborah Miner</h6>
                                <span class="tx-12">@deborah.miner</span>
                            </td>
                            <td>Nov 01, 2017</td>
                            <td><span id="sparkline1">1,4,4,7,5,9,4,7,5,9,1</span></td>
                            <td class="pd-r-0-force tx-center"><a href="#" class="tx-gray-600"><i class="icon ion-more tx-18 lh-0"></i></a></td>
                        </tr>
                        <tr>
                            <td class="pd-l-0-force">
                                <img src="img/img9.jpg" class="wd-40 rounded-circle" alt="">
                            </td>
                            <td>
                                <h6 class="tx-inverse tx-14 mg-b-0">Belinda Connor</h6>
                                <span class="tx-12">@belinda.connor</span>
                            </td>
                            <td>Oct 28, 2017</td>
                            <td><span id="sparkline2">1,3,6,4,5,8,4,2,4,5,0</span></td>
                            <td class="pd-r-0-force tx-center"><a href="#" class="tx-gray-600"><i class="icon ion-more tx-18 lh-0"></i></a></td>
                        </tr>
                        <tr>
                            <td class="pd-l-0-force">
                                <img src="img/img6.jpg" class="wd-40 rounded-circle" alt="">
                            </td>
                            <td>
                                <h6 class="tx-inverse tx-14 mg-b-0">Andrew Wiggins</h6>
                                <span class="tx-12">@andrew.wiggins</span>
                            </td>
                            <td>Oct 27, 2017</td>
                            <td><span id="sparkline3">1,2,4,2,3,6,4,2,4,3,0</span></td>
                            <td class="pd-r-0-force tx-center"><a href="#" class="tx-gray-600"><i class="icon ion-more tx-18 lh-0"></i></a></td>
                        </tr>
                        <tr>
                            <td class="pd-l-0-force">
                                <img src="img/img5.jpg" class="wd-40 rounded-circle" alt="">
                            </td>
                            <td>
                                <h6 class="tx-inverse tx-14 mg-b-0">Brandon Lawrence</h6>
                                <span class="tx-12">@brandon.lawrence</span>
                            </td>
                            <td>Oct 27, 2017</td>
                            <td><span id="sparkline4">1,4,4,7,5,9,4,7,5,9,1</span></td>
                            <td class="pd-r-0-force tx-center"><a href="#" class="tx-gray-600"><i class="icon ion-more tx-18 lh-0"></i></a></td>
                        </tr>
                        <tr>
                            <td class="pd-l-0-force">
                                <img src="img/img4.jpg" class="wd-40 rounded-circle" alt="">
                            </td>
                            <td>
                                <h6 class="tx-inverse tx-14 mg-b-0">Marilyn Tarter</h6>
                                <span class="tx-12">@marilyn.tarter</span>
                            </td>
                            <td>Oct 27, 2017</td>
                            <td><span id="sparkline5">1,3,6,4,5,8,4,2,4,5,0</span></td>
                            <td class="pd-r-0-force tx-center"><a href="#" class="tx-gray-600"><i class="icon ion-more tx-18 lh-0"></i></a></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
 <script src="lib/jquery/jquery.js"></script>
<script src="lib/popper.js/popper.js"></script>
<script src="lib/bootstrap/bootstrap.js"></script>
<script src="lib/perfect-scrollbar/js/perfect-scrollbar.jquery.js"></script>
<script src="lib/moment/moment.js"></script>
<script src="lib/jquery-ui/jquery-ui.js"></script>
<script src="lib/jquery-switchbutton/jquery.switchButton.js"></script>
<script src="lib/peity/jquery.peity.js"></script>
<script src="lib/chartist/chartist.js"></script>
<script src="lib/jquery.sparkline.bower/jquery.sparkline.min.js"></script>
<script src="lib/d3/d3.js"></script>
<script src="lib/rickshaw/rickshaw.min.js"></script>

<script src="js/nion.js"></script>
<script src="js/ResizeSensor.js"></script>
<script src="js/dashboard.js"></script>
<script>
    $(function(){
        'use strict';
        // FOR DEMO ONLY
        // menu collapsed by default during first page load or refresh with screen
        // having a size between 992px and 1299px. This is intended on this page only
        // for better viewing of widgets demo.
        $(window).resize(function(){
            minimizeMenu();
        });
        minimizeMenu();
        function minimizeMenu() {
            if(window.matchMedia('(min-width: 992px)').matches && window.matchMedia('(max-width: 1299px)').matches) {
                // show only the icons and hide left menu label by default
                $('.menu-item-label,.menu-item-arrow').addClass('op-lg-0-force d-lg-none');
                $('body').addClass('collapsed-menu');
                $('.show-sub + .br-menu-sub').slideUp();
            } else if(window.matchMedia('(min-width: 1300px)').matches && !$('body').hasClass('collapsed-menu')) {
                $('.menu-item-label,.menu-item-arrow').removeClass('op-lg-0-force d-lg-none');
                $('body').removeClass('collapsed-menu');
                $('.show-sub + .br-menu-sub').slideDown();
            }
        }
    });
</script>
</body>
</html>