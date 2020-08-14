<?php

return [
    'role_structure' => [
        'super_admin' => [
            'categories'        => 'c,r,u,d',
            'locations'         => 'c,r,u,d',
            'notifications'     => 'c,r,u,d',
            'orders'            => 'c,r,u,d',
            'customers'         => 'c,r,u,d',
            'products'          => 'c,r,u,d',
            'items'             => 'c,r,u,d',
            'countries'         => 'c,r,u,d',
            'languages'         => 'c,r,u,d',
            'users'             => 'c,r,u,d',
            'settings'          => 'c,r,u,d',
        ],
        'admin' => []
    ],

    'permissions_map' => [
        'c' => 'create',
        'r' => 'read',
        'u' => 'update',
        'd' => 'delete'
    ]
];
