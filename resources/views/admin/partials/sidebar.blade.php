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
                    <i class="fa fa-home"></i>
                    <span class="title">@lang('site.home')</span>
                </a>
            </li>
            {{-- @if (auth()->user()->hasPermission('read_categories')) --}}
            <li {{ request()->route()->getName() === 'admin.categories.index' ? ' class=active' : '' }}>
                <a href="{{ route('admin.categories.index') }}" class="nav-link">
                    <i class="fa fa-list"></i>
                    <span class="title">@lang('site.categories_management')</span>
                </a>
            </li>
            {{-- @endif --}}
            {{-- @if (auth()->user()->hasPermission('read_locations')) --}}
            <li {{ request()->route()->getName() === 'admin.locations.index' ? ' class=active' : '' }}>
                <a href="#" class="nav-link">
                    <i class="fa fa-map"></i>
                    <span class="title">@lang('site.locations_management')</span>
                </a>
            </li>
            {{-- @endif --}}
            {{-- @if (auth()->user()->hasPermission('read_notifications')) --}}
            <li {{ request()->route()->getName() === 'admin.notifications.index' ? ' class=active' : '' }}>
                <a href="#" class="nav-link">
                    <i class="fa fa-bell"></i>
                    <span class="title">@lang('site.notifications_management')</span>
                </a>
            </li>
            {{-- @endif --}}
            {{-- @if (auth()->user()->hasPermission('read_orders')) --}}
            <li {{ request()->route()->getName() === 'admin.orders.index' ? ' class=active' : '' }}>
                <a href="#" class="nav-link">
                    <i class="fa fa-map-marker"></i>
                    <span class="title">@lang('site.orders_management')</span>
                </a>
            </li>
            {{-- @endif --}}
            @if (auth()->user()->hasPermission('read_users'))
            <li {{ request()->route()->getName() === 'admin.users.index' ? ' class=active' : '' }}>
                <a href="{{ route('admin.users.index') }}" class="nav-link">
                    <i class="feather icon-users"></i>
                    <span class="title">@lang('site.users_management')</span>
                </a>
            </li>
            @endif
            {{-- @if (auth()->user()->hasPermission('read_customers')) --}}
            <li {{ request()->route()->getName() === 'admin.customers.index' ? ' class=active' : '' }}>
                <a href="#" class="nav-link">
                    <i class="feather icon-user"></i>
                    <span class="title">@lang('site.customers_management')</span>
                </a>
            </li>
            {{-- @endif --}}
            {{-- @if (auth()->user()->hasPermission('read_customers')) --}}
            <li {{ request()->route()->getName() === 'admin.promo_code.index' ? ' class=active' : '' }}>
                <a href="#" class="nav-link">
                    <i class="fa fa-circle-o"></i>
                    <span class="title">@lang('site.promo_code')</span>
                </a>
            </li>
            {{-- @endif --}}
            {{-- @if (auth()->user()->hasPermission('read_customers')) --}}
            <li {{ request()->route()->getName() === 'admin.sliders.index' ? ' class=active' : '' }}>
                <a href="#" class="nav-link">
                    <i class="fa fa-circle-o"></i>
                    <span class="title">@lang('site.sliders')</span>
                </a>
            </li>
            {{-- @endif --}}
            {{-- @if (auth()->user()->hasPermission('read_customers')) --}}
            <li {{ request()->route()->getName() === 'admin.messages.index' ? ' class=active' : '' }}>
                <a href="#" class="nav-link">
                    <i class="fa fa-circle-o"></i>
                    <span class="title">@lang('site.messages')</span>
                </a>
            </li>
            {{-- @endif --}}
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
            @if (auth()->user()->hasPermission('read_categories'))
            <li {{ request()->route()->getName() === 'admin.categories.index' ? ' class=active' : '' }}>
                <a href="/admin/categories" class="nav-link">
                    <i class="fa fa-list"></i>
                    <span class="title">@lang('site.categories_management')</span>
                </a>
            </li>
            @endif
            @if (auth()->user()->hasPermission('read_products'))
            <li {{ request()->route()->getName() === 'admin.products.index' ? ' class=active' : '' }}>
                <a href="/admin/products" class="nav-link">
                    <i class="fa fa-product-hunt"></i>
                    <span class="title">@lang('site.products')</span>
                </a>
            </li>
            @endif
            @if (auth()->user()->hasPermission('read_clients'))
            <li {{ request()->route()->getName() === 'admin.clients.index' ? ' class=active' : '' }}>
                <a href="/admin/clients" class="nav-link">
                    <i class="fa fa-users"></i>
                    <span class="title">@lang('site.clients')</span>
                </a>
            </li>
            @endif
            @if (auth()->user()->hasPermission('read_orders'))
            <li {{ request()->route()->getName() === 'admin.orders.index' ? ' class=active' : '' }}>
                <a href="/admin/orders" class="nav-link">
                    <i class="fa fa-money"></i>
                    <span class="title">@lang('site.orders')</span>
                </a>
            </li>
            @endif
        </ul>
    </div>
</div>
<!-- END: Sidebar -->

@include('admin.partials.content')