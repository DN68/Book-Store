/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAL;

import Connection.DBcontext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;
import model.Cart;
import model.Category;
import model.Customer;
import model.Orders;
import model.Product;
import model.Shipping;

/**
 *
 * @author DN68
 */
public class DAO {

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from product_HE153629_SE1606";
        try {
            con = new DBcontext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Account> getAllAccount() {
        List<Account> list = new ArrayList<>();
        String query = "select * from Accounts_HE153629_SE1606";
        try {
            con = new DBcontext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    //dem so luong product trong database
    public int getTotalProduct() {
        String query = "select count(*) from product_HE153629_SE1606";
        try {
            con = new DBcontext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String query = "select * from Categories_HE153629_SE1606";
        try {
            con = new DBcontext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getString(1), rs.getString(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getProductbyCate(String cid) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product_HE153629_SE1606\n"
                + "where cat_ID = ?";
        try {
            con = new DBcontext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Product getProductbyID(String id) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product_HE153629_SE1606\n"
                + "where ID = ?";
        try {
            con = new DBcontext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(7),
                        rs.getString(9));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Account getAccountbyID(String cid) {
        List<Account> list = new ArrayList<>();
        String query = "select * from Accounts_HE153629_SE1606\n"
                + "                where CustomerID = ?";
        try {
            con = new DBcontext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Customer getCustomerbyID(String inid) {
        List<Customer> list = new ArrayList<>();
        String query = "select * from Customers_HE153629_SE1606\n"
                + "                where CustomerID = ?";
        try {
            con = new DBcontext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, inid);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Customer(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
                        rs.getString(5), rs.getString(6), rs.getString(7));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Product getProductbyID(int id) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product_HE153629_SE1606\n"
                + "where ID = ?";
        try {
            con = new DBcontext().getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(7),
                        rs.getString(9));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> searchbyName(String txtSearch) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product_HE153629_SE1606\n"
                + "where [name] like ?";
        try {
            con = new DBcontext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1),
                        rs.getString(2),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Account login(String user, String pass) {
        String query = "select * from Accounts_HE153629_SE1606 where [Username]=? and Password= ?";

        try {
            con = new DBcontext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Account checkAccountExist(String user) {
        String query = "select * from Accounts_HE153629_SE1606 where [Username]=?";

        try {
            con = new DBcontext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, user);

            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Account checkPassExist(String pass) {
        String query = "select * from Accounts_HE153629_SE1606 where [Password]=?";

        try {
            con = new DBcontext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, pass);

            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void signup(String user, String pass) {
        String query = "insert into Accounts_HE153629_SE1606\n"
                + "values(?,?,0)";
        try {
            con = new DBcontext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteProduct(String pid) {
        String query = "delete  from product_HE153629_SE1606\n"
                + "where ID=?";
        try {
            con = new DBcontext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, pid);

            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteAccount(String cid) {
        String query = "delete  from Accounts_HE153629_SE1606\n"
                + "where customerID=?";
        try {
            con = new DBcontext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, cid);

            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void addProduct(String id, String name, String category, String image, String price, String quantity,
            String status, String describe) {
        String query = "INSERT [dbo].[product_HE153629_SE1606] \n"
                + "([ID],[name], [cat_ID], [image], [price], [quantity], [status], [describe])\n"
                + "VALUES (?,?,?,?,?,?,?,?)";
        try {
            con = new DBcontext().getConnection();
            ps = con.prepareStatement(query);
            ps.setString(1, id);
            ps.setString(2, name);
            ps.setString(3, category);
            ps.setString(4, image);
            ps.setString(5, price);
            ps.setString(6, quantity);
            ps.setString(7, status);
            ps.setString(8, describe);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void editProduct(String name, String category, String image, String price, String quantity,
            String status, String describe, String pid) {
        String query = "update product_HE153629_SE1606\n"
                + "set [name]=?,\n"
                + "cat_ID=?,\n"
                + "[image] = ?,\n"
                + "price= ?,\n"
                + "quantity=?,\n"
                + "[status]=?,\n"
                + "describe=?\n"
                + "where ID=?";
        try {
            con = new DBcontext().getConnection();
            ps = con.prepareStatement(query);

            ps.setString(1, name);
            ps.setString(2, category);
            ps.setString(3, image);
            ps.setString(4, price);
            ps.setString(5, quantity);
            ps.setString(6, status);
            ps.setString(7, describe);
            ps.setString(8, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void editAccount(String username, String password, int isAdmin, String cid) {
        String query = " update Accounts_HE153629_SE1606\n"
                + "                set [Username]=?,\n"
                + "                Password=?,\n"
                + "                [isAdmin] = ?\n"
                + "				where CustomerID= ?";
        ;
        try {
            con = new DBcontext().getConnection();
            ps = con.prepareStatement(query);

            ps.setString(1, username);
            ps.setString(2, password);
            ps.setInt(3, isAdmin);
            ps.setString(4, cid);

            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void editinformation(Customer cus) {
        String query = " update Customers_HE153629_SE1606\n"
                + "                set [Fullname]=?,\n"
                + "                Email=?,\n"
                + "                [Address] = ?,\n"
                + "Phone=?,\n"
                + "[Username]=?,\n"
                + "                Password=?\n"
                + "				where CustomerID= ?";
        ;
        try {
            con = new DBcontext().getConnection();
            ps = con.prepareStatement(query);

            ps.setString(1, cus.getFullname());
            ps.setString(2, cus.getEmail());
            ps.setString(3, cus.getAddress());
            ps.setString(4, cus.getPhone());
            ps.setString(5, cus.getUsername());
            ps.setString(6, cus.getPassword());
            ps.setInt(7, cus.getCustomerId());
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public int getTotalAccount() {
        String query = "select count(*) from product_HE153629_SE1606";
        try {
            con = new DBcontext().getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public int createReturnid(Shipping shipping) {
        String query = "INSERT INTO [dbo].[Shipping]\n"
                + "           ([name]\n"
                + "           ,[phone]\n"
                + "           ,[address])\n"
                + "     VALUES\n"
                + "           (?,?,?)";
        try {
            con = new DBcontext().getConnection();
            ps = con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, shipping.getName());
            ps.setString(2, shipping.getPhone());
            ps.setString(3, shipping.getAddress());
            ps.executeUpdate();

            ResultSet rs = ps.getGeneratedKeys();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public int createReturnid(Orders order) {
        String query = "INSERT INTO [dbo].[Orders_HE153629_SE1606]\n"
                + "           ([CustomerID]\n"
                + "           \n"
                + "           ,[totalmoney]\n"
                + "           ,[shipping_id])\n"
                + "     VALUES\n"
                + "           (?,?,?)";
        try {
            con = new DBcontext().getConnection();
            ps = con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1, order.getCustomerID());
            ps.setDouble(2, order.getTotalmoney());
            ps.setInt(3, order.getShippingid());
            ps.executeUpdate();

            ResultSet rs = ps.getGeneratedKeys();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public void saveCart(int orderid, Map<Integer, Cart> carts) {
        String query = "INSERT INTO [dbo].[OrderDetails_HE153629_SE1606]\n"
                + "           ([OrderID]\n"
                + "           \n"
                + "           ,[Quantity]\n"
                + "           ,[productName]\n"
                + "           ,[productPrice])\n"
                + "     VALUES\n"
                + "           (?,?,?,?)";
        try {
            con = new DBcontext().getConnection();
            ps = con.prepareStatement(query);
            ps.setInt(1, orderid);
            for (Map.Entry<Integer, Cart> entry : carts.entrySet()) {
                Integer ProductID = entry.getKey();
                Cart cart = entry.getValue();
                ps.setInt(2, cart.getQuantity());
                ps.setString(3, cart.getProduct().getName());
                ps.setDouble(4, cart.getProduct().getPrice());
                ps.executeUpdate();
            }

        } catch (Exception e) {
        }

    }

    public void changepass(String newpass, String oldpass) {
        String query = "UPDATE [dbo].[Accounts_HE153629_SE1606]\n"
                + "   SET \n"
                + "      [Password] = ?\n"
                + "      \n"
                + " WHERE Password=?";
        try {
            con = new DBcontext().getConnection();
            ps = con.prepareStatement(query);

            ps.setString(1, newpass);
            ps.setString(2, oldpass);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public static void main(String[] args) {
        DAO p = new DAO();
        p.getAccountbyID("3");
    }

}
