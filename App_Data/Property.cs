using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CMS_Property
/// </summary>
public class Property
{
	public Property()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    private string _user_id;

    public string user_id
    {
        get { return _user_id; }
        set { _user_id = value; }
    }

  
    private string _password;

    public string Password
    {
        get { return _password; }
        set { _password = value; }
    }
  /*  private string _Email_Id;

    public string Email_Id
    {
        get { return _Email_Id; }
        set { _Email_Id = value; }
    }
    private string _P_no;

    public string P_no
    {
        get { return _P_no; }
        set { _P_no = value; }
    }*/

}