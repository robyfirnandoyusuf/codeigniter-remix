<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function __construct()
	{
		parent::__construct();

	  $this->load->model('usersmodel');
	}

	public function index() {
  	$users = Usersmodel::all();

    $data['title']    = 'Codeigniter Remix';
    $data['content']  = 'Codeigniter Remix Starter';
    $data['users']    = $users;
    $this->blade->view('welcome_message', $data);
	}
}
