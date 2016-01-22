<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class User_model extends CI_Model 
{
	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	public function register_user()
	{
		$username = $this->input->post('Username');
		$dataUser=array(
		'Username'=>$username,
		'Password'=>md5($this->input->post('Password')),
		);
		$this->db->insert('users',$dataUser);
		//get newly created user id
		$queryId = $this->getCreatedUserId($username);
		foreach ($queryId as $row)
		{
		   $userId = $row->Id;
		}

		$dataFac=array(
		'Id'=>$userId,
		'Background'=>$this->input->post('PersonalInfo'),
		'Fname'=>$this->input->post('Fname'),
		'Mname'=>$this->input->post('Mname'),
		'Lname'=>$this->input->post('Lname'),
		);
		$this->db->insert('faculty',$dataFac);
		return true;
	}

	function getCreatedUserId($uname)
	{
		$this->db->select('Id'); 
	    $this->db->from('users');   
	    $this->db->where('Username', $uname);
	    return $this->db->get()->result();
	}

	function login($Username,$Password)
	{
		$this->db->where("Username",$Username);
		$this->db->where("Password",md5($Password));
		$query=$this->db->get("users");

		if($query->num_rows()>0)
		{
			$row=$query->row();
			
			$userdata = array(
			'Id'  => $row->id,
			'Username'    => $row->Username,
			);
			$this->session->set_userdata($userdata);
			return true;
		}
		
		return false;
	}
}