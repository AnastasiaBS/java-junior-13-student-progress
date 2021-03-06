package database;

import com.mysql.cj.x.protobuf.MysqlxPrepare;
import entity.Account;
import entity.Discipline;

import javax.xml.transform.Result;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DBManager {
    private static Connection con;
    private static PreparedStatement modifyDiscipline;
    private static PreparedStatement getAccountByLoginPasswordRole;


    static {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_crm?useUnicode=true&serverTimezone=UTC", "root", "Root");
            modifyDiscipline = con.prepareStatement("UPDATE `discipline` SET `discipline` = ? WHERE (`id` = ?);");
            getAccountByLoginPasswordRole = con.prepareStatement("SELECT * FROM user_role\n" +
                    "left join user on user_role.id_user = user.id\n" +
                    "where user.login = ? and user.password = ? and user_role.id_role = ?");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static List<Discipline> getAllActiveDisciplines() {
        ArrayList<Discipline> disciplines = new ArrayList<Discipline>();
        try {
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery("select * from discipline WHERE status = 1");
            while (rs.next()) {
                Discipline discipline = new Discipline();
                discipline.setId(rs.getInt("id"));
                discipline.setDiscipline(rs.getString("discipline"));
                disciplines.add(discipline);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return disciplines;
    }

    public static Discipline getDisciplineById(String id) {
        Discipline discipline = new Discipline();
        try {
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery("select * from discipline WHERE status = 1 AND id = " + id);
            while (rs.next()) {
                discipline.setId(rs.getInt("id"));
                discipline.setDiscipline(rs.getString("discipline"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return discipline;
    }

    public static boolean getAccountByLoginPasswordRole(String login, String password, String role) {
        try {
            getAccountByLoginPasswordRole.setString(1, login);
            getAccountByLoginPasswordRole.setString(2, password);
            getAccountByLoginPasswordRole.setString(3, role);
            ResultSet rs = getAccountByLoginPasswordRole.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public static void insertNewDiscipline(String newDiscipline) {

        try {
            Statement stm = con.createStatement();
            stm.execute("INSERT INTO `discipline` (`discipline`) VALUES ('" + newDiscipline + "');");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void modifyDiscipline(String newDiscipline, String id) {
        try {
            modifyDiscipline.setString(1, newDiscipline);
            modifyDiscipline.setString(2, id);
            modifyDiscipline.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void deleteDisciplines(String ids) {
        try {
            Statement stm = con.createStatement();
            stm.execute("UPDATE `discipline` SET `status` = '0' WHERE (`id` in (" + ids + "));");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
