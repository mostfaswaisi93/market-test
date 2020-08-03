@include('admin.partials.navbar')

<!-- BEGIN: Sidebar -->
<div class="main-menu menu-fixed menu-dark menu-accordion menu-shadow" data-scroll-to-active="true">
    <div class="navbar-header">
        <ul class="nav navbar-nav flex-row">
            <li class="nav-item mr-auto">
                <a class="navbar-brand" href="{{ route('admin.index') }}">
                    <img class="round" src="{{ url('admin_files/logo.png') }}" alt="avatar" height="45">
                    {{-- <h2 class="brand-text mb-0">Halal Market</h2> --}}
                </a>
            </li>
            {{-- <li class="nav-item nav-toggle">
                <a class="nav-link modern-nav-toggle pr-0" data-toggle="collapse">
                    <i class="feather icon-x d-block d-xl-none font-medium-4 primary toggle-icon"></i>
                    <i class="toggle-icon feather icon-disc font-medium-4 d-none d-xl-block collapse-toggle-icon primary"
                        data-ticon="icon-disc"></i>
                </a>
            </li> --}}
        </ul>
    </div>
    <div class="shadow-bottom"></div>
    <div class="main-menu-content">
        <ul class="navigation navigation-main" id="main-menu-navigation" data-menu="menu-navigation">
            <li class="navigation-header"><span>Apps</span>
            </li>
            <li class="nav-item active">
                <a href="{{ route('admin.index') }}">
                    <i class="feather icon-home"></i>
                    <span class="menu-title">@lang('site.home')</span>
                </a>
            </li>
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
                        <a href="#">
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
        </ul>
    </div>
</div>
<!-- END: Sidebar -->

@include('admin.partials.menu')