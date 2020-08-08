@include('admin.partials.menubar')

<!-- BEGIN: Sidebar -->
<div class="main-menu menu-fixed menu-dark menu-accordion menu-shadow" data-scroll-to-active="true">
    <div class="navbar-header">
        <ul class="nav navbar-nav flex-row">
            <li class="nav-item mr-auto">
                <a class="navbar-brand" href="{{ route('admin.index') }}">
                    <img class="round" src="{{ url('admin_files/logo.png') }}" alt="avatar" height="45">
                </a>
            </li>
        </ul>
    </div>
    <div class="shadow-bottom"></div>
    <div class="main-menu-content">
        <ul class="navigation navigation-main" id="main-menu-navigation" data-menu="menu-navigation">
            <li class="navigation-header"><span>Apps</span>
            </li>
            <li {{ request()->route()->getName() === 'admin.index' ? ' class=active' : '' }}>
                <a href="{{ route('admin.index') }}" class="nav-link">
                    <i class="fa fa-home font-green"></i>
                    <span class="title">@lang('site.home')</span>
                </a>
            </li>

            @if (auth()->user()->hasPermission('read_users'))
            <li {{ request()->route()->getName() === 'admin.users.index' ? ' class=active' : '' }}>
                <a href="{{ route('admin.users.index') }}" class="nav-link">
                    <i class="fa fa-cogs font-green"></i>
                    <span class="title">@lang('site.users_management')</span>
                </a>
            </li>
            @endif
            <li class="nav-item">
                <a href="#">
                    <i class="feather icon-list"></i>
                    <span class="menu-title">@lang('site.categories')</span>
                </a>
            </li>
            <li class="nav-item">
                <a href="#">
                    <i class="feather icon-bell"></i>
                    <span class="menu-title">@lang('site.noti')</span>
                </a>
            </li>
            <li class="nav-item">
                <a href="#">
                    <i class="feather icon-tag"></i>
                    <span class="menu-title">@lang('site.tags')</span>
                </a>
            </li>
            <li class="nav-item">
                <a href="#">
                    <i class="feather icon-users"></i>
                    <span class="menu-title">@lang('site.users')</span>
                </a>
                <ul class="menu-content">
                    <li>
                        <a href="{{ route('admin.users.index') }}">
                            <i class="feather icon-user"></i>
                            <span class="menu-item">@lang('site.profile')</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="nav-item">
                <a href="#">
                    <i class="feather icon-users"></i>
                    <span class="menu-title">@lang('site.clients')</span>
                </a>
                <ul class="menu-content">
                    <li>
                        <a href="#">
                            <i class="feather icon-user"></i>
                            <span class="menu-item">@lang('site.clint')</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li class=" nav-item"><a href="#"><i class="feather icon-shopping-cart"></i><span class="menu-title"
                        data-i18n="Ecommerce">Ecommerce</span></a>
                <ul class="menu-content">
                    <li><a href="app-ecommerce-shop.html"><i class="feather icon-circle"></i><span class="menu-item"
                                data-i18n="Shop">Shop</span></a>
                    </li>
                    <li><a href="app-ecommerce-details.html"><i class="feather icon-circle"></i><span class="menu-item"
                                data-i18n="Details">Details</span></a>
                    </li>
                    <li><a href="app-ecommerce-wishlist.html"><i class="feather icon-circle"></i><span class="menu-item"
                                data-i18n="Wish List">Wish List</span></a>
                    </li>
                    <li><a href="app-ecommerce-checkout.html"><i class="feather icon-circle"></i><span class="menu-item"
                                data-i18n="Checkout">Checkout</span></a>
                    </li>
                </ul>
            </li>
            <li class=" nav-item"><a href="#"><i class="feather icon-user"></i><span class="menu-title"
                        data-i18n="User">User</span></a>
                <ul class="menu-content">
                    <li><a href="app-user-list.html"><i class="feather icon-circle"></i><span class="menu-item"
                                data-i18n="List">List</span></a>
                    </li>
                    <li><a href="app-user-view.html"><i class="feather icon-circle"></i><span class="menu-item"
                                data-i18n="View">View</span></a>
                    </li>
                    <li><a href="app-user-edit.html"><i class="feather icon-circle"></i><span class="menu-item"
                                data-i18n="Edit">Edit</span></a>
                    </li>
                </ul>
            </li>
            <li class=" navigation-header"><span>pages</span>
            </li>
            <li class=" nav-item"><a href="page-user-profile.html"><i class="feather icon-user"></i><span
                        class="menu-title" data-i18n="Profile">Profile</span></a>
            </li>
            <li class=" nav-item"><a href="page-account-settings.html"><i class="feather icon-settings"></i><span
                        class="menu-title" data-i18n="Account Settings">Account Settings</span></a>
            </li>

            @if (auth()->user()->hasPermission('read_categories'))
            <li {{ request()->route()->getName() === 'admin.categories.index' ? ' class=active' : '' }}>
                <a href="/admin/categories" class="nav-link">
                    <i class="fa fa-list font-green"></i>
                    <span class="title">@lang('site.categories')</span>
                </a>
            </li>
            @endif
            @if (auth()->user()->hasPermission('read_products'))
            <li {{ request()->route()->getName() === 'admin.products.index' ? ' class=active' : '' }}>
                <a href="/admin/products" class="nav-link">
                    <i class="fa fa-product-hunt font-green"></i>
                    <span class="title">@lang('site.products')</span>
                </a>
            </li>
            @endif
            @if (auth()->user()->hasPermission('read_clients'))
            <li {{ request()->route()->getName() === 'admin.clients.index' ? ' class=active' : '' }}>
                <a href="/admin/clients" class="nav-link">
                    <i class="fa fa-users font-green"></i>
                    <span class="title">@lang('site.clients')</span>
                </a>
            </li>
            @endif
            @if (auth()->user()->hasPermission('read_orders'))
            <li {{ request()->route()->getName() === 'admin.orders.index' ? ' class=active' : '' }}>
                <a href="/admin/orders" class="nav-link">
                    <i class="fa fa-money font-green"></i>
                    <span class="title">@lang('site.orders')</span>
                </a>
            </li>
            @endif
        </ul>
    </div>
</div>
<!-- END: Sidebar -->

@include('admin.partials.content')