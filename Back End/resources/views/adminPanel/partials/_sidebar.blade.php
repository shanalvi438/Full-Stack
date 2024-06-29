    <!--sidebar wrapper -->
    <div class="sidebar-wrapper" data-simplebar="true">
        <div class="sidebar-header d-flex justify-content-center">
            <img src="{{asset($company_info_share->company_logo) }}" class="logo-icon" alt="logo icon">
            <div>
                <h4 class="logo-text">Gulfeasy Shop</h4>
            </div>
            <div class="toggle-icon ms-auto"><i class='bx bx-arrow-to-left'></i>
            </div>
        </div>
        <!--navigation-->
        <ul class="metismenu" id="menu">
            <li>
                <a href="{{route('admin.pos.view')}}">

                    <div class="menu-title">
                        <spna class="add-menu-sidebar"
                            style="display: flex;justify-content: center;align-items: center" data-toggle="modal"
                            data-target="#addOrderModalside">
                            <i class="fa fa-plus"></i>
                            <span class="nav-text text-center text-white"><i class="lni lni-circle-plus"></i>POS</span>
                        </spna>
                    </div>
                </a>


            </li>

            {{--        <li class="menu-label">UI Elements</li>--}}
            <li>
                <a href="{{route('home')}}">
                    <div class="parent-icon"><i class='bx bx-home-circle'></i>
                    </div>
                    <div class="menu-title">Home</div>
                </a>
            </li>
            
                <li>
                    <a href="javascript:;" class="has-arrow">
                        <div class="parent-icon"><i class="lni lni-cart"></i>
                        </div>
                        <div class="menu-title">Admin Role</div>
                    </a>
                    <ul>
                    
                            <li>    
                                <a href="{{route('admin.role.create')}}"><i class="bx bx-right-arrow-alt"></i>Role</a>
                            </li>
                        

                    
                            <li>
                                <a href="{{route('admin.admin.create')}}"><i class="bx bx-right-arrow-alt"></i>Create Admin</a>
                            </li>
                        
                    </ul>
                </li>
            
        
                <li>
                    <a href="javascript:;" class="has-arrow">
                        <div class="parent-icon"><i class="lni lni-cart"></i>
                        </div>
                        <div class="menu-title">POS</div>
                    </a>
                    <ul>
                    
                            <li>
                                <a href="{{route('admin.pos.view')}}"><i class="bx bx-right-arrow-alt"></i>POS</a>
                            </li>
                        
                    
                            <li>
                                <a href="{{route('sell.list')}}"><i class="bx bx-right-arrow-alt"></i>Sell List</a>
                            </li>
                        
                        {{--@if(userCanAccess('5'))--}}
                        <li>
                            <a href="{{route('admin.pos.customer.list')}}"><i class="bx bx-right-arrow-alt"></i>Pos
                                Customer List</a>
                        </li>
                        {{----}}


                    </ul>
                </li>
            
        
                <li>
                    <a href="javascript:;" class="has-arrow">
                        <div class="parent-icon"><i class="lni lni-producthunt"></i>
                        </div>
                        <div class="menu-title">Product</div>
                    </a>
                    <ul>
                    
                            <li>
                                <a href="{{route('admin.product.list')}}"><i class="bx bx-right-arrow-alt"></i>Products List</a>
                            </li>
                        
                    
                            <li><a href="{{route('admin.create.product')}}"><i class="bx bx-right-arrow-alt"></i>Add

                                    Products</a>
                            </li>
                        
                    
                            <li><a href="{{route('admin.product.category')}}"><i class="bx bx-right-arrow-alt"></i>Category</a>
                            </li>
                        
                    
                            <li>
                                <a href="{{route('admin.product.subcategory')}}"><i class="bx bx-right-arrow-alt"></i>Subcategory</a>
                            </li>
                            
                            </li>

                            <li>
                                <a href="{{route('admin.product.color.show')}}"><i class="bx bx-right-arrow-alt"></i>Product
                                    Color</a>
                            </li>
                            <li>
                                <a href="{{route('admin.product.size.show')}}"><i class="bx bx-right-arrow-alt"></i>Product
                                    Size</a>
                            </li>
                            <li>
                                <a href="{{route('admin.product.brand')}}"><i class="bx bx-right-arrow-alt"></i>Product
                                    Brand</a>
                            </li>
                    </ul>
                </li>
            
        
                <li>
                    <a href="javascript:;" class="has-arrow">
                        <div class="parent-icon"><i class="lni lni-producthunt"></i>
                        </div>
                        <div class="menu-title">Order</div>
                    </a>
                    <ul>
                        {{--                <li>--}}
                        {{--                    <a href="{{route('admin.order.all')}}"><i class="bx bx-right-arrow-alt"></i>All Order</a>--}}
                        {{--                </li>--}}
                    
                            <li>
                                <a href="{{route('admin.order.pending')}}"><i class="bx bx-right-arrow-alt"></i>Pending
                                    Order</a>
                            </li>
                        
                    
                            <li>
                                <a href="{{route('admin.order.processing')}}"><i class="bx bx-right-arrow-alt"></i>Processing
                                    Order</a>
                            </li>
                        
                    
                            <li>
                                <a href="{{route('admin.order.on-the-way')}}"><i class="bx bx-right-arrow-alt"></i>Order On
                                    The way</a>
                            </li>
                        
                    
                            <li><a href="{{route('admin.order.cancel.request')}}"><i class="bx bx-right-arrow-alt"></i>Order
                                    Cancel
                                    Request</a>
                            </li>
                        
                    
                            <li><a href="{{route('admin.order.cancel.accept')}}"><i class="bx bx-right-arrow-alt"></i>Order
                                    Cancel
                                    Accept</a>
                            </li>
                        
                    
                            <li><a href="{{route('admin.order.cancel.completed')}}"><i class="bx bx-right-arrow-alt"></i>Cancel
                                    Completed</a></li>
                        
                    
                            <li><a href="{{route('admin.order.completed')}}"><i class="bx bx-right-arrow-alt"></i>Completed
                                    Order</a>
                            </li>
                        
                    </ul>

                </li>
            
        
                <li>
                    <a href="javascript:;" class="has-arrow">
                        <div class="parent-icon"><i class="lni lni-package"></i>
                        </div>
                        <div class="menu-title">Stock Products</div>
                    </a>
                    <ul>
                    
                            <li>
                                <a href="{{route('admin.product.purchase')}}"><i class="bx bx-right-arrow-alt"></i>Purchase
                                    Product</a>
                            </li>
                        
                        <li>
                            <a href="{{route('admin.product.purchase.list')}}"><i class="bx bx-right-arrow-alt"></i>Purchase
                                List
                            </a>
                        </li>


                        
                        <li>
                            <a href="{{route('admin.supplier.list')}}"><i class="bx bx-right-arrow-alt"></i>Supplier
                                List</a>
                        </li>
                        
                    </ul>
                </li>
            
        
                <li>
                    <a href="javascript:;" class="has-arrow">
                        <div class="parent-icon"><i class="lni lni-offer"></i>
                        </div>
                        <div class="menu-title">Offer Setting</div>
                    </a>
                    <ul>
                    
                            <li>
                                <a href="{{route('offer.list')}}"><i class="bx bx-right-arrow-alt"></i>Create Offer</a>
                            </li>
                        
                        {{--                <li>--}}
                        {{--                    <a href="{{route('admin.set.offer.product')}}"><i class="bx bx-right-arrow-alt"></i>Offer Product Select</a>--}}
                        {{--                </li>--}}
                        {{--                   
                        {{--                        <li>--}}
                        {{--                            <a href="{{route('admin.offer.product.list')}}"><i class="bx bx-right-arrow-alt"></i>Offer--}}
                        {{--                                Product--}}
                        {{--                                List</a>--}}
                        {{--                        </li>--}}
                        {{--                    --}}
                    </ul>
                </li>
            
        
                <li>
                    <a href="javascript:;" class="has-arrow">
                        <div class="parent-icon"><i class="lni lni-offer"></i>
                        </div>
                        <div class="menu-title">Setting</div>
                    </a>
                    <ul>
                    
                            <li>
                                <a href="{{route('setting.company.details')}}"><i class="bx bx-right-arrow-alt"></i>Company
                                    Details</a>
                            </li>
                        
                    
                            <li>
                                <a href="{{route('setting.shipping.rate')}}"><i class="bx bx-right-arrow-alt"></i>Shipping
                                    Rate Set</a>
                            </li>
                        
                            <li>
                                <a href="{{route('faq.view')}}"><i class="bx bx-right-arrow-alt"></i>
                                    FAQ Set</a>
                            </li>
                            <li>
                                <a href="{{route('ads.view')}}"><i class="bx bx-right-arrow-alt"></i>
                                    Ads Set</a>
                            </li>


                    </ul>
                </li>
            
            <li>
                <a href="javascript:;" class="has-arrow">
                    <div class="parent-icon"><i class="lni lni-offer"></i>
                    </div>
                    <div class="menu-title">Featured Link</div>
                </a>
                <ul>
                    <li>
                        <a href="{{route('admin.featured.link.list')}}"><i class="bx bx-right-arrow-alt"></i> Featured Link
                            List </a>
                    </li>
                </ul>
            </li>
        
                <li>
                    <a href="javascript:;" class="has-arrow">
                        <div class="parent-icon"><i class="lni lni-home"></i>
                        </div>
                        <div class="menu-title">Bank</div>
                    </a>
                    <ul>
                        <li>
                            <a href="{{route('admin.bank.list')}}"><i class="bx bx-right-arrow-alt"></i>Bank List</a>
                        </li>
                    </ul>
                </li>
            
        
                <li>
                    <a href="javascript:;" class="has-arrow">
                        <div class="parent-icon"><i class="lni lni-stats-up"></i>
                        </div>
                        <div class="menu-title">Report</div>
                    </a>
                    <ul>
                    
                            <li>
                                <a href="{{route('admin.report.sell.profit')}}"><i class="bx bx-right-arrow-alt"></i>Sell &
                                    Profit Report</a>
                            </li>
                        
                    
                            <li>
                                <a href="{{route('admin.report.sell')}}"><i class="bx bx-right-arrow-alt"></i>Best Sell
                                    Product Report</a>
                            </li>
                        

                    </ul>
                </li>
            

        </ul>
        <!--end navigation-->
    </div>
    <!--end sidebar wrapper -->
