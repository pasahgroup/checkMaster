<?php

namespace App\Http\Controllers;

use App\Models\account;
use App\Models\cashIn;
use App\Models\customer;
use App\Models\customerAccountSummary;
use App\Models\customerWallet;
use App\Models\customerWalletSummury;
use App\Models\myCompany;
use App\Models\myPayment;
use App\Models\order;
use App\Models\orderItem;
use App\Models\package;
use App\Models\payment;
use App\Models\purchaseOrder;
use App\Models\sale;
use App\Models\stock;
use App\Models\tenant;
use App\Models\User;
use App\Models\Property;

use App\Models\answer;

use App\Models\session;
use App\Models\warehouse;
use App\Models\accounting;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Traits\HasRoles;
use App\Http\Traits\GlobalTrait;

class adminController extends Controller
{
    use GlobalTrait;
    public $settings;

    public function __construct()
    {
        $this->settings = $this->getAllSettings();
    }

 public function index()
    {
//dd(request()->getHost());
      //dd(request()->segments());

       if(auth())
       {
        $now = Carbon::now();
        $weekStartDate = $now->startOfWeek()->format('Y-m-d H:i');
        $weekEndDate = $now->endOfWeek()->format('Y-m-d H:i');
        $user = User::where('id',auth()->id())->first();
        $users= User::get();
        $user->hasRole('Admin');
      $property_name = Property::where('id',$user->property_id)->first();
    //  dd($property_name);


if($property_name ==null)
{
    return redirect()->route('profile.index')->with('success','There is no any transactions');
}
 $property_name=$property_name->property_name;


//ADD ROLE FOR THE FIRST TIME
        if($users->count()<=1 && $user->hasRole('Admin') == 0){
            // Create and assign user to be admin
                if(Role::where('name',request('name'))->exists()){
                    return redirect()->back()->with('error','This role already created');
                }
                else{
            $role = Role::create(['name' => 'SuperAdmin']);//Can add,remove,assign all activities within the system
            $role = Role::create(['name' => 'GeneralAdmin']);//Can view all activities within the all hotels
               $role = Role::create(['name' => 'Admin']);//Can view all activities within the some of the hotels
            $role = Role::create(['name' => 'GeneralManager']);//Can view all activities within the hotel
             $role = Role::create(['name' => 'Manager']);//Can view some activities within the hotel
            $role = Role::create(['name' => 'Account']);//Can view all activities related to store within the hotel
            $role = Role::create(['name' => 'Store']);
            $role = Role::create(['name' => 'User']);
            //assign admin role
            $user->assignRole('Admin');
                }
            //create master accounts
            $super_admin = User::create([
                'name' =>'SuperAdmin',
                'email' =>'superadmin@pasah.net',
                'password' => Hash::make('pasah12345!')
            ]);
            // Assign role to super admin
            $super_admin->assignRole('SuperAdmin');


            // Create main account
            // $account  = account::create([
            //     'account_name'=>'Main Account',
            //     'descriptions'=>'Main cash account',
            //     'main_account'=>1,
            //     'user_id'=>auth()->id()
            // ]);
            // // Create main warehouse
            // $store = warehouse::create(
            //     [
            // 'warehouse'=>'Main warehouse',
            // 'location'=>'HQ',
            // 'main_warehouse'=>1,
            // 'descriptions'=>'All items from supplier is stored here before issuing to the shop',
            // 'user_id'=>auth()->id() ]);
        };


//IF THE USER HAS ADMIN PRIVILEDGES
     if($user->hasRole('GeneralAdmin|SuperAdmin|Admin')){
            //dd('nn');
        $themonthly = sale::select([
            DB::raw('SUM(amount) as monthly_sales'),
            DB::raw('SUM(paid) as monthly_cash'),
            DB::raw('SUM(balance) as monthly_balance'),
            ])
        ->where('status','!=','Deleted')
        ->whereBetween('created_at',
        [Carbon::now()->startOfMonth(),
        Carbon::now()->endOfMonth()])
        ->first();

        $themonthlypaid = payment::select([
            DB::raw('SUM(paid) as paid_cash')
            ])
            ->where('status','!=','Deleted')
            ->whereBetween('created_at',
            [Carbon::now()->startOfMonth(),
            Carbon::now()->endOfMonth()])
            ->first();

        $theweekly = sale::select([
            DB::raw('SUM(amount) as weekly_sales'),
            DB::raw('SUM(paid) as weekly_cash'),
            DB::raw('SUM(balance) as weekly_balance'),
            ])
            ->where('status','!=','Deleted')
        ->whereBetween('created_at',
        [$weekStartDate,
        $weekEndDate])
        ->first();

      $theweeklypaid = payment::select([
            DB::raw('SUM(paid) as paid_cash')
            ])
            ->where('status','!=','Deleted')
            ->whereBetween('created_at',
            [$weekStartDate,
            $weekEndDate])
            ->first();

            // profits
            $monthly_profits = sale::join('order_items','order_items.order_id','sales.order_id')
            ->join('stocks','stocks.id','order_items.item_id')
            ->select([
                DB::raw('SUM(order_items.qty*order_items.buying_price)total_buying'),
                DB::raw('SUM(order_items.qty*order_items.selling_price)total_selling')
                 ])
                 ->where('sales.status','!=','Deleted')
                 ->whereBetween('sales.created_at',
                 [Carbon::now()->startOfMonth(),
                 Carbon::now()->endOfMonth()])
                 ->first();




        $thedaily = sale::select([
        DB::raw('SUM(amount) as daily_sales'),
        DB::raw('SUM(paid) as daily_cash'),
        DB::raw('SUM(balance) as daily_balance'),
        ])
        ->where('status','!=','Deleted')
        ->whereDate('created_at',Carbon::today())
        ->first();

          $thedailypaid = payment::select([
            DB::raw('SUM(paid) as paid_cash')
            ])
            ->where('status','!=','Deleted')
            ->whereDate('created_at',Carbon::today())
            ->first();

        $top_shop = order::
           join('warehouses','warehouses.id','orders.warehouse_id')
           ->join('sales','sales.order_id','orders.id')
           ->select('orders.*','warehouses.warehouse',
                DB::raw('count(sales.id)sales_count'),
                DB::raw('SUM(sales.amount)total_selling')
                )
            ->orderby('total_selling','Desc')
           ->groupby('orders.warehouse_id')
           ->whereBetween('orders.created_at',
           [Carbon::now()->startOfMonth(),
           Carbon::now()->endOfMonth()])
           ->first();

           $top_customer =  order::
           join('customers','customers.id','orders.customer_id')
           ->join('sales','sales.order_id','orders.id')
           ->select('orders.*','customers.customer_name',
                DB::raw('count(sales.id)sales_count'),
                DB::raw('SUM(sales.amount)total_selling')
                )
            ->orderby('total_selling','Desc')
           ->groupby('orders.customer_id')
           ->whereBetween('orders.created_at',
           [Carbon::now()->startOfMonth(),
           Carbon::now()->endOfMonth()])
           ->first();

            $top_product =  orderItem::
           join('stocks','stocks.id','order_items.item_id')
           ->select('order_items.*','stocks.item',
            DB::raw('count(order_items.item_id)item_count'),
            DB::raw('SUM(order_items.qty)total_qty'),
            DB::raw('SUM(order_items.qty * order_items.selling_price )total_value'))
           ->groupby('order_items.item_id')
           ->whereBetween('order_items.created_at',
           [Carbon::now()->startOfMonth(),
           Carbon::now()->endOfMonth()])
           ->orderby('total_qty','Desc')
           ->first();

           $main_warehouse = warehouse::where('main_warehouse',1)->first();


            $overdue = sale::select([
            DB::raw('SUM(amount) as monthly_sales'),
            DB::raw('count(id) as overdue_count'),
            DB::raw('SUM(balance) as total_due'),
            ])
            ->where('balance','>',0)
            ->where('status','!=','Deleted')
            ->first();

            $payable = purchaseOrder::
            select([
            DB::raw('COUNT(id) as total_count'),
            DB::raw('SUM(balance) as total_balance')
            ])
            ->where('purchase_orders.balance','>',0)
            ->where('payment','Purchased')
            ->first();


        $collection_daily = $thedailypaid->paid_cash - $thedaily->daily_cash;
        $collection_weekly = $theweeklypaid->paid_cash - $theweekly->weekly_cash;
        $collection_monthly =  $themonthlypaid->paid_cash - $themonthly->monthly_cash ;

        $pending_orders = order::where('status','Pending')
        ->select(
        DB::raw('COUNT(id) as orders_count')
        )->first();

        $sessions = session::join('users','users.id','sessions.user_id')
        ->groupby('sessions.user_id')
        ->get();


 $current_date = date('Y-m-d');

//$properties=property::leftjoin('answers','properties.id','answers.property_id')->get();
//$properties=DB::select("select p.id,p.property_name,a.metaname_id,a.datex from properties p left join answers a on p.id=a.property_id  and a.datex='".$current_date."' group by p.property_name,a.metaname_id");

$properties=Property::get();
 $reportDailyData=DB::select('select a.property_id,a.metaname_id,m.metaname_name,a.indicator_id,a.asset_id, a.opt_answer_id,a.answer,o.answer_classification from answers a,optional_answers o,metanames m where a.indicator_id=o.indicator_id and a.metaname_id=m.id and a.opt_answer_id=o.id and a.datex="'.$current_date.'"');
  $dataDaily = collect($reportDailyData);
//$dailyMetaCollects=$dataDaily->groupBy('metaname_name');
//Report weekly dataDaily

 $reportWeeklyData=DB::select('select a.property_id,a.metaname_id,m.metaname_name,a.indicator_id,a.asset_id, a.opt_answer_id,a.answer,o.answer_classification from answers a,optional_answers o,metanames m where a.indicator_id=o.indicator_id and a.metaname_id=m.id and a.opt_answer_id=o.id and WEEK(a.datex)=WEEK(NOW())');
 $dataWeekly = collect($reportWeeklyData);
//$weeklyMetaCollects=$dataWeekly->groupBy('metaname_name');

//Report monthly dataDaily
 $reportMonthlyData=DB::select('select a.property_id,a.metaname_id,m.metaname_name,a.indicator_id,a.asset_id, a.opt_answer_id,a.answer,o.answer_classification from answers a,optional_answers o,metanames m where a.indicator_id=o.indicator_id and a.metaname_id=m.id and a.opt_answer_id=o.id and month(a.datex)=month(NOW())');
 $dataMonthly = collect($reportMonthlyData);
//$weeklyMetaCollects=$dataMonthly->groupBy('metaname_name');
//dd($dataWeekly);

        return view('admin.index',compact(
        'dataDaily','dataWeekly','dataMonthly',
        'properties',
        'sessions'
    ));

}


       // sales users
        if($user->hasRole('Manager|GeneralManager')){
//dd('sales');
        $themonthly = sale::select([
            DB::raw('SUM(amount) as monthly_sales'),
            DB::raw('SUM(paid) as monthly_cash'),
            DB::raw('SUM(balance) as monthly_balance'),
            ])
            ->where('status','!=','Deleted')
        ->where('user_id',auth()->id())
        ->whereBetween('created_at',
        [Carbon::now()->startOfMonth(),
        Carbon::now()->endOfMonth()])
        ->first();

        $monthly_profits = sale::join('order_items','order_items.order_id','sales.order_id')
        ->join('stocks','stocks.id','order_items.item_id')
        ->select([
            DB::raw('SUM(order_items.qty*stocks.price)total_buying'),
            DB::raw('SUM(order_items.qty*stocks.selling_price)total_selling')
             ])
             ->where('sales.status','!=','Deleted')
             ->where('sales.user_id',auth()->id())
             ->whereBetween('sales.created_at',

             [Carbon::now()->startOfMonth(),
             Carbon::now()->endOfMonth()])
             ->first();

        $themonthlypaid = payment::select([
            DB::raw('SUM(paid) as paid_cash')
            ])
            ->where('status','!=','Deleted')
            ->where('user_id',auth()->id())
            ->whereBetween('created_at',
            [Carbon::now()->startOfMonth(),
            Carbon::now()->endOfMonth()])
            ->first();

        $theweekly = sale::select([
            DB::raw('SUM(amount) as weekly_sales'),
            DB::raw('SUM(paid) as weekly_cash'),
            DB::raw('SUM(balance) as weekly_balance'),
            ])
            ->where('status','!=','Deleted')
            ->where('status','!=','Deleted')
        ->where('user_id',auth()->id())
        ->whereBetween('created_at',
        [$weekStartDate,
        $weekEndDate])
        ->first();

        $theweeklypaid = payment::select([
            DB::raw('SUM(paid) as paid_cash')
            ])
            ->where('status','!=','Deleted')
            ->where('user_id',auth()->id())
            ->whereBetween('created_at',
            [$weekStartDate,
            $weekEndDate])
            ->first();

            $weekly_profits = sale::join('order_items','order_items.order_id','sales.order_id')
            ->join('stocks','stocks.id','order_items.item_id')
            ->select([
                  DB::raw('SUM(order_items.qty*stocks.price)total_buying'),
                 DB::raw('SUM(order_items.qty*stocks.selling_price)total_selling')
                 ])
                 ->where('sales.status','!=','Deleted')
                 ->where('sales.user_id',auth()->id())
                 ->whereBetween('sales.created_at',
            [$weekStartDate,
            $weekEndDate])
                 ->first();

        $thedaily = sale::select([
        DB::raw('SUM(amount) as daily_sales'),
        DB::raw('SUM(paid) as daily_cash'),
        DB::raw('SUM(balance) as daily_balance'),
        ])
        ->where('status','!=','Deleted')
        ->where('user_id',auth()->id())
        ->whereDate('created_at',Carbon::today())
        ->first();

        $daily_profits = sale::join('order_items','order_items.order_id','sales.order_id')
        ->join('stocks','stocks.id','order_items.item_id')
        ->select([
              DB::raw('SUM(order_items.qty*stocks.price)total_buying'),
             DB::raw('SUM(order_items.qty*stocks.selling_price)total_selling')
             ])
             ->where('sales.user_id',auth()->id())
             ->whereDate('sales.created_at',Carbon::today())
             ->first();

        $thedailypaid = payment::select([
            DB::raw('SUM(paid) as paid_cash')
            ])
            ->where('status','!=','Deleted')
            ->where('user_id',auth()->id())
            ->whereDate('created_at',Carbon::today())
            ->first();
        $collection_daily = $thedailypaid->paid_cash - $thedaily->daily_cash;
        $collection_weekly = $theweeklypaid->paid_cash - $theweekly->weekly_cash;
        $collection_monthly = $themonthlypaid->paid_cash - $themonthly->monthly_cash;
        $pending_orders = order::where('status','Pending')->count();

        return view('admin.index',compact(
        'pending_orders','thedaily',
        'thedailypaid',
        'collection_daily',
        'collection_weekly',
        'collection_monthly',
        'theweekly','themonthly',
        'daily_profits',
        'monthly_profits',
        'property_name',
        'weekly_profits'
    ));
}


if($user->hasRole('Store')){
    return redirect()->route('stocking.index');
}
elseif($user->hasRole('')){
    return "Sorry you are not permitted to access this system";
}


       }
       else
       {
         Auth::logout();
       }

    }


    public function indexOrg()
    {
        $url = request()->getHost();
        $common_domain = substr($url, 0, 3);

      if($common_domain == "www"){
          $domain = substr($url,4);
      }
      else{
           $domain = $url;
      }

        // $tenant= tenant::where('status','Active')->where('domain',$domain)->first();
        $tenant= DB::connection('landlord')->table('tenants')->where('tenant_status','Active')->where('domain',$domain)->first();
       $package= package::where('tenant_id',$tenant->id)->latest()->first();
        if($tenant){
            $mycompany = myCompany::first();
            $mypayment = myPayment::latest()->first();

            if($mycompany){
                // do nothing

            }
            else{
                $create_company = myCompany::create([
                'company_name'=>$tenant->name,
                'logo'=>'',
                'address'=>$tenant->address,
                'phone_number'=>$tenant->phone_number,
                'package'=>$tenant->package,
                'status'=>$tenant->status,
                'limit_users'=>$tenant->limit_shops,
                'limit_shops'=>$tenant->limit_shops,
                'tin'=>$tenant->tin,
                'vrn'=>$tenant->vrn,
                'email'=>$tenant->email,
                'start_from'=>$tenant->start_from,
                'renew_at'=>$tenant->renew_at
            ]);
            }
            if($mypayment){
                if($package->id != $mypayment->invoice_number){
                    $create_payement = myPayment::create([
                        'invoice_number'=>$package->id,
                        'my_id'=>$package->tenant_id,
                        'package_name'=>$package->package_name,
                        'amount_paid'=>$package->amount_paid,
                        'transaction_id'=>$package->transaction_id,
                        'paid_via'=>$package->paid_via_phone,
                        'start_from'=>$package->start_from,
                        'end_at'=>$package->end_at,
                        'limit_shop'=>$package->end_at,
                        'limit_user'=>$package->end_at,
                        'status'=>$package->status,
                ]);
                }
            }
            else{
                $create_payement = myPayment::create([
                    'invoice_number'=>$package->id,
                    'my_id'=>$package->tenant_id,
                    'package_name'=>$package->package_name,
                    'amount_paid'=>$package->amount_paid,
                    'transaction_id'=>$package->transaction_id,
                    'paid_via'=>$package->paid_via_phone,
                    'start_from'=>$package->start_from,
                    'end_at'=>$package->end_at,
                    'status'=>$package->status,
                ]);
            }


        $now = Carbon::now();
        $weekStartDate = $now->startOfWeek()->format('Y-m-d H:i');
        $weekEndDate = $now->endOfWeek()->format('Y-m-d H:i');
        $user = User::where('id',auth()->id())->first();
        $users= User::get();
        $user->hasRole('Admin');
        //dd//($user->role);
        if($users->count()<=1 && $user->hasRole('Admin') == 0){
            // Create and assign user to be admin
                if(Role::where('name',request('name'))->exists()){
                    return redirect()->back()->with('error','This role already created');
                }
                else{
            $role = Role::create(['name' => 'SuperAdmin']);
            $role = Role::create(['name' => 'GeneralAdmin']);
               $role = Role::create(['name' => 'Admin']);
            $role = Role::create(['name' => 'Sales']);
            $role = Role::create(['name' => 'Store']);
            $role = Role::create(['name' => 'Account']);
            $role = Role::create(['name' => 'User']);
            //assign admin role
            $user->assignRole('Admin');
                }
            //create master accounts
            $super_admin = User::create([
                'name' =>'GeneralAdmin',
                'email' =>'admin@pasah.net',
                'password' => Hash::make('pasah12345!')
            ]);
            // Assign role to super admin
            $super_admin->assignRole('Admin');
            // Create main account
            $account  = account::create([
                'account_name'=>'Main Account',
                'descriptions'=>'Main cash account',
                'main_account'=>1,
                'user_id'=>auth()->id()
            ]);
            // Create main warehouse
            $store = warehouse::create(
                [
            'warehouse'=>'Main warehouse',
            'location'=>'HQ',
            'main_warehouse'=>1,
            'descriptions'=>'All items from supplier is stored here before issuing to the shop',
            'user_id'=>auth()->id() ]);
        };




        if($user->hasRole('Admin|Account|SuperAdmin')){
            dd('nn');
        $themonthly = sale::select([
            DB::raw('SUM(amount) as monthly_sales'),
            DB::raw('SUM(paid) as monthly_cash'),
            DB::raw('SUM(balance) as monthly_balance'),
            ])
        ->where('status','!=','Deleted')
        ->whereBetween('created_at',
        [Carbon::now()->startOfMonth(),
        Carbon::now()->endOfMonth()])
        ->first();

        $themonthlypaid = payment::select([
            DB::raw('SUM(paid) as paid_cash')
            ])
            ->where('status','!=','Deleted')
            ->whereBetween('created_at',
            [Carbon::now()->startOfMonth(),
            Carbon::now()->endOfMonth()])
            ->first();



        $theweekly = sale::select([
            DB::raw('SUM(amount) as weekly_sales'),
            DB::raw('SUM(paid) as weekly_cash'),
            DB::raw('SUM(balance) as weekly_balance'),
            ])
            ->where('status','!=','Deleted')
        ->whereBetween('created_at',
        [$weekStartDate,
        $weekEndDate])
        ->first();

      $theweeklypaid = payment::select([
            DB::raw('SUM(paid) as paid_cash')
            ])
            ->where('status','!=','Deleted')
            ->whereBetween('created_at',
            [$weekStartDate,
            $weekEndDate])
            ->first();


            // profits
            $monthly_profits = sale::join('order_items','order_items.order_id','sales.order_id')
            ->join('stocks','stocks.id','order_items.item_id')
            ->select([
                DB::raw('SUM(order_items.qty*order_items.buying_price)total_buying'),
                DB::raw('SUM(order_items.qty*order_items.selling_price)total_selling')
                 ])
                 ->where('sales.status','!=','Deleted')
                 ->whereBetween('sales.created_at',
                 [Carbon::now()->startOfMonth(),
                 Carbon::now()->endOfMonth()])
                 ->first();

            $weekly_profits = sale::join('order_items','order_items.order_id','sales.order_id')
            ->join('stocks','stocks.id','order_items.item_id')
            ->select([
            DB::raw('SUM(order_items.qty*order_items.buying_price)total_buying'),
            DB::raw('SUM(order_items.qty*order_items.selling_price)total_selling')
                 ])
                 ->where('sales.status','!=','Deleted')
                 ->whereBetween('sales.created_at',
            [$weekStartDate,$weekEndDate])->first();

            $daily_profits = sale::join('order_items','order_items.order_id','sales.order_id')
            ->join('stocks','stocks.id','order_items.item_id')
            ->select([
            DB::raw('SUM(order_items.qty*order_items.buying_price)total_buying'),
            DB::raw('SUM(order_items.qty*order_items.selling_price)total_selling')
            ])
            ->where('sales.status','!=','Deleted')
            ->whereDate('sales.created_at',Carbon::today())
            ->first();



        $thedaily = sale::select([
        DB::raw('SUM(amount) as daily_sales'),
        DB::raw('SUM(paid) as daily_cash'),
        DB::raw('SUM(balance) as daily_balance'),
        ])
        ->where('status','!=','Deleted')
        ->whereDate('created_at',Carbon::today())
        ->first();

          $thedailypaid = payment::select([
            DB::raw('SUM(paid) as paid_cash')
            ])
            ->where('status','!=','Deleted')
            ->whereDate('created_at',Carbon::today())
            ->first();

        $top_shop = order::
           join('warehouses','warehouses.id','orders.warehouse_id')
           ->join('sales','sales.order_id','orders.id')
           ->select('orders.*','warehouses.warehouse',
                DB::raw('count(sales.id)sales_count'),
                DB::raw('SUM(sales.amount)total_selling')
                )
            ->orderby('total_selling','Desc')
           ->groupby('orders.warehouse_id')
           ->whereBetween('orders.created_at',
           [Carbon::now()->startOfMonth(),
           Carbon::now()->endOfMonth()])
           ->first();

           $top_customer =  order::
           join('customers','customers.id','orders.customer_id')
           ->join('sales','sales.order_id','orders.id')
           ->select('orders.*','customers.customer_name',
                DB::raw('count(sales.id)sales_count'),
                DB::raw('SUM(sales.amount)total_selling')
                )
            ->orderby('total_selling','Desc')
           ->groupby('orders.customer_id')
           ->whereBetween('orders.created_at',
           [Carbon::now()->startOfMonth(),
           Carbon::now()->endOfMonth()])
           ->first();

            $top_product =  orderItem::
           join('stocks','stocks.id','order_items.item_id')
           ->select('order_items.*','stocks.item',
            DB::raw('count(order_items.item_id)item_count'),
            DB::raw('SUM(order_items.qty)total_qty'),
            DB::raw('SUM(order_items.qty * order_items.selling_price )total_value'))
           ->groupby('order_items.item_id')
           ->whereBetween('order_items.created_at',
           [Carbon::now()->startOfMonth(),
           Carbon::now()->endOfMonth()])
           ->orderby('total_qty','Desc')
           ->first();

           $main_warehouse = warehouse::where('main_warehouse',1)->first();

           $stock_alert = stock::join('sub_stores','stocks.id','sub_stores.item_id')
           ->where('sub_stores.warehouse',$main_warehouse->id)
           ->orderby('sub_stores.current_qty','Asc')
           ->get();

            $overdue = sale::select([
            DB::raw('SUM(amount) as monthly_sales'),
            DB::raw('count(id) as overdue_count'),
            DB::raw('SUM(balance) as total_due'),
            ])
            ->where('balance','>',0)
            ->where('status','!=','Deleted')
            ->first();

            $payable = purchaseOrder::
            select([
            DB::raw('COUNT(id) as total_count'),
            DB::raw('SUM(balance) as total_balance')
            ])
            ->where('purchase_orders.balance','>',0)
            ->where('payment','Purchased')
            ->first();


        $collection_daily = $thedailypaid->paid_cash - $thedaily->daily_cash;
        $collection_weekly = $theweeklypaid->paid_cash - $theweekly->weekly_cash;
        $collection_monthly =  $themonthlypaid->paid_cash - $themonthly->monthly_cash ;

        $pending_orders = order::where('status','Pending')
        ->select(
        DB::raw('COUNT(id) as orders_count')
        )->first();

        $sessions = session::join('users','users.id','sessions.user_id')
        ->groupby('sessions.user_id')
        ->get();

        return view('admin.index',compact(
        'pending_orders','thedaily',
        'thedailypaid',
        'collection_daily',
        'collection_weekly',
        'collection_monthly',
        'theweekly','themonthly',
        'daily_profits',
        'monthly_profits',
        'weekly_profits',
        'top_shop',
        'top_customer',
        'top_product',
        'stock_alert',
        'overdue',
        'payable',
        'site_name',
        'sessions'
    ));

}


            // sales users
        if($user->hasRole('Sales')){
//dd('sales');
        $themonthly = sale::select([
            DB::raw('SUM(amount) as monthly_sales'),
            DB::raw('SUM(paid) as monthly_cash'),
            DB::raw('SUM(balance) as monthly_balance'),
            ])
            ->where('status','!=','Deleted')
        ->where('user_id',auth()->id())
        ->whereBetween('created_at',
        [Carbon::now()->startOfMonth(),
        Carbon::now()->endOfMonth()])
        ->first();

        $monthly_profits = sale::join('order_items','order_items.order_id','sales.order_id')
        ->join('stocks','stocks.id','order_items.item_id')
        ->select([
            DB::raw('SUM(order_items.qty*stocks.price)total_buying'),
            DB::raw('SUM(order_items.qty*stocks.selling_price)total_selling')
             ])
             ->where('sales.status','!=','Deleted')
             ->where('sales.user_id',auth()->id())
             ->whereBetween('sales.created_at',

             [Carbon::now()->startOfMonth(),
             Carbon::now()->endOfMonth()])
             ->first();

        $themonthlypaid = payment::select([
            DB::raw('SUM(paid) as paid_cash')
            ])
            ->where('status','!=','Deleted')
            ->where('user_id',auth()->id())
            ->whereBetween('created_at',
            [Carbon::now()->startOfMonth(),
            Carbon::now()->endOfMonth()])
            ->first();

        $theweekly = sale::select([
            DB::raw('SUM(amount) as weekly_sales'),
            DB::raw('SUM(paid) as weekly_cash'),
            DB::raw('SUM(balance) as weekly_balance'),
            ])
            ->where('status','!=','Deleted')
            ->where('status','!=','Deleted')
        ->where('user_id',auth()->id())
        ->whereBetween('created_at',
        [$weekStartDate,
        $weekEndDate])
        ->first();

        $theweeklypaid = payment::select([
            DB::raw('SUM(paid) as paid_cash')
            ])
            ->where('status','!=','Deleted')
            ->where('user_id',auth()->id())
            ->whereBetween('created_at',
            [$weekStartDate,
            $weekEndDate])
            ->first();

            $weekly_profits = sale::join('order_items','order_items.order_id','sales.order_id')
            ->join('stocks','stocks.id','order_items.item_id')
            ->select([
                  DB::raw('SUM(order_items.qty*stocks.price)total_buying'),
                 DB::raw('SUM(order_items.qty*stocks.selling_price)total_selling')
                 ])
                 ->where('sales.status','!=','Deleted')
                 ->where('sales.user_id',auth()->id())
                 ->whereBetween('sales.created_at',
            [$weekStartDate,
            $weekEndDate])
                 ->first();

        $thedaily = sale::select([
        DB::raw('SUM(amount) as daily_sales'),
        DB::raw('SUM(paid) as daily_cash'),
        DB::raw('SUM(balance) as daily_balance'),
        ])
        ->where('status','!=','Deleted')
        ->where('user_id',auth()->id())
        ->whereDate('created_at',Carbon::today())
        ->first();

        $daily_profits = sale::join('order_items','order_items.order_id','sales.order_id')
        ->join('stocks','stocks.id','order_items.item_id')
        ->select([
              DB::raw('SUM(order_items.qty*stocks.price)total_buying'),
             DB::raw('SUM(order_items.qty*stocks.selling_price)total_selling')
             ])
             ->where('sales.user_id',auth()->id())
             ->whereDate('sales.created_at',Carbon::today())
             ->first();

        $thedailypaid = payment::select([
            DB::raw('SUM(paid) as paid_cash')
            ])
            ->where('status','!=','Deleted')
            ->where('user_id',auth()->id())
            ->whereDate('created_at',Carbon::today())
            ->first();
        $collection_daily = $thedailypaid->paid_cash - $thedaily->daily_cash;
        $collection_weekly = $theweeklypaid->paid_cash - $theweekly->weekly_cash;
        $collection_monthly = $themonthlypaid->paid_cash - $themonthly->monthly_cash;
        $pending_orders = order::where('status','Pending')->count();

        return view('admin.index',compact(
        'pending_orders','thedaily',
        'thedailypaid',
        'collection_daily',
        'collection_weekly',
        'collection_monthly',
        'theweekly','themonthly',
        'daily_profits',
        'monthly_profits',
        'site_name',
        'weekly_profits'
    ));
}

if($user->hasRole('Store')){
    return redirect()->route('stocking.index');
}
elseif($user->hasRole('')){
    return "Sorry you are not permitted to access this system";
}

    }
    else{
    Auth::logout();
    return redirect('/license');
    }
    }

    //license
    public function license(){
        return view('admin.license');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $sale = sale::where('id',request('sale_id'))->first();
        $payment = payment::where('sale_id',$sale->order_id)->get();

        if($sale){
        if(request('pay_wallet')){
            $wallet = request('amount');
            $paid = request('amount');
            $without_wallet=0;
        }
        else{
            $wallet = request('wallet');
            $paid =  $wallet + request('amount');
            $without_wallet =  request('amount');
        }

        // Installment payment
        $sales = sale::where('id',request('sale_id'))->first();
        if($sales->balance > 0){
            // Deduct from customer account
            $customer_account = customer::where('id', request('customer_id'))->first();
            $from = $customer_account->to;
            $new_balance = $from + $paid;
            if($new_balance > 0){
                return redirect()->back()->with('error','The amount paid is greater than actual credit');
            }
                else{
            $update = customer::where('id', request('customer_id'))->update([
                'from'=>$from,
                'to'=>$from + $paid
            ]);
            $customersummary = customerAccountSummary::updateOrcreate(
                [
                    'customer_id'=>request('customer_id'),
                    'from'=>$from,
                    'sale_id'=>request('sale_id'),
                    'to'=>$from + $paid,
                    'status'=>'Installment',
                    'user_id'=>auth()->id()
                ]);
                if(request('wallet') > 0 ){
                         // Deduct amount from e-wallet
            $e_wallet  = customerWallet::where('customer_id',$sales->customer_id)->first();
            $customer_wallet = customerWallet::where('customer_id',$sales->customer_id)->update([
                'amount'=>- $wallet,
                'balance'=>$e_wallet->balance - $wallet,
                ]);
                // Create records for e-wallet transactions
                $wallet_report = customerWalletSummury::create([
                    'customer_id'=>$sales->customer_id,
                    'wallet_id'=> $e_wallet->id,
                    'order_id'=> $sales->order_id,
                    'wallet_amount'=>- $wallet,
                    'wallet_balance'=>$e_wallet->balance - $wallet,
                    'status'=>'Pay via E-Wallet',
                    'user_id'=>auth()->id()
                ]);
                }

            }
            // Add payment records
            $acc_id = account::where('id',request('deposit_account'))->first();;
            $payment = payment::create(
                [   'sale_id'=>$sales->id,
                    'account_id'=> $acc_id->id,
                    'amount'=>$sales->balance,
                    'paid'=> $paid,
                    'wallet'=>$wallet,
                    'balance'=>$sales->balance - $paid,
                    'receipt'=>'Direct',
                    'status'=>'Installment',
                    'user_id'=>auth()->id()
                ]);
                if(request('pay_wallet')){
                // Deduct amount from e-wallet
            $e_wallet  = customerWallet::where('customer_id',$sales->customer_id)->first();
            $customer_wallet = customerWallet::where('customer_id',$sales->customer_id)->update([
                'amount'=>- $wallet,
                'balance'=>$e_wallet->balance - $wallet,
                ]);
               // Create records for e-wallet transactions
               $wallet_report = customerWalletSummury::create([
                'customer_id'=>$sales->customer_id,
                'wallet_id'=> $e_wallet->id,
                'order_id'=> $sales->order_id,
                'wallet_amount'=>- $wallet,
                'wallet_balance'=>$e_wallet->balance - $wallet,
                'status'=>'Pay via E-Wallet',
                'user_id'=>auth()->id()
            ]);
        }
                // Add amount to cash in account
                $cashin = cashIn::create(
                    [
                        'account_id'=>$acc_id->id,
                        'amount_received'=>$paid,
                        'amount_to'=> $acc_id->total + $without_wallet,
                        'cash_category'=>'Sale',
                        'cash_descriptions'=>'Installment and Wallet payment',
                        'user_id'=>auth()->id(),
                    ]
                    );

                    // update sale status
                $balancing = $sales->balance -  $paid;
                if($balancing == 0){
                    $status = "Cash";
                }
                else{
                    $status = "Installment";
                }
            $sale = sale::where('id',request('sale_id'))->update(
                [
                    'paid'=>$sales->paid + request('amount'),
                    'balance'=>$sales->balance - $paid,
                    'status'=> $status
                ]);

            // Add payment to account
            $account = account::where('id',request('deposit_account'))->first();
            $accounts = $account->update([
                'total'=>$account->total + $without_wallet
            ]);
//Double entry customer cash receipt

     $max=accounting::max('id');
     $max_id=$max+1;
     $max_id="trans".$max_id;
     $saleRecord = sale::where('id',request('sale_id'))->first();
     $customerRecord = customer::where('id', request('customer_id'))->first();
     $walletRecord  = customerWallet::where('customer_id',$sales->customer_id)->first();
    //  $supplierRecord = supplier::where('id',request('supplier_id'))->first();
     $deductionRecord = account::where('id',request('deposit_account'))->first();

    //dd($walletRecord);

  // to receiver account

  $receiver = accounting::create([
    'trans_id'=>$max_id,
    'trans_no'=>$payment->id,
    'invoice'=>request('sale_id'),
    'account_id'=>$saleRecord->id,
    'account_name'=>'Sales Invoice',
    'debit'=>$paid,
    'credit'=>0.00,
    'balance'=>0.00,
    'ledger_balance'=>$sales->balance - $paid,
    'payment_via'=>'Cash',
    'account_type'=>"Customer Invoice",
    'status'=>$status,
    'descriptions'=>request('description'),
    'user_id'=>auth()->id()
]);
  // from sender account
     $sender = accounting::create([
         'trans_id'=>$max_id,
         'trans_no'=>$payment->id,
         'invoice'=>request('sale_id'),
         'account_id'=>$customerRecord->id,
         'account_name'=>$customerRecord->customer_name,
         'debit'=>0.00,
         'credit'=>$without_wallet,
         'balance'=>request('amount'),
         'ledger_balance'=>$customerRecord->to,
         'payment_via'=>'Cash',
         'account_type'=>"Customer",
         'status'=>'Cash receive',
         'descriptions'=>request('description'),
         'user_id'=>auth()->id()
     ]);


   //CREDIT MAIN ACCOUNT
   $sender = accounting::create([
    'trans_id'=>$max_id,
    'trans_no'=>$payment->id,
    'invoice'=>request('sale_id'),
    'account_id'=>$deductionRecord->id,
    'account_name'=> $deductionRecord->account_name,
    'debit'=>0.00,
    'credit'=>$without_wallet,
    'balance'=>0.00,
    'ledger_balance'=>$deductionRecord->total,
    'payment_via'=>'Cash',
    'account_type'=>"Payable Account",
    'status'=>'Cash receive',
    'descriptions'=>request('description'),
    'user_id'=>auth()->id()
   ]);
        //END OF DOUBLE ENTRY PURCHASE INVOICE PAYMENTs

                return redirect()->back()->with('success','Payment done successfully');
        }
        else{
        return redirect()->back()->with('error','This payment has a zero balance you cant pay');
        }
    }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
