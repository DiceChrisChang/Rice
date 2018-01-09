<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Manager extends CI_Controller {

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

        $this->load->helper(array('form', 'url'));
        $this->load->library('form_validation');


        // 用户账号输入规则大于等于五小于等于二十
        $this->form_validation->set_rules('username', 'Username', 'trim|required|min_length[5]|max_length[20]');

        $this->form_validation->set_rules('password', 'Password', 'required',
            array('required' => 'You must provide a %s.')
        );


        if ($this->form_validation->run() == FALSE)
        {
            $this->load->view('Manager/backstage.php');
        }
        else
        {

            $this->load->database();
		    // 装载数据库操作类
		    // var_dump($this->db);
		    // 装载成功 默认属性名是db
            $query = $this->db->query("SELECT * FROM menu WHERE menu.levels = 1");
            // var_dump($query);
            // $query 返回值是对象
            
            $navbarFirst =  $query->row()->name;
            // $data 准备向view传入参数
            $data['navbarFirst'] = $navbarFirst;
            // sidebar 数据导入
            $sidebar = $this->db->query("SELECT * FROM menu WHERE menu.levels = 2");
			$data['sideFirst'] = $sidebar->result_array();

			$second = $this->db->query("SELECT * FROM menu WHERE menu.levels = 3");
			$data['second'] = $second->result_array();
            // var_dump($data['second']);
            
            // head
		    $this->load->view('head.php');
			// body
            // $this->load->view('Manager/navbar.php',$data);
            // 侧面手风琴菜单栏
            $this->load->view('Manager/sidebar.php',$data);
            $this->load->view('Manager/operate.php');
            $this->load->view('Manager/table_data.php');
            $this->load->view('Manager/page.php');
            $this->load->view('foot.php');
		    // modal
		    $this->load->view('modal.php');
		    // tail
		    $this->load->view('jquery_tail.php');
		    // js
		    $this->load->view('login.js');





		    
          }


	}

}