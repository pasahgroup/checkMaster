<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;


class MetanameSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('metanames')->insert([
            [
                'metaname_name' => 'Rooms',
                'metaname_description' =>'Rooms',
                'status' =>'Active',
                'user_id' =>1,
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
            'metaname_name' => 'Dinning Rooms',
            'metaname_description' =>'dinning rooms',
            'status' =>'Active',
            'user_id' =>1,
            'created_at' => now(),
            'updated_at' => now()
        ],
        [
            'metaname_name' => 'Kitchen',
            'metaname_description' =>'Kitchen',
            'status' =>'Active',
            'user_id' =>1,
            'created_at' => now(),
            'updated_at' => now()
        ],
              [
                'metaname_name' => 'Light',
                'metaname_description' =>'light',
                'status' =>'Active',
                'user_id' =>1,
                'created_at' => now(),
                'updated_at' => now()
            ],
              [
                'metaname_name' => 'Swimming Pool',
                'metaname_description' =>'swimming pool',
                'status' =>'Active',
                'user_id' =>1,
                'created_at' => now(),
                'updated_at' => now()
            ],
              [
                'metaname_name' => 'Garden',
                'metaname_description' =>'Garden',
                'status' =>'Active',
                'user_id' =>1,
                'created_at' => now(),
                'updated_at' => now()
            ],
              [
                'metaname_name' => 'Store',
                'metaname_description' =>'Store',
                'status' =>'Active',
                'user_id' =>1,
                'created_at' => now(),
                'updated_at' => now()
            ],
              [
                'metaname_name' => 'Garage',
                'metaname_description' =>'Garage',
                'status' =>'Active',
                'user_id' =>1,
                'created_at' => now(),
                'updated_at' => now()
            ],
              [
                'metaname_name' => 'Fance',
                'metaname_description' =>'Fance',
                'status' =>'Active',
                'user_id' =>1,
                'created_at' => now(),
                'updated_at' => now()
            ]
            ,
              [
                'metaname_name' => 'Entree',
                'metaname_description' =>'Entree',
                'status' =>'Active',
                'user_id' =>1,
                'created_at' => now(),
                'updated_at' => now()
            ]
            ,
              [
                'metaname_name' => 'Bathroom',
                'metaname_description' =>'Bathroom',
                'status' =>'Active',
                'user_id' =>1,
                'created_at' => now(),
                'updated_at' => now()
            ]
            ,
              [
                'metaname_name' => 'Toilet',
                'metaname_description' =>'Toilet',
                'status' =>'Active',
                'user_id' =>1,
                'created_at' => now(),
                'updated_at' => now()
            ],
                [
                'metaname_name' => 'Furniture',
                'metaname_description' =>'Furniture',
                'status' =>'Active',
                'user_id' =>1,
                'created_at' => now(),
                'updated_at' => now()
            ]
              ]);

//metaname datatype table
DB::table('metaname_datatypes')->insert([
    [
        'metaname_id' => '1',
        'metadata_name' =>'Name',
        'datatype' =>'input',
        'datatype_name' =>'asset_name',
        'status' =>'Active',
        'user_id' =>1,
        'created_at' => now(),
        'updated_at' => now()
    ],
    [
        'metaname_id' => '1',
        'metadata_name' =>'Description',
        'datatype' =>'textarea',
        'datatype_name' =>'asset_description',
        'status' =>'Active',
        'user_id' =>1,
        'created_at' => now(),
        'updated_at' => now()
    ],
    [
        'metaname_id' => '2',
        'metadata_name' =>'Name',
        'datatype' =>'input',
        'datatype_name' =>'asset_name',
        'status' =>'Active',
        'user_id' =>1,
        'created_at' => now(),
        'updated_at' => now()
    ],
    [
        'metaname_id' => '2',
        'metadata_name' =>'Description',
        'datatype' =>'textarea',
        'datatype_name' =>'asset_description',
        'status' =>'Active',
        'user_id' =>1,
        'created_at' => now(),
        'updated_at' => now()
    ],
    [
        'metaname_id' => '3',
        'metadata_name' =>'Name',
        'datatype' =>'input',
        'datatype_name' =>'asset_name',
        'status' =>'Active',
        'user_id' =>1,
        'created_at' => now(),
        'updated_at' => now()
    ],
    [
        'metaname_id' => '3',
        'metadata_name' =>'Description',
        'datatype' =>'textarea',
        'datatype_name' =>'asset_description',
        'status' =>'Active',
        'user_id' =>1,
        'created_at' => now(),
        'updated_at' => now()
    ],
    [
        'metaname_id' => '4',
        'metadata_name' =>'Name',
        'datatype' =>'input',
        'datatype_name' =>'asset_name',
        'status' =>'Active',
        'user_id' =>1,
        'created_at' => now(),
        'updated_at' => now()
    ],
    [
        'metaname_id' => '4',
        'metadata_name' =>'Description',
        'datatype' =>'textarea',
        'datatype_name' =>'asset_description',
        'status' =>'Active',
        'user_id' =>1,
        'created_at' => now(),
        'updated_at' => now()
    ],
    [
        'metaname_id' => '5',
        'metadata_name' =>'Name',
        'datatype' =>'input',
        'datatype_name' =>'asset_name',
        'status' =>'Active',
        'user_id' =>1,
        'created_at' => now(),
        'updated_at' => now()
    ],
    [
        'metaname_id' => '5',
        'metadata_name' =>'Description',
        'datatype' =>'textarea',
        'datatype_name' =>'asset_description',
        'status' =>'Active',
        'user_id' =>1,
        'created_at' => now(),
        'updated_at' => now()
    ],
    [
        'metaname_id' => '6',
        'metadata_name' =>'Name',
        'datatype' =>'input',
        'datatype_name' =>'asset_name',
        'status' =>'Active',
        'user_id' =>1,
        'created_at' => now(),
        'updated_at' => now()
    ],
    [
        'metaname_id' => '6',
        'metadata_name' =>'Description',
        'datatype' =>'textarea',
        'datatype_name' =>'asset_description',
        'status' =>'Active',
        'user_id' =>1,
        'created_at' => now(),
        'updated_at' => now()
    ],
    [
        'metaname_id' => '7',
        'metadata_name' =>'Name',
        'datatype' =>'input',
        'datatype_name' =>'asset_name',
        'status' =>'Active',
        'user_id' =>1,
        'created_at' => now(),
        'updated_at' => now()
    ],
    [
        'metaname_id' => '7',
        'metadata_name' =>'Description',
        'datatype' =>'textarea',
        'datatype_name' =>'asset_description',
        'status' =>'Active',
        'user_id' =>1,
        'created_at' => now(),
        'updated_at' => now()
    ],
    [
        'metaname_id' => '8',
        'metadata_name' =>'Name',
        'datatype' =>'input',
        'datatype_name' =>'asset_name',
        'status' =>'Active',
        'user_id' =>1,
        'created_at' => now(),
        'updated_at' => now()
    ],
    [
        'metaname_id' => '8',
        'metadata_name' =>'Description',
        'datatype' =>'textarea',
        'datatype_name' =>'asset_description',
        'status' =>'Active',
        'user_id' =>1,
        'created_at' => now(),
        'updated_at' => now()
    ],
    [
        'metaname_id' => '9',
        'metadata_name' =>'Name',
        'datatype' =>'input',
        'datatype_name' =>'asset_name',
        'status' =>'Active',
        'user_id' =>1,
        'created_at' => now(),
        'updated_at' => now()
    ],
    [
        'metaname_id' => '9',
        'metadata_name' =>'Description',
        'datatype' =>'textarea',
        'datatype_name' =>'asset_description',
        'status' =>'Active',
        'user_id' =>1,
        'created_at' => now(),
        'updated_at' => now()
    ]
      ]);


    }
}
