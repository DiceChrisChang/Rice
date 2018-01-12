<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Testecharts extends CI_Controller {

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
		???ʹ? $getClassName ??? Fristenter
		$getClassName = get_class($this);
		echo $getClassName;
		
		*/
		/*
			ʹ? $content ?????ҳ body ???
			????һ????????
		*/ 
		//$content = index.php;

		// head
		$this->load->view('head.php');
		// body
        $this->load->view("test/echarts");
		// tail
		$this->load->view('jquery_tail.php');
		// js
	    // $this->load->view('echarts.js');
	}

}