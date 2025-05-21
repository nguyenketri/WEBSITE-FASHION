/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package view;

import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;
import model.Product;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Account;
import model.Cart;
import model.Category;
import model.Order;

/**
 *
 * @author Admin
 */
public class ProductDAO extends DBContext {

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String sql = "select*from product";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4),
                        rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String sql = "select*from Category";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1), rs.getString(2)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Product getProductLast() {
        String sql = "select top(1)* from product\n"
                + "order by id desc";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return (new Product(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getDouble(4), rs.getString(5), rs.getString(6),
                        rs.getInt(7), rs.getInt(8)));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> getAllProductByCID(String cID) {
        List<Product> list = new ArrayList<>();
        String sql = "select * from product\n"
                + "where CategoryID =?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, cID);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4),
                        rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Product getAllProductByPID(String pID) {
        String sql = "select * from product\n"
                + "where id =?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, pID);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return (new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4),
                        rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Product> getAllProductByName(String name) {
        List<Product> list = new ArrayList<>();
        String sql = "select * from product\n"
                + "where  Name like ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, '%' + name + '%');
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4),
                        rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Account login(String user, String pass) {
        String sql = "select* from Account \n"
                + "where [user]=? and [pass]=?";
        try {
            PreparedStatement st = connection.prepareCall(sql);
            st.setString(1, user);
            st.setString(2, pass);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5));
            }
        } catch (SQLException e) {
        }
        return null;
    }

    public Account checkUserExit(String user) {
        String sql = "select* from Account \n"
                + "where [user]=? ";
        try {
            PreparedStatement st = connection.prepareCall(sql);
            st.setString(1, user);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5));
            }
        } catch (SQLException e) {
        }
        return null;
    }

    public void signup(String user, String pass) {
        String sql = "INSERT INTO [dbo].[Account]\n"
                + "           ([user]\n"
                + "           ,[pass]\n"
                + "           ,[isSell]\n"
                + "           ,[isAdmin])\n"
                + "     VALUES\n"
                + "           (?,\n"
                + "           ?,\n"
                + "           0,\n"
                + "           0)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user);
            st.setString(2, pass);
            st.executeUpdate();

        } catch (Exception e) {
        }
    }

    public List<Product> getAllProductBySellID(int isSell) {
        List<Product> list = new ArrayList<>();
        String sql = "select * from product\n"
                + "where  sell_ID =  ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, isSell);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4),
                        rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public void deleteProductByID(String pID) {
        String sql = "Delete from Product where id =?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, pID);
            st.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void AddProductByManager(String name, String image, String price, String title, String description,
            String category, int sID) {
        String sql = "INSERT INTO [dbo].[Product]\n"
                + "           ([Name]\n"
                + "           ,[Image]\n"
                + "           ,[Price]\n"
                + "           ,[Title]\n"
                + "           ,[Description]\n"
                + "           ,[CategoryID]\n"
                + "           ,[Sell_ID])\n"
                + "     VALUES\n"
                + "           (?,\n"
                + "           ?,\n"
                + "           ?,\n"
                + "           ?,\n"
                + "           ?,\n"
                + "           ?,\n"
                + "           ?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, image);
            st.setDouble(3, Double.parseDouble(price));
            st.setString(4, title);
            st.setString(5, description);
            st.setInt(6, Integer.parseInt(category));
            st.setInt(7, sID);
            st.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public void EditPoductByID(String name, String image, String price, String title, String description,
            String category, int sID, String pID) {
        String sql = "UPDATE [dbo].[Product]\n"
                + "   SET [Name] = ?"
                + "      ,[Image] = ?"
                + "      ,[Price] = ?"
                + "      ,[Title] = ?"
                + "      ,[Description] = ?"
                + "      ,[CategoryID] = ?"
                + "      ,[Sell_ID] = ?"
                + " WHERE ID = ? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, image);
            st.setDouble(3, Double.parseDouble(price));
            st.setString(4, title);
            st.setString(5, description);
            st.setInt(6, Integer.parseInt(category));
            st.setInt(7, sID);
            st.setInt(8, Integer.parseInt(pID));
            st.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public void addToCart(int idA, int idP, int Amount, double price, String name, String image) {
        String sql = "INSERT INTO [dbo].[Cart]\n"
                + "           ([AccountID]\n"
                + "           ,[ProductID]\n"
                + "           ,[Amount]\n"
                + "           ,[Price]\n"
                + "           ,[Name]\n"
                + "           ,[Image])"
                + "VALUES(?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, idA);
            st.setInt(2, idP);
            st.setInt(3, Amount);
            st.setDouble(4, price);
            st.setString(5, name);
            st.setString(6, image);
            st.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public int sumAmountProductOfCart() {
        String sql = "select COUNT( AccountID) from Cart";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
        }
        return 0;
    }

    public List<Cart> getIdPofCart() {
        String sql = "select * from Cart";
        try {
            List<Cart> list = new ArrayList<>();
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Cart(rs.getInt(1), rs.getInt(2), rs.getInt(3),
                         rs.getDouble(4), rs.getString(5), rs.getString(6)));
            }
            return list;
        } catch (SQLException e) {
        }
        return null;
    }

    public void DeleteCart(int idP) {
        String sql = "DELETE FROM Cart WHERE ProductID = ?;";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, idP);
            st.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public void UpdateProductOfCart(int idP, int amount) {
        String sql = "UPDATE cart SET Amount = ? WHERE ProductID = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setInt(1, amount); // Gán số lượng
            stmt.setInt(2, idP); // Gán ID sản phẩm
            stmt.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public int GetAmountEachPro(int idP) {
        String sql = "SELECT amount FROM cart WHERE ProductID = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setInt(1, idP); // Gán số lượng
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                return rs.getInt("Amount");
            }
        } catch (SQLException e) {
        }
        return 1;
    }

   public double GetSumofPrice() {
    String sql = "SELECT SUM(Price * Amount) AS totalPrice FROM Cart;";
    try {
        PreparedStatement st = connection.prepareStatement(sql);
        ResultSet rs = st.executeQuery();
        
        if (rs.next()) { // Check if there's data
            return rs.getDouble("totalPrice");
        }
        
    } catch (SQLException e) {
        e.printStackTrace(); // Print error for debugging
    }
    return 0; // Return 0 if no result
   }
   // 1 la UserName
   public void InsertOrder(String name ,double total,String status){
       String sql ="INSERT INTO Orders ([user], TotalMoney, status) VALUES (?, ?, ?)";
       try {
           PreparedStatement st = connection.prepareStatement(sql);
           st.setString(1, name);
           st.setDouble(2, total);
           st.setString(3, status);
           st.executeUpdate();
       } catch (SQLException e) {
       }
   }
   public void DeleteAfterOrder(){
       String sql = "Delete from Cart";
       try {
           PreparedStatement st = connection.prepareStatement(sql);
            st.executeUpdate();
       } catch (SQLException e) {
       }
       
   }
   public List<Order> listAllOrder(){
       String sql="Select* from Orders";
       try {
           List<Order> list = new ArrayList<>();
           PreparedStatement st = connection.prepareStatement(sql);
           ResultSet rs = st.executeQuery();
           while(rs.next()){
               list.add(new Order(rs.getInt(1), rs.getString(2), rs.getDouble(3),
                       rs.getDate(4),rs.getTime(4), rs.getString(5)));
           }
           return list;
       } catch (Exception e) {
       }
       return null;
   }

    public static void main(String[] args) {
        ProductDAO p = new ProductDAO();
        List<Product> list = p.getAllProductByName("e");
        for (Product o : list) {
            System.out.println(o);
        }
    }
}
