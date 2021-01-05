<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About</title>
    <link rel="stylesheet" href="stylesh.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" charset="utf-8"></script>
</head>

<body>
    <input type="checkbox" id="check"> header area start-->
    <header>
        <label for="check">
        <i class="fas fa-bars" id="sidebar_btn"></i>
      </label>
        <!---->
        <div class="left_area">
            <h3>my <span>b'ness</span></h3>
        </div>

        <div class="right_area">
            <a href="#" class="logout_btn">Logout</a>
        </div>
    </header>
    <!--header area end-->
    <!--mobile navigation bar start-->
    <div class="mobile_nav">
        <!--
        <div class="nav_bar">
            <img src="1.png" class="mobile_profile_image" alt="">
            <i class="fa fa-bars nav_btn"></i>
        </div>
    -->
        <div class="mobile_nav_items">
            <a href="#"><i class="fas fa-qrcode"></i><span>home</span></a>
            <a href="#"><i class="fab fa-empire"></i><span>assets</span></a>
            <a href="#"><i class="fas fa-bookmark"></i><span>records</span></a>
            <a href="#"><i class="fas fa-receipt"></i><span>reciepts</span></a>
            <a href="#"><i class="fas fa-hands-helping"></i><span>contacts</span></a>
            <a href="#"><i class="far fa-question-circle"></i><span>help</span></a>
            <a href="#"><i class="fa fa-crosshairs"></i><span>about</span></a>
        </div>
    </div>
    <!--mobile navigation bar end-->
    <!--sidebar start-->
    <div class="sidebar">
        <a href="#"><i class="fas fa-qrcode"></i><span>home</span></a>
        <a href="#"><i class="fab fa-empire"></i><span>assets</span></a>
        <a href="#"><i class="fas fa-bookmark"></i><span>records</span></a>
        <a href="#"><i class="fas fa-receipt"></i><span>reciepts</span></a>
        <a href="#"><i class="fas fa-hands-helping"></i><span>contacts</span></a>
        <a href="#"><i class="far fa-question-circle"></i><span>help</span></a>
        <a href="#"><i class="fa fa-crosshairs"></i><span>about</span></a>
    </div>
    <!--sidebar end-->

    <div class="content">
        <div class="card">
            <div class="cards"></div>
            <div class="cards"></div>
            <div class="cards"></div>
        </div>
        <div class="card">
            <div class="cards"></div>
            <div class="cards"></div>
            <div class="cards"></div>
        </div>
    </div>

    <script type="text/javascript">
        $(document).ready(function() {
            $('.nav_btn').click(function() {
                $('.mobile_nav_items').toggleClass('active');
            });
        });
    </script>

</body>

</html>