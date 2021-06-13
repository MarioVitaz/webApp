package sk.User;

import sk.DatabaseConnectionManager;

import javax.naming.NamingException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserController {

    public int insertUser(User user) {
        String sql = "INSERT INTO users (telefon, meno, priezvisko, email, heslo, pohlavie) VALUES (?, ?, ?,?, ?, ?)";
        try (
                Connection con = DatabaseConnectionManager.getConnection();
                PreparedStatement ps = con.prepareStatement(sql);
        ) {
            ps.setInt(1, user.getTelefon());
            ps.setString(2, user.getMeno());
            ps.setString(3, user.getPriezvisko());
            ps.setString(4, user.getEmail());
            ps.setString(5, user.getHeslo());
            ps.setString(6, user.getPohlavie());

            return ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }


    public List<User> getAllPlayers() {
        List<User> users = new ArrayList<>();

        String sql = "SELECT * FROM users WHERE id_skupina = 1";

        try (
                Connection con = DatabaseConnectionManager.getConnection();
                PreparedStatement ps = con.prepareStatement(sql);
        ) {
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User(
                        rs.getInt("id"),
                        rs.getInt("telefon"),
                        rs.getString("meno"),
                        rs.getString("priezvisko"),
                        rs.getString("email"),
                        rs.getString("pohlavie"),
                        rs.getInt("body"));
                users.add(user);
            }

            return users;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static List<User> getUserSearch(String search_name) {
        List<User> users = new ArrayList<>();
        String sql = "SELECT * FROM users WHERE id_skupina = 1";
        if (search_name!=null){
            sql += " AND meno LIKE '%"+search_name+"%' ";
        }
        //String sql = "SELECT * FROM users WHERE id_skupina = 1 AND meno LIKE ? ";
        try (
                Connection con = DatabaseConnectionManager.getConnection();
                PreparedStatement ps = con.prepareStatement(sql);
        ) {
//            if (search_name!=null){
//                ps.setString(1, search_name);
//
//            }
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User(
                        rs.getInt("id"),
                        rs.getInt("telefon"),
                        rs.getString("meno"),
                        rs.getString("priezvisko"),
                        rs.getString("email"),
                        rs.getString("pohlavie"),
                        rs.getInt("body"));
                users.add(user);
            }


//            return users;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }







    public List<User> getAllCoaches() {
        List<User> users = new ArrayList<>();

        String sql = "SELECT * FROM users WHERE id_skupina = 2";

        try (
                Connection con = DatabaseConnectionManager.getConnection();
                PreparedStatement ps = con.prepareStatement(sql);
        ) {
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User(
                        rs.getInt("telefon"),
                        rs.getString("meno"),
                        rs.getString("priezvisko"),
                        rs.getString("email")
                        );
                users.add(user);
            }

            return users;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<User> getAllUsers() {
        List<User> users = new ArrayList<>();

        String sql = "SELECT * FROM users WHERE id_skupina <> 3";

        try (
                Connection con = DatabaseConnectionManager.getConnection();
                PreparedStatement ps = con.prepareStatement(sql);
        ) {
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User(
                        rs.getInt("id"),
                        rs.getInt("telefon"),
                        rs.getString("meno"),
                        rs.getString("priezvisko"),
                        rs.getString("email"),
                        rs.getString("pohlavie"),
                        rs.getInt("body"));
                users.add(user);
            }

            return users;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }


    public User getUserByEmail(String email, String heslo) {
        User user = null;

        String sql = "SELECT * FROM users WHERE email = ? AND heslo = ?";
        Connection con = null;
        try {
            con = DatabaseConnectionManager.getConnection();

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2,heslo);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                user = new User(
                        rs.getInt("id"),
                        rs.getInt("telefon"),
                        rs.getString("meno"),
                        rs.getString("priezvisko"),
                        rs.getString("email"),
                        rs.getString("pohlavie"),
                        rs.getInt("body"));
                return user;
            }else{
                return null;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    public User getUser(int id){
        User user = null;

        String sql = "SELECT * FROM users WHERE id = ?";
        Connection con = null;
        try {
            con = DatabaseConnectionManager.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                user = new User(
                        rs.getInt("id"),
                        rs.getInt("telefon"),
                        rs.getString("meno"),
                        rs.getString("priezvisko"),
                        rs.getString("email"),
                        rs.getString("heslo"),
                        rs.getString("pohlavie"),
                        rs.getInt("id_skupina"),
                        rs.getInt("body")
                );

            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return user;
    }

    public int deleteUser(int id){
        String sql = "DELETE FROM users WHERE id = ?";

        try (
                Connection con = DatabaseConnectionManager.getConnection();
                PreparedStatement ps = con.prepareStatement(sql);
        ) {

            ps.setInt(1, id);

            return ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    public int updateUser(int id,User user) {
        String sql = "UPDATE users SET id = ?, telefon = ?, meno = ?, priezvisko = ?, email = ?, heslo = ?, pohlavie = ?, id_skupina = ?, body = ?  WHERE id = ?";

        try (
                Connection con = DatabaseConnectionManager.getConnection();
                PreparedStatement ps = con.prepareStatement(sql);
        ) {
            ps.setInt(1, id);
            ps.setInt(2, user.getTelefon());
            ps.setString(3, user.getMeno());
            ps.setString(4, user.getPriezvisko());
            ps.setString(5, user.getEmail());
            ps.setString(6, user.getHeslo());
            ps.setString(7, user.getPohlavie());
            ps.setInt(8, user.getId_skupina());
            ps.setInt(9,user.getBody());
            ps.setInt(10, id);


            return ps.executeUpdate();
        } catch (SQLException e){
            System.out.println("dojebalo sa 1");
            System.out.println(id);
            e.printStackTrace();
        }


        return 0;
    }


    public ArrayList<User> selectUserType() {
        ArrayList<User> allUserType = new ArrayList<>();
        String sql = "SELECT * FROM userType";
        try (
                Connection con = DatabaseConnectionManager.getConnection();
                PreparedStatement ps = con.prepareStatement(sql);
        ) {
            ResultSet rs = ps.executeQuery(sql);
            if(rs!=null){
                while(rs.next()){
                    User data = new User(
                            rs.getInt("id"),
                            rs.getString("typeUser"));
                    allUserType.add(data);
                }
            }
        } catch (SQLException e) {
            System.out.println("dojebalo sa 2");

            e.printStackTrace();
        }
        return allUserType;
    }


//    public List<User> getAllRegPlayers(int id) {
//        List<User> users = new ArrayList<>();
//
//        String sql = "SELECT * FROM registration_turnament JOIN turnaments ON registration_turnament.id_turnament = turnaments.id JOIN users WHERE registration_turnament.id_turnament = ? ";
//
//        try (
//                Connection con = DatabaseConnectionManager.getConnection();
//                PreparedStatement ps = con.prepareStatement(sql);
//        ) {
//            ps.setInt(1, id);
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                User user = new User(
//                        rs.getInt("id_player"),
//                        rs.getInt("id_player2"));
//
//                users.add(user);
//            }
//
//            return users;
//        } catch (SQLException e) {
//            e.printStackTrace();
//        }
//        return null;
//    }


    public List<User> getAllRegPlayers(int id) {
        List<User> users = new ArrayList<>();

        String sql = "SELECT * FROM registration_turnament JOIN turnaments ON registration_turnament.id_turnament = turnaments.id JOIN users WHERE registration_turnament.id_turnament = ? ";

        try (
                Connection con = DatabaseConnectionManager.getConnection();
                PreparedStatement ps = con.prepareStatement(sql);
        ) {
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User(
                        rs.getInt("meno"),
                        rs.getInt("priezvisko"));

                users.add(user);
            }

            return users;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

}



