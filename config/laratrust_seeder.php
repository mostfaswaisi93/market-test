<?php

return [
    'role_structure' => [
        'super_admin'   => [
            'categories'        => 'c,r,u,d',
            'subcategories'     => 'c,r,u,d',
            'locations'         => 'c,r,u,d',
            'notifications'     => 'c,r,u,d',
            'orders'            => 'c,r,u,d',
            'customers'         => 'c,r,u,d',
            'items'             => 'c,r,u,d',
            'contacts'          => 'c,r,u,d',
            'brands'            => 'c,r,u,d',
            'countries'         => 'c,r,u,d',
            'cities'            => 'c,r,u,d',
            'units'             => 'c,r,u,d',
            'users'             => 'c,r,u,d',
            'settings'          => 'c,r,u,d',
        ],
        'admin'         => [],
        'customer'      => []
    ],

    'permissions_map' => [
        'c' => 'create',
        'r' => 'read',
        'u' => 'update',
        'd' => 'delete'
    ]
];
