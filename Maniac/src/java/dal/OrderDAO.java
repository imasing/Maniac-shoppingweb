package dal;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;
import models.Order;

public class OrderDAO extends DBContext {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public Order getOrderByProductID(String productID) {
        String query = "select* from tblOrders\n"
                + "where productID = ?";
        try{
            conn = new DBContext().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, productID);
            rs = ps.executeQuery();
            while (rs.next()){
                return new Order(
                        rs.getInt(1), 
                        rs.getInt(2), 
                        rs.getInt(3), 
                        rs.getDouble(4), 
                        rs.getString(5), 
                        rs.getString(6), 
                        rs.getString(7));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return null;
    }

    public List<Order> getOrderByUserID(String userID) {
        List<Order> list = new ArrayList<>();
        String query = "select* from tblOrders\n"
                + "where userID = ?";
        try {
            conn = new DBContext().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, userID);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Order(
                        rs.getInt(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7)));
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return list;
    }

    public void addOrderByProductID(String userID, String productID, int quantity, String price, String image, String productName) {
        String query = "insert into tblOrders(userID, productID, quantity, price, image, productName)\n"
                + "values(?, ?, ?, ?, ?, ?)";
        try {
            conn = new DBContext().connection;
            ps = conn.prepareStatement(query);
            ps.setString(1, userID);
            ps.setString(2, productID);
            ps.setInt(3, quantity);
            ps.setString(4, price);
            ps.setString(5, image);
            ps.setString(6, productName);
            ps.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
    
}
