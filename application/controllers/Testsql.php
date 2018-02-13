<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Testsql extends CI_Controller {

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


        // $this->load->helper(array('form', 'url'));
        // $this->load->library('form_validation');


        // // 用户账号输入规则大于等于五小于等于三十
        // $this->form_validation->set_rules('username', 'Username', 'trim|required|min_length[5]|max_length[30]');

        // $this->form_validation->set_rules('password', 'Password', 'required',
        //     array('required' => 'You must provide a %s.')
        // );


        // if ($this->form_validation->run() == FALSE)
        // {
        // 	$data['alertMessage'] = null;
               $this->load->view('Manager/backup.php');
        // }
        // else
        // {

            $this->load->database();
		    // 装载数据库操作类
		    // var_dump($this->db);
		    // 装载成功 默认属性名是db
        	// 表单获取的 账号密码数据
        	$username = $this->input->post('username');
        	$password = $this->input->post('password');
            //var_dump($username,$password);

        	$log = $this->db->query('SELECT
        	`user`.id,	 
			`user`.account,
			`user`.`password`,
			`user`.`name`
			FROM
			`user`

			WHERE account ="{$username}"

			');

			// 2018年2月12日15:54:20
			$result = $log->result_array();

			//////////////////////// ADD 2018年2月12日15:53:12
            var_dump($result);
			//////////////////////// ADD
        // }
    }

 }