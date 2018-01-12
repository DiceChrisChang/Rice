<!-- 登录 php -->
<?php

class Login extends CI_Controller {
	public function index(){
		/*
		*system/core/Loader.php
		*$this->load
		*自动实例化load
		*/
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
		$config['global_xss_filtering'] = TRUE;
		echo $this->input->post('account',TRUE);
		echo $this->input->post('password',TRUE);
		//问题在哪
	}
	public function show(){
		var_dump($_SERVER);
	}
	
}
