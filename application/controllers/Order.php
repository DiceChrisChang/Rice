<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Order extends CI_Controller {

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
		echo $getClassName;
		
		*/
		/*
			使用 $content 代表主页 body 文件
			创建一个自己的类
		*/ 
		//$content = index.php;

		// head
		$this->load->view('head.php');
		// body
		$this->load->view('navbar.php');
		//需要为侧手风琴菜单
        $this->load->view('Order/sidebar.php');
        $this->load->view('path_navigation.php');
        $this->load->view('Order/operate.php');
      
		
		
            $this->load->database();
		    // 装载数据库操作类
		    // var_dump($this->db);
		    // 装载成功 默认属性名是db
            // $row = $this->db->query("SELECT * FROM menu");
			


            $per_page = 7;

			$this->load->library('pagination');
			$this->load->helper('url');

		    $config['base_url'] = site_url('order/index');
			$config['total_rows'] = 28;
			$config['per_page'] = $per_page;

			$this->pagination->initialize($config);

			$offset = intval ($this->uri->segment(3));

			$data['pagelink'] = $this->pagination->create_links();

			$sql = 'SELECT * FROM orderlist LIMIT '.$offset.', '.$per_page.' ';

            $role = $this->db->query($sql);
			$data['role'] = $role->result_array();
		    //var_dump($data['product_list']);
	        $this->load->view('Order/table_data.php',$data);
	 
        $this->load->view('Inventory/page.php',$data);
		$this->load->view('foot.php');
		// modal
		$this->load->view('modal.php');
		// tail
		$this->load->view('jquery_tail.php');
		// js
		$this->load->view('login.js');

	}

}