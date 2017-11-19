<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Firstenter extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */

	/* index autoload*/
	public function index()
	{
		/*
		考虑使用 $getClassName 替换 Fristenter
		$getClassName = get_class($this);
		echo "$getClassName";
		*/

		// head
		$this->load->view('Firstenter/head.php');
		// body
		$this->load->view('Firstenter/navbar.php');
		$this->load->view('Firstenter/index.php');
		$this->load->view('Firstenter/foot.php');
		// modal
		$this->load->view('Firstenter/modal.php');
		// tail
		$this->load->view('Firstenter/jquery_tail.php');
		// js
		$this->load->view('Firstenter/login.js');
	}
}
