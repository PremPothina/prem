//using System;
//using System.Data.SqlClient;
//using System.Web.UI.WebControls;

//public partial class LOGIN_PAGE : System.Web.UI.Page
//{
//    // Connection string for connecting to SQL Server
//    string connectionString = "Data Source=DESKTOP-Q2IM7O2;Initial Catalog=login_signup_details;Integrated Security=True";
//    protected void Page_Load(object sender, EventArgs e)
//    {
//        if (!IsPostBack)
//        {
//            // Do something when the page loads for the first time
//        }
//    }



//    protected void btn_login_Click(object sender, EventArgs e)
//    {
//        string email = txtEmail.Text;
//        string password = txtPassword.Text;

//        try
//        {
//            using (SqlConnection connection = new SqlConnection(connectionString))
//            {
//                connection.Open();
//                string query = "SELECT COUNT(*) FROM tbl_Login WHERE Email = @Email AND Password = @Password";
//                SqlCommand command = new SqlCommand(query, connection);
//                command.Parameters.AddWithValue("@Email", email);
//                command.Parameters.AddWithValue("@Password", password);
//                int count = (int)command.ExecuteScalar();

//                if (count > 0)
//                {
//                    // Login successful
//                    Response.Redirect("~/Products_page.aspx");

//                }

//                else
//                {
//                    // Login failed
//                    Response.Write("Invalid email or password");
//                }
//            }
//        }
//        catch (Exception ex)
//        {
//            Response.Write("Error during login: " + ex.Message);
//        }
//    }

//    protected void btn_signup_Click(object sender, EventArgs e)
//    {
//        string name = txtName.Text;
//        string phoneNumber = txtPhoneNumber.Text;
//        string address = txtAddress.Text;
//        string email = txtSignupEmail.Text;
//        string password = txtSignupPassword.Text;

//        try
//        {
//            using (SqlConnection connection = new SqlConnection(connectionString))
//            {
//                connection.Open();
//                SqlCommand disableCheckConstraintCommand = new SqlCommand("ALTER TABLE tbl_Login NOCHECK CONSTRAINT CK_tbl_Login_Phone_number", connection);
//                disableCheckConstraintCommand.ExecuteNonQuery();

//                string query = "INSERT INTO tbl_Login (Name, Phone_Number, Address, Email, [Password], Confirm_Password) VALUES (@Name, @Phone_Number, @Address, @Email, @Password, @Confirm_Password)";
//                SqlCommand command = new SqlCommand(query, connection);
//                command.Parameters.AddWithValue("@Name", name);
//                command.Parameters.AddWithValue("@Phone_Number", phoneNumber);
//                command.Parameters.AddWithValue("@Address", address);
//                command.Parameters.AddWithValue("@Email", email);
//                command.Parameters.AddWithValue("@Password", password);
//                command.Parameters.AddWithValue("@Confirm_Password", password);
//                int rowsAffected = command.ExecuteNonQuery();

//                // Re-enable the check constraint
//                SqlCommand enableCheckConstraintCommand = new SqlCommand("ALTER TABLE tbl_Login CHECK CONSTRAINT CK_tbl_Login_Phone_number", connection);
//                enableCheckConstraintCommand.ExecuteNonQuery();

//                if (rowsAffected > 0)
//                {
//                    // Signup successful
//                    Response.Redirect("~/LOGIN_PAGE.aspx");
//                }
//                else
//                {
//                    // Signup failed
//                    Response.Write("Failed to create account. No rows affected.");
//                }
//            }
//        }
//        catch (Exception ex)
//        {
//            Response.Write("Error during signup: " + ex.Message);
//        }

//    }

//}
using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class LOGIN_PAGE : System.Web.UI.Page
{
    string connectionString = "Data Source=DESKTOP-Q2IM7O2;Initial Catalog=login_signup_details;Integrated Security=True";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // Do something when the page loads for the first time
        }
    }

    protected void btn_login_Click(object sender, EventArgs e)
    {
        string email = txtEmail.Text;
        string password = txtPassword.Text;

        try
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand command = new SqlCommand("sp_Login", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@Email", email);
                command.Parameters.AddWithValue("@Password", password);
                int count = (int)command.ExecuteScalar();

                if (count > 0)
                {
                    // Login successful
                    Response.Redirect("~/Products_page.aspx");
                }
                else
                {
                    // Login failed
                    Response.Write("Invalid email or password");
                }
            }
        }
        catch (Exception ex)
        {
            Response.Write("Error during login: " + ex.Message);
        }
    }

    protected void btn_signup_Click(object sender, EventArgs e)
    {
        string name = txtName.Text;
        string phoneNumber = txtPhoneNumber.Text;
        string address = txtAddress.Text;
        string email = txtSignupEmail.Text;
        string password = txtSignupPassword.Text;
        string confirmPassword = txtConfirmPassword.Text; // New Confirm Password field

        try
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                SqlCommand command = new SqlCommand("sp_Signup", connection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@Name", name);
                command.Parameters.AddWithValue("@PhoneNumber", phoneNumber);
                command.Parameters.AddWithValue("@Address", address);
                command.Parameters.AddWithValue("@Email", email);
                command.Parameters.AddWithValue("@Password", password);
                command.Parameters.AddWithValue("@Confirm_Password", confirmPassword); // Add Confirm_Password parameter

                SqlParameter returnParameter = command.Parameters.Add("@ReturnVal", SqlDbType.Int);
                returnParameter.Direction = ParameterDirection.ReturnValue;

                command.ExecuteNonQuery();

                int returnVal = (int)returnParameter.Value;
                if (returnVal == 0)
                {
                    // Signup successful
                    Response.Redirect("~/LOGIN_PAGE.aspx");
                }
                else if (returnVal == 1)
                {
                    // Passwords do not match
                    Response.Write("Passwords do not match");
                }
                else
                {
                    // Signup failed
                    Response.Write("Failed to create account.");
                }
            }
        }
        catch (Exception ex)
        {
            Response.Write("Error during signup: " + ex.Message);
        }
    }

}
