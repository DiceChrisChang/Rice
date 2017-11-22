<!-- 登录 php -->
<?php

class Login extends CI_Controller {
	public function index(){
		$this->load->vars('title','index页面');
		$this->load->view('firstenter/head.php');
	}
	public function out(){
		// var_dump 相当于输出 function out
		var_dump($this->uri->segment(2));
		//echo $this->uri->segment(2);
	}
	public function helpurl(){
		$this->load->helper('url');
		echo site_url('login/helpurl');
	}
	public function collect(){
		$this->load->view('restart/modal.php');
		echo $this->input->post('account');
		echo $this->input->post('password');
	}
}
