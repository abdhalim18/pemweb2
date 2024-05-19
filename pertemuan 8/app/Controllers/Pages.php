<?php

namespace App\Controllers;

class Pages extends BaseController
{
    public function home()
    {
        $data = [
            'title' => 'Home | Unipdu Press' , 
            'tes' => ['satu' , 'dua' , 'tiga']
        ];

        return view('pages/home', $data);

    }
    public function about()
    {
        $data = [
            'title' => 'Tentang | Unipdu Press'
        ];
    
        echo view('pages/about', $data);
    }

    public function contact()
    {
        $data = [
            'title' => 'Contact | Unipdu Press',
            'alamat' => [
                [
                    'tipe' => 'Rumah', 
                    'alamat' => 'Jl. Jamrud 2 no. 19 PPS, Manyar, Gresik',
                    'kota' => 'Gresik'
                ],
                ['tipe' => 'Kantor',
                'alamat' => 'Jl. Jamrud 2 no. 19 PPS, Manyar, Gresik',
                'kota' => 'Gresik'
                ]
            ]
        ];
        return view('pages/contact', $data);
    }
}
