package img;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class AddImage
 */
@MultipartConfig
@WebServlet("/AddImage")
public class AddImage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddImage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		System.out.println("In do post method of add image servlet");
		Part file=request.getPart("image");
		
		String imageFileName=file.getSubmittedFileName();     //get selected image file name
		System.out.println("Selected Image File Name : "+imageFileName);
		
		String uploadPath="C:/Users/Dell 11/eclipse-workspace/PROJECTBLOOD/WebContent/images/"+imageFileName; //upload path where we have to upload our actual image
		System.out.println("Upload Path : "+uploadPath);
		
		//Uploading our selected images into image folder
		try
		{
		
		FileOutputStream fos=new FileOutputStream(uploadPath);
		InputStream is=file.getInputStream();
		
		byte[] data=new byte[is.available()];
		is.read(data);
		fos.write(data);
		fos.close();
		
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		//getting database connection(jdbc code)
		
		Connection connection=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank","root","sweta@12R");
			
			PreparedStatement stmt;
			String query="insert into image(imageFileName) values(?)";
			stmt=connection.prepareStatement(query);
			stmt.setString(1, imageFileName);
			int row=stmt.executeUpdate();  //it returns no of rows affected
			
			if(row>0)
			{
				System.out.println("Image added into database successfully.");
			}
			else
			{
				System.out.println("Failed to upload image.");
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
	}

}
