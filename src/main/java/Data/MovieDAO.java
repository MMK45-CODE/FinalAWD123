package Data;
import Bean.movie;

import javax.naming.Context;
import javax.naming.InitialContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.time.Year;
import java.util.ArrayList;
import java.util.List;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class addMovie {
    private DataSource datasource;

    private void closeSQL(Connection connection, Statement statement, ResultSet resultset) {
        try {
            if (resultset != null) {
                resultset.close();
            }

            if (statement != null) {
                statement.close();
            }

            if (connection != null) {
                connection.close();
            }
        } catch (Exception var5) {
            var5.printStackTrace();
        }

    }


    public void addMovie(movie theMovie) throws Exception{
        Connection connection = null;
        PreparedStatement statement = null;

        try{
            Context context = new InitialContext();
            DataSource datasource = (DataSource)context.lookup("java:comp/env/jdbc/cinema");
            connection = datasource.getConnection();
            String sql = "Insert into movie_Table (movieID,title, director, firstActor,  secondActor,  thirdActor,\n" +
                    "                 genre, yearOfProduction,imagePath)values (?, ?, ?, ?, ?, ?, ?,?,?)";
            statement = connection.prepareStatement(sql);
            statement.setInt(1,theMovie.getMovieID());
            statement.setString(2,theMovie.getTitle());
            statement.setString(3,theMovie.getDirector());
            statement.setString(4,theMovie.getFirstActor());
            statement.setString(5,theMovie.getSecondActor());
            statement.setString(6,theMovie.getThirdActor());
            statement.setString(7,theMovie.getGenre());
            statement.setInt(8,theMovie.getYearOfProduction());
            statement.setString(9,theMovie.getImagePath());
            statement.execute();

        } catch (Exception var10) {
            var10.printStackTrace();
        }finally {
            this.closeSQL(connection, statement, (ResultSet)null);

    }

}
