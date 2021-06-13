package sk.Turnaments;

import sk.DatabaseConnectionManager;
import sk.User.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TurnamentsController {

    public List<Turnament> getAllTurnaments() {
        List<Turnament> turnaments = new ArrayList<>();

        String sql = "SELECT * FROM turnaments JOIN turnamenttype ON turnaments.kategoria=turnamenttype.id_cat";

        try (
                Connection con = DatabaseConnectionManager.getConnection();
                PreparedStatement ps = con.prepareStatement(sql);
        ) {
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Turnament turnament = new Turnament(
                        rs.getInt("id"),
                        rs.getInt("startovne"),
                        rs.getString("nazov"),
                        rs.getString("popis"),
                        rs.getInt("kategoria"),
                        rs.getInt("id_cat"),
                        rs.getString("cat"));

                turnaments.add(turnament);
            }

            return turnaments;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public int insertTurnament(Turnament turnament){
        String sql = "INSERT INTO turnaments (nazov, popis, datum, startovne, kategoria)  VALUE (?,?,?,?,?)";
        try (
                Connection con = DatabaseConnectionManager.getConnection();
                PreparedStatement ps = con.prepareStatement(sql);
        ) {
            ps.setString(1, turnament.getNazov());
            ps.setString(2, turnament.getPopis());
            ps.setString(3, turnament.getDatum());
            ps.setInt(4, turnament.getStartovne());
            ps.setInt(5, turnament.getKategoria());
            return ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }


    public Turnament getTurnament(int id){
        Turnament turnament = null;

        String sql = "SELECT * FROM turnaments JOIN turnamenttype ON turnaments.kategoria=turnamenttype.id_cat WHERE id = ?";
        Connection con = null;
        try {
            con = DatabaseConnectionManager.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                turnament = new Turnament(
                        rs.getInt("id"),
                        rs.getInt("startovne"),
                        rs.getString("nazov"),
                        rs.getString("popis"),
                        rs.getInt("kategoria"),
                        rs.getInt("id_cat"),
                        rs.getString("cat"));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return turnament;
    }


    public int updateTurnament(int id, Turnament turnament){
        String sql = "UPDATE turnaments SET id = ?, nazov = ?, popis = ?, startovne = ?, kategoria = ? where id = ?";
        try (
                Connection con = DatabaseConnectionManager.getConnection();
                PreparedStatement ps = con.prepareStatement(sql);
        ) {
            ps.setInt(1, turnament.getId());
            ps.setString(2, turnament.getNazov());
            ps.setString(3, turnament.getPopis());
            ps.setInt(4, turnament.getStartovne());
            ps.setInt(5, turnament.getKategoria());
            ps.setInt(6, id);
            return ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }


}
