<?php 
defined('BASEPATH') OR exit('No direct script access allowed');
/*
 * We load common helpers && language
 * All contonllers files should extends from this file
 * Still may need load database
 */
class Basicstart extends CI_Contorller{
  pubilc function __construct(){
  	/*
  	 * in php: in order to run a parent construct within the child constructor is required 
  	 */
  	parent::__construct();

  	$this->load->helper('form');	
  	$this->load->helper('url');	
  	$this->load->helper('security');	
  	$this->load->helper('language');
    
  	/*
  	 * load language file
  	 * consider as the notice quotes in chinese
  	 * deflault language was replaced in chinese from config/config.php
  	 * or adjust config/autoload.php to autoload lang files
  	 * $this->lang->load('ch_admin','chinese');
  	 * there are a lot of files in chinese that you should load on
  	 */ 

  	$this->lang->load(array('ch_admin', 'ch_error'));
  }
}
