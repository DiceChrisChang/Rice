<!-- 登录 php -->
<?php

class Login extends CI_Controller {

    public function index()
    {
        $this->load->helper(array('form', 'url'));

        $this->load->library('form_validation');

        if ($this->form_validation->run() == FALSE)
        {
            $this->load->view('firstenter');
        }
        else
        {
            $this->load->view('message');
        }
    }
}
