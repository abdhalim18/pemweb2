<?php
namespace App\Controllers;

class Page extends BaseController
{
    public function about()
    {
        echo "about page";
    }
    public function contact()
    {
        echo "contact page";
    }
    public function faqs()
    {
        echo "faqs page";
    }
    public function tos()
    {
        echo "Term of service";
    }
    public function biodata()
    {
        echo "Nama : M. Abdul Halim";
        echo "<br> NIM : 4122035";
        echo "<br> Alamat : Gresik";
    }


}