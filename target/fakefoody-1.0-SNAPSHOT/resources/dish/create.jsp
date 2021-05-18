<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="entity.Dish" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/18/2021
  Time: 8:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Page</title>
    <link href="http://7oroof.com/demos/babette/assets/images/favicon/favicon.png" rel="icon">
    <link rel="stylesheet" href="http://7oroof.com/demos/babette/assets/css/style.css" type="text/css">
    <link rel="stylesheet" href="http://7oroof.com/demos/babette/assets/css/libraries.css" type="text/css">
    <link rel="stylesheet" href="http://7oroof.com/demos/babette/assets/css/style.css" type="text/css">
</head>
<body style="background-image: url('http://7oroof.com/demos/babette/assets/images/backgrounds/6.jpg')">
<div class="container">
    <%
        Dish dish = (Dish) request.getAttribute("student");
        if (dish == null) {
            dish = new Dish("","", 0, "", "", 0);
        }
        HashMap<String, ArrayList<String>> errors = (HashMap<String, ArrayList<String>>) request.getAttribute("errors");
        if (errors == null) {
            errors = new HashMap<>();
        }
    %>
    <div class="reservation__wrapper">
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-5">
                <div class="reservation__banner">
                    <img class="reservation__banner-img"
                         src="http://7oroof.com/demos/babette/assets/images/backgrounds/pattern/3.png" alt="background">
                    <div class="reservation__banner-inner">
                        <span class="reservation__banner-inner-subtitle">Check Availability</span>
                        <h5 class="reservation__banner-inner-title">Opening Times</h5>
                        <ul class="list-unstyled">
                            <li><span>Week days</span><span>09.00 – 24:00</span></li>
                            <li><span>Saturday</span><span>08:00 – 03.00</span></li>
                            <li><span>Saturday</span><span>Day off</span></li>
                        </ul>
                        <div class="reservation__banner-contact">
                            <span class="reservation__banner-contact-label">Call Us Now</span>
                            <a class="reservation__banner-contact-phone" href="tel:0201023456789">0201023456789</a>
                        </div><!-- /.reservation__banner-contact -->
                    </div><!-- /.reservation__banner-inner -->
                </div><!-- /.reservation__banner -->
            </div><!-- /.col-lg-5 -->
            <div class="col-sm-12 col-md-12 col-lg-7">
                <form class="reservation__form">
                    <div class="row">
                        <div class="col-12">
                            <div class="reservation__form-heading  mb-30">
                                <div class="d-flex justify-content-between">
                                    <h5>Make A Reservation</h5>
                                    <a href="http://7oroof.com/demos/babette/assets/images/shapes/table.jpg"
                                       data-lightbox="lightbox">Tables
                                        Arrangement</a>
                                </div>
                                <p class="heading__desc">You can book a table online easily in just a minute.
                                    Reservations are for
                                    lunch and dinner, check the availability of your table &amp; book it now!</p>
                            </div><!-- /.heading -->
                        </div>
                        <!-- /.col-lg-6 -->
                        <div class="col-sm-6 col-md-6 col-lg-6">
                            <div class="form-group">
                                <input type="text" name="code" class="form-control" placeholder="Food Code">
                                <span class="error-msg">
                                    <%
                                        if (errors.containsKey("code")) {
                                            ArrayList<String> fullNameErrors = errors.get("code");
                                            for (String msg : fullNameErrors) {
                                    %>
                                    <li><%=msg%></li>
                                    <%
                                            }
                                        }%>
                                </span>
                            </div>
                        </div><!-- /.col-lg-6 -->
                        <div class="col-sm-6 col-md-6 col-lg-6">
                            <div class="form-group">
                                <input type="text" name="name" class="form-control" placeholder="Food Name">
                                <span class="error-msg">
                                    <%
                                        if (errors.containsKey("name")) {
                                            ArrayList<String> fullNameErrors = errors.get("name");
                                            for (String msg : fullNameErrors) {
                                    %>
                                    <li><%=msg%></li>
                                    <%
                                            }
                                        }%>
                                </span>
                            </div>
                        </div><!-- /.col-lg-6 -->
                        <div class="col-sm-6 col-md-6 col-lg-6">
                            <div class="form-group">
                                <select class="form-control" style="display: none;" name="categoryId">
                                    <option value="1">Món nướng</option>
                                    <option value="2">Món luộc</option>
                                    <option value="3">Món chay</option>
                                    <option value="4">Ðồ uống</option>
                                </select>
                                <span class="error-msg">
                                    <%
                                        if (errors.containsKey("name")) {
                                            ArrayList<String> fullNameErrors = errors.get("category_id");
                                            for (String msg : fullNameErrors) {
                                    %>
                                    <li><%=msg%></li>
                                    <%
                                            }
                                        }%>
                                </span>
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-6 col-lg-6">
                            <div class="form-group">
                                <input type="number" class="form-control" placeholder="Food Price">
                                <span class="error-msg">
                                    <%
                                        if (errors.containsKey("price")) {
                                            ArrayList<String> fullNameErrors = errors.get("price");
                                            for (String msg : fullNameErrors) {
                                    %>
                                    <li><%=msg%></li>
                                    <%
                                            }
                                        }%>
                                </span>
                            </div>
                        </div><!-- /.col-lg-6 -->
                        <div class="col-sm-6 col-md-6 col-lg-6">
                            <div class="form-group">
                                <button type="button" id="upload_widget" class="cloudinary-button">Upload files</button>
                                <input type="hidden" name="image" id="image">
                            </div>
                        </div>
                        <div class="col-sm-6 col-md-6 col-lg-6">
                            <div class="form-group">
                                <img src="#" id="demo-img" style="display: none">
                            </div>
                        </div><!-- /.col-lg-6 -->
                        <div class="col-sm-12 col-md-12 col-lg-12">
                            <div class="form-group">
                                <textarea name="description" class="form-control"></textarea>
                                <span class="error-msg">
                                    <%
                                        if (errors.containsKey("price")) {
                                            ArrayList<String> fullNameErrors = errors.get("price");
                                            for (String msg : fullNameErrors) {
                                    %>
                                    <li><%=msg%></li>
                                    <%
                                            }
                                        }%>
                                </span>
                            </div>
                        </div><!-- /.col-lg-12 -->
                        <div class="col-sm-12 col-md-12 col-lg-12">
                            <button type="submit" class="btn btn__primary btn__block">Create</button>
                        </div><!-- /.col-lg-12 -->
                    </div><!-- /.row -->
                </form>
            </div><!-- /.col-lg-7 -->
        </div><!-- /.row -->
    </div><!-- /.row -->
</div>
<script src="https://upload-widget.cloudinary.com/global/all.js" type="text/javascript"></script>
<script src="http://7oroof.com/demos/babette/assets/js/jquery-3.3.1.min.js" type="text/javascript"></script>
<script src="http://7oroof.com/demos/babette/assets/js/plugins.js"></script>
<script src="http://7oroof.com/demos/babette/assets/js/main.js" type="text/javascript"></script>
<script type="text/javascript">
    var myWidget = cloudinary.createUploadWidget({
            cloudName: 'dwarrion',
            uploadPreset: 'j6d3dypu',
        }, (error, result) => {
            if (!error && result && result.event === "success") {
                console.log('Done! Here is the image info: ', result.info);
                $("#image").val(result.info.public_id)
                $("#demo-img").attr('src', "https://res.cloudinary.com/dwarrion/image/upload/c_limit,h_300,w_900/" + result.info.public_id)
                $("#demo-img").css('display', 'block')
            }
        }
    )

    document.getElementById("upload_widget").addEventListener("click", function () {
        myWidget.open();
    }, false);
</script>
</body>
</html>
