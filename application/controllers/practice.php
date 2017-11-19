<?php
defined('BASEPATH') OR exit('你的操作不符合规则！');

class Practice extends CI_Controller {

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
	public function createArray(){
		$dataArray = array(
		             array('name' =>'Kim','account'=>'0901','age'=>'43' ),
		             array('name' =>'King','account'=>'0902','age'=>'23' ),
		             array('name' =>'Cam','account'=>'0903','age'=>'53' ),
		             array('name' =>'Cannon','account'=>'0904','age'=>'43' ),
		             array('name' =>'Bob','account'=>'0905','age'=>'30' ),
		             array('name' =>'Cashy','account'=>'0906','age'=>'28' ),
		);
		$data['$dataArray'] = $list  ;

	}
	public function loadArray()
	{

		$this->load->view('practice/data.php');
	}
}