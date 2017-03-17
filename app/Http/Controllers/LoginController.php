<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class LoginController extends Controller {

    public function getLogin() {

        return \View::make('login/login');
    }

    public function postLogin() {
        $rules = array(
            'username' => 'required',
            'password' => 'required'
        );

        $validator = \Validator::make(\Input::all(), $rules);

        if ($validator->fails()) {
            
        } else {
            $userdata = array(
                'username' => \Input::get('username'),
                'password' => \Input::get('password')
            );

            if (\Illuminate\Support\Facades\Auth::attempt($userdata)) {
                $data = \App\AppAdminModel::find(\Input::get('username'));
                \Session::put('image',$data->image);
                \Session::put('username',$data->username);
                return redirect()->intended('admin');
            } else {
                echo "<script>alert('Password Masih Salah')</script>";
            }
        }

        return redirect()->guest('login/login');
    }

}
