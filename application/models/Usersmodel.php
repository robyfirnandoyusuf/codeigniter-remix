<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

use \Illuminate\Database\Eloquent\Model as Eloquent;

class Usersmodel extends Eloquent {
    protected $table = "users";
}