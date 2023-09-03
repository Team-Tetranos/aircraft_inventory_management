class EndPoints{
    //final String base_url = 'http://127.0.0.1:8000/api/';
    final String base_url = 'https://armyaviationmaintenanceworkshop.com/api/';
    final String image_base_url = 'https://armyaviationmaintenanceworkshop.com';
    //final String image_base_url = 'http://127.0.0.1:8000';

    final String login = 'user/login/';
    final String signup = 'user/register/';
    final String send_otp = 'otp/send-otp/';
    final String verify_otp = 'otp/verify-otp/';
    final String reset_password = 'user/reset-password/';
    final String add_aircraft = 'aircraft/create-aircraft/';
    final String all_aircraft = 'aircraft/all-aircraft/';
    final String add_aircraft_item = 'aircraft/create-aircraft-item/';
    final String all_aircraft_item = 'aircraft/all-aircraft-item/';

    //super admin staff
    final String all_profile = 'profile/all-profile/';

    final String profile_detail = 'profile/user-profile/';

    final String update_profile = 'profile/update-profile/';
    final String verify_profile = 'profile/verify-profile/';

    //stock record
    final String create_stock_record = 'stock-record/create-stock-records/';
    final String get_stock_record_by_aircraft = 'stock-record/stock-records-by/';
    final String get_stock_history_by_record = 'stock-history/stock-history-by-record/';
    final String create_bulk_stock_history = 'stock-history/create-bulk-stock-history/';
    final String create_stock_history = 'stock-history/create-stock-history/';

    final String stock_record_by_id = 'stock-record/stock-records-by-id/';
    final String stock_record_notification = 'stock-record/stock-notification/';
    final String stock_record_report = 'stock-record/stock-record-report/';
    final String stock_history_by_id = 'stock-history/stock-history-by-id/';
    final String help_and_support = 'help/help-desk/';
    final String post_database ='demand/create-demand/';
}