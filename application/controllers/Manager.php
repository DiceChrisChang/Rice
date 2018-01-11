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
        	// 表单获取的 账号密码数据
        	$username = $this->input->post('username');
        	$password = $this->input->post('password');

        	$log = $this->db->query('SELECT
			`user`.account,
			`user`.`password`,
			`user`.`name`
			FROM
			`user`
			');
			$data['log'] = $log->result_array();
			foreach ($data['log'] as $value) {
				if ($username == $value['account'] ) {

					if($password == $value['password']){
						$data['logname'] = $value['name'];
						$GLOBALS['logname'] = $data['logname'];
						echo $GLOBALS['logname'] ;



            // head
		    $this->load->view('head.php');
			// body
            ////////////////////////////////////////////// navbar 获取动态数据
            $query = $this->db->query("SELECT * FROM menu WHERE menu.levels = 1");
            // var_dump($query);
            // $query 返回值是对象
            
            $navbarFirst =  $query->row()->name;
            // $data 准备向view传入参数
            $data['navbarFirst'] = $navbarFirst;
            ////////////////////////////////////////////// navbar close
            $this->load->view('Manager/navbar.php',$data);
            ////////////////////////////////////// sidebar 系统管理 动态数据导入
            $sidebar = $this->db->query("SELECT * FROM menu WHERE levels = 2");
			$data['side0'] = $sidebar->row_array(0);
			$data['side1'] = $sidebar->row_array(1);
			$data['side2'] = $sidebar->row_array(2);
			$data['side3'] = $sidebar->row_array(3);
			$data['side4'] = $sidebar->row_array(4);

			$mgr = $this->db->query("SELECT * FROM menu WHERE levels = 3 and pcodes = '[0],[system],[mgr],'");
			$data['mgr'] = $mgr->result_array();

			$role = $this->db->query("SELECT * FROM menu WHERE levels = 3 and pcode = 'role'");
			$data['role'] = $role->result_array();

            $menu = $this->db->query("SELECT * FROM menu WHERE levels = 3 and pcode = 'menu'");
			$data['menu'] = $menu->result_array();

			$log = $this->db->query("SELECT * FROM menu WHERE levels = 3 and pcode = 'log'");
			$data['log'] = $log->result_array();

			$dept = $this->db->query("SELECT * FROM menu WHERE levels = 3 and pcode = 'dept'");
			$data['dept'] = $dept->result_array();
			//////////////////////////////////////////////////// sidebar close

            // 侧面手风琴菜单栏
            $this->load->view('Manager/sidebar.php',$data);


            /////////////////////////////////////////////////// operate 动态数据
            // role 查询操作的下拉选择单
            $role_tips = $this->db->query('SELECT
			role.tips
			FROM
			role');
			$data['role_tips'] = $role_tips->result_array();

			$dept_fullname = $this->db->query('SELECT
			dept.fullname
			FROM
			dept ');
			$data['dept_fullname'] = $dept_fullname->result_array();
			/////////////////////////////////////////////////////// operate close
            $this->load->view('Manager/operate.php',$data);


            ////////////////////////////////////////////////// table_data 动态数据
            $user_list = $this->db->query('SELECT
			`user`.id,
			`user`.`name`,
			`user`.email,
			dept.fullname,
			`user`.changed_time,
			role.tips
            FROM
            `user`
            INNER JOIN role ON role.id = `user`.roleid
            INNER JOIN dept ON dept.id = `user`.deptid');
			$data['user_list'] = $user_list->result_array();
			// var_dump($data['user_list']);
			//////////////////////////////////////////////////////// operate close
            $this->load->view('Manager/table_data.php',$data);

            $this->load->view('Manager/page.php');
            $this->load->view('foot.php');
		    // modal
		    $this->load->view('modal.php');
		    // tail
		    $this->load->view('jquery_tail.php');
		    // js
		    $this->load->view('login.js');
		    return;



					} 
					else{
					$data['alertMessage'] = "密码错误";
					$this->load->view('Manager/backstage.php',$data);
					return;
					}
					
				}
				else{
					$data['alertMessage'] = "不存在此账号";
					$this->load->view('Manager/backstage.php',$data);
					return;
				}
				// echo $value['account'];
			}










  
        }
    }



    public function system_load(){
            $this->load->database();
		    // 装载数据库操作类
		    // var_dump($this->db);
		    // 装载成功 默认属性名是db
            // head
		    $this->load->view('head.php');
			// body
            ////////////////////////////////////////////// navbar 获取动态数据
            $query = $this->db->query("SELECT * FROM menu WHERE menu.levels = 1");
            // var_dump($query);
            // $query 返回值是对象
            
            $navbarFirst =  $query->row()->name;
            // $data 准备向view传入参数
            $data['navbarFirst'] = $navbarFirst;
            ////////////////////////////////////////////// navbar close
            $this->load->view('Reseller/navbar.php',$data);
            ////////////////////////////////////// sidebar 系统管理 动态数据导入
            $sidebar = $this->db->query("SELECT * FROM menu WHERE levels = 2");
			$data['side0'] = $sidebar->row_array(0);
			$data['side1'] = $sidebar->row_array(1);
			$data['side2'] = $sidebar->row_array(2);
			$data['side3'] = $sidebar->row_array(3);
			$data['side4'] = $sidebar->row_array(4);

			$mgr = $this->db->query("SELECT * FROM menu WHERE levels = 3 and pcodes = '[0],[system],[mgr],'");
			$data['mgr'] = $mgr->result_array();

			$role = $this->db->query("SELECT * FROM menu WHERE levels = 3 and pcode = 'role'");
			$data['role'] = $role->result_array();

            $menu = $this->db->query("SELECT * FROM menu WHERE levels = 3 and pcode = 'menu'");
			$data['menu'] = $menu->result_array();

			$log = $this->db->query("SELECT * FROM menu WHERE levels = 3 and pcode = 'log'");
			$data['log'] = $log->result_array();

			$dept = $this->db->query("SELECT * FROM menu WHERE levels = 3 and pcode = 'dept'");
			$data['dept'] = $dept->result_array();
			//////////////////////////////////////////////////// sidebar close

            // 侧面手风琴菜单栏
            $this->load->view('Manager/sidebar.php',$data);


            /////////////////////////////////////////////////// operate 动态数据
            // role 查询操作的下拉选择单
            $role_tips = $this->db->query('SELECT
			role.tips
			FROM
			role');
			$data['role_tips'] = $role_tips->result_array();

			$dept_fullname = $this->db->query('SELECT
			dept.fullname
			FROM
			dept ');
			$data['dept_fullname'] = $dept_fullname->result_array();
			/////////////////////////////////////////////////////// operate close
            $this->load->view('Manager/operate.php',$data);


            ////////////////////////////////////////////////// table_data 动态数据
            $user_list = $this->db->query('SELECT
			`user`.id,
			`user`.`name`,
			`user`.email,
			dept.fullname,
			`user`.changed_time,
			role.tips
            FROM
            `user`
            INNER JOIN role ON role.id = `user`.roleid
            INNER JOIN dept ON dept.id = `user`.deptid');
			$data['user_list'] = $user_list->result_array();
			// var_dump($data['user_list']);
			//////////////////////////////////////////////////////// operate close
            $this->load->view('Manager/table_data.php',$data);

            $this->load->view('Manager/page.php');
            $this->load->view('foot.php');
		    // modal
		    $this->load->view('modal.php');
		    // tail
		    $this->load->view('jquery_tail.php');
		    // js
		    $this->load->view('login.js');
    }    

    public function reseller_load(){


            $this->load->database();
		    // 装载数据库操作类
		    // var_dump($this->db);
		    // 装载成功 默认属性名是db

            // head
		    $this->load->view('head.php');
			// body
            ////////////////////////////////////////////// navbar 获取动态数据
            $query = $this->db->query("SELECT * FROM menu WHERE menu.levels = 1");
            // var_dump($query);
            // $query 返回值是对象
            
            $navbarFirst =  $query->row()->name;
            // $data 准备向view传入参数
            $data['navbarFirst'] = $navbarFirst;
            ////////////////////////////////////////////// navbar close

            $this->load->view('Reseller/navbar.php',$data);


            // 侧面手风琴菜单栏
            $this->load->view('Reseller/sidebar.php',$data);


            /////////////////////////////////////////////////// operate 动态数据
            // role 查询操作的下拉选择单
            $role_tips = $this->db->query('SELECT
			role.tips
			FROM
			role');
			$data['role_tips'] = $role_tips->result_array();

			$dept_fullname = $this->db->query('SELECT
			dept.fullname
			FROM
			dept ');
			$data['dept_fullname'] = $dept_fullname->result_array();
			/////////////////////////////////////////////////////// operate close
            $this->load->view('Manager/operate.php',$data);


            ////////////////////////////////////////////////// table_data 动态数据
            $reseller_list = $this->db->query('SELECT
			reseller.id,
			reseller.`name`,
			reseller.area,
			reseller.director,
			reseller.changed_time,
			reseller.director_number
			FROM
			reseller');
			$data['reseller_list'] = $reseller_list->result_array();
			// var_dump($data['reseller_list']);
			//////////////////////////////////////////////////////// operate close
            $this->load->view('Reseller/table_data.php',$data);

            $this->load->view('Reseller/page.php');
            $this->load->view('foot.php');
		    // modal
		    $this->load->view('modal.php');
		    // tail
		    $this->load->view('jquery_tail.php');
		    // js
		    $this->load->view('login.js');

		    // 分页
			// $this->load->library('pagination');
			
			// $config['base_url'] = 'http://localhost/rice/index.php/manager/reseller_load';
			// $config['total_rows'] = 22;
			// $config['per_page'] = 10;
			
			// $this->pagination->initialize($config);
			
			// echo $this->pagination->create_links();

    }  
    public function address_load(){

            $this->load->database();
		    // 装载数据库操作类
		    // var_dump($this->db);
		    // 装载成功 默认属性名是db

            // head
		    $this->load->view('head.php');
			// body
            ////////////////////////////////////////////// navbar 获取动态数据
            $query = $this->db->query("SELECT * FROM menu WHERE menu.levels = 1");
            // var_dump($query);
            // $query 返回值是对象
            
            $navbarFirst =  $query->row()->name;
            // $data 准备向view传入参数
            $data['navbarFirst'] = $navbarFirst;
            ////////////////////////////////////////////// navbar close

            $this->load->view('Reseller/navbar.php',$data);


            // 侧面手风琴菜单栏
            $this->load->view('Reseller/sidebar.php',$data);


            /////////////////////////////////////////////////// operate 动态数据
            // role 查询操作的下拉选择单
            $role_tips = $this->db->query('SELECT
			role.tips
			FROM
			role');
			$data['role_tips'] = $role_tips->result_array();

			$dept_fullname = $this->db->query('SELECT
			dept.fullname
			FROM
			dept ');
			$data['dept_fullname'] = $dept_fullname->result_array();
			/////////////////////////////////////////////////////// operate close
            $this->load->view('Manager/operate.php',$data);


            ////////////////////////////////////////////////// table_data 动态数据
            $address_list = $this->db->query('SELECT
            address.contacter,
            address.contact_number,
            address.address,
            address.changed_time,
            reseller.`name`,
            address.id
            FROM
            reseller
            INNER JOIN address ON address.id = reseller.address_id');
			$data['address_list'] = $address_list->result_array();
			// var_dump($data['address_list']);
			//////////////////////////////////////////////////////// operate close
            $this->load->view('Address/table_data.php',$data);

            $this->load->view('Reseller/page.php');
            $this->load->view('foot.php');
		    // modal
		    $this->load->view('modal.php');
		    // tail
		    $this->load->view('jquery_tail.php');
		    // js
		    $this->load->view('login.js');

		    // 分页
			// $this->load->library('pagination');
			
			// $config['base_url'] = 'http://localhost/rice/index.php/manager/reseller_load';
			// $config['total_rows'] = 22;
			// $config['per_page'] = 10;
			
			// $this->pagination->initialize($config);
			
			// echo $this->pagination->create_links();

    } 

}