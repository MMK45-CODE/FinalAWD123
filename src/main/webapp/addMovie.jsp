<%--
  Created by IntelliJ IDEA.
  User: MMK
  Date: 31/10/2022
  Time: 23:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container">
    <div class="movie-form">
        <h1 align="center"> Add Movie</h1>
        <form action="addMovieServlet" method="post">
            <!-- onsubmit= "return movieValidate(this.login.value, this.password.value);" -->
            <div class="form-group">
                <label>
                    <input type="text" name="title" class="form-control" placeholder="title">
                </label>
            </div>
            <div class="form-group">
                <label>
                    <input type="text" name="country" class="form-control" placeholder="country">
                </label>
            </div>
            <div class="form-group">
                <label>
                    <input type="text" name="year" class="form-control" placeholder="year">
                </label>
            </div>
            <div class="form-group ">
                <select class="form-control" name="genre">
                    <option value="DETECTIVE">detective</option>
                    <option value="DRAMA">drama</option>
                    <option value="MUSICAL">musical</option>
                    <option value="ADVENTURE">adventure</option>
                    <option value="FANTASTIC">fantastic</option>
                    <option value="HORROR">horror</option>
                    <option value="COMEDY" selected>comedy</option>
                </select>
            </div>
            <div class="form-group ">
                <label>
                    <select  class="form-control" name="movie_type">
                        <option value="FILM" selected>film</option>
                        <option value="SERIES" selected>series</option>
                        <option value="ANIME" selected>anime</option>
                        <option value="CARTOON" selected>cartoon</option>
                    </select>
                </label>
            </div>

            <div class="form-group">
                <label>
                    <input type="text" name="age_category" class="form-control" placeholder="age category">
                </label>
            </div>
            <div class="form-group">
                <label>
                    <textarea class="form-control" name="description" placeholder="description"></textarea>
                </label>
            </div>
            <div class="form-group">
                <label>
                    <input type="text" class="form-control" name="youtube_trailer" placeholder="youtube trailer hash">
                </label>
            </div>
            <div class="form-group">
                <label>
                    <input type="text" class="form-control" name="image_path" placeholder="image path (https)">
                </label>
            </div>
            <button type="submit" class="btn btn-primary">Add Movie</button>
        </form>
    </div>
</div>

</body>

</html>
