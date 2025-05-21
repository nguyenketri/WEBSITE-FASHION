/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controllerCart;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Cart;
import view.ProductDAO;

/**
 *
 * @author Admin
 */
@WebServlet(name="DeleteCart", urlPatterns={"/deleteCart"})
public class DeleteCart extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String idP = request.getParameter("idP");
        ProductDAO dao = new ProductDAO();
    
      
        try { 
    int idPro = Integer.parseInt(idP);

    // Xóa sản phẩm trong DB
    dao.DeleteCart(idPro);

    // Load lại danh sách giỏ hàng mới
    List<Cart> list = dao.getIdPofCart(); 

    // Cập nhật danh sách mới vào request
    request.setAttribute("listCart", list);

    // Chuyển hướng về trang giỏ hàng
       double sumPrice = dao.GetSumofPrice();
        double vat = 10;
          double total = sumPrice - vat;
            request.setAttribute("sumPrice", sumPrice);
         if(sumPrice==0){
            request.setAttribute("total", 0);
        }else{
            request.setAttribute("total", total);
        }
    request.getRequestDispatcher("Cart.jsp").forward(request, response);
} catch (Exception e) {
    e.printStackTrace();
}
      
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
