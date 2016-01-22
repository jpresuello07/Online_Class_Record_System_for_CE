<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class User extends CI_Controller 
{
	public function __construct()
	{
		parent::__construct();
		$this->load->library('form_validation');
		$this->load->library('session');
		$this->load->model('user_model');
		$this->load->helper('url');
	}

	public function index()
	{
		if(($this->session->userdata('user_id')!=""))
		{
			redirect(site_url('home'));
		}
		else
		{
			$this->load->view("pages/register_view");
		}
	}

	public function login()
	{
		$rules = array(array('field'=>'login_username','label'=>'Username','rules'=>'required'),
		array('field'=>'login_password','label'=>'Password','rules'=>'required'));
		$this->form_validation->set_rules($rules);
		if($this->form_validation->run() == FALSE)
		{
			$this->index();
		}
		else
		{
			$auth=$this->user_model->login($this->input->post('login_username'),$this->input->post('login_password'));
		}

		if($auth)
		{
			redirect(site_url('home'));
		}
		else
		{
			$this->index();
		}
	}

	public function register()
	{
		$this->load->view('register_view');//loads the register_view.php file in views folder
	}

	public function do_register()
	{
		$rules = array(
			array('field'=>'Username','label'=>'User Name','rules'=>'trim|required|min_length[4]|max_length[12]required'),
			array('field'=>'Password','label'=>'Password','rules'=>'trim|required|min_length[6]required'),
			array('field'=>'PersonalInfo','label'=>'Personal Info','rules'=>'required'),
			array('field'=>'Fname','label'=>'First Name','rules'=>'required'),
			array('field'=>'Mname','label'=>'Middle Name','rules'=>'required'),
			array('field'=>'Lname','label'=>'Last Name','rules'=>'required'),
		);
		$this->form_validation->set_rules($rules);
		if($this->form_validation->run() == FALSE)
		{
			$this->load->view('pages/register_view');
		}
		else
		{
			$this->user_model->register_user();
			$this->load->view('pages/success');
		}
	}

	public function logout()
	{
		$this->session->sess_destroy();
		redirect(site_url());
	}
}