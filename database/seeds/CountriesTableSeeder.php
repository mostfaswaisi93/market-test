<?php

use App\Models\Country;
use Illuminate\Database\Seeder;

class CountriesTableSeeder extends Seeder
{
    public function run()
    {
        Country::create([
            'ar' => ['name' => 'أفغانستان', 'currency' => 'أفغاني'],
            'en' => ['name' => 'Afghanistan', 'currency' => 'AFN'],
            'iso_code'      => 'AFG',
            'phone_code'    => '93',
        ]);
        Country::create([
            'ar' => ['name' => 'جزر آلاند', 'currency' => 'يورو'],
            'en' => ['name' => 'Aland Islands', 'currency' => 'EUR'],
            'iso_code'      => 'ALA',
            'phone_code'    => '+358-18',
        ]);
        Country::create([
            'ar' => ['name' => 'ألبانيا', 'currency' => 'ليك ألباني'],
            'en' => ['name' => 'Albania', 'currency' => 'ALL'],
            'iso_code'      => 'ALB',
            'phone_code'    => '355',
        ]);
        Country::create([
            'ar' => ['name' => 'الجزائر', 'currency' => 'دينار جزائري'],
            'en' => ['name' => 'Algeria', 'currency' => 'DZD'],
            'iso_code'      => 'DZA',
            'phone_code'    => '213',
        ]);
        Country::create([
            'ar' => ['name' => 'ساموا الأمريكية', 'currency' => 'دولار أمريكي'],
            'en' => ['name' => 'American Samoa', 'currency' => 'USD'],
            'iso_code'      => 'ASM',
            'phone_code'    => '+1-684',
        ]);
        Country::create([
            'ar' => ['name' => 'أندورا', 'currency' => 'يورو'],
            'en' => ['name' => 'Andorra', 'currency' => 'EUR'],
            'iso_code'      => 'AND',
            'phone_code'    => '376',
        ]);
        Country::create([
            'ar' => ['name' => 'أنغولا', 'currency' => 'كوانزا أنغولي'],
            'en' => ['name' => 'Angola', 'currency' => 'AOA'],
            'iso_code'      => 'AGO',
            'phone_code'    => '244',
        ]);
        Country::create([
            'ar' => ['name' => 'أنجويلا', 'currency' => 'دولار شرق الكاريبي'],
            'en' => ['name' => 'Anguilla', 'currency' => 'XCD'],
            'iso_code'      => 'AIA',
            'phone_code'    => '+1-264',
        ]);
        Country::create([
            'ar' => ['name' => 'انتيغا وباربودا', 'currency' => 'دولار شرق الكاريبي'],
            'en' => ['name' => 'Antigua And Barbuda', 'currency' => 'XCD'],
            'iso_code'      => 'ATG',
            'phone_code'    => '+1-268',
        ]);
        Country::create([
            'ar' => ['name' => 'الأرجنتين', 'currency' => 'بيزو أرجنتيني'],
            'en' => ['name' => 'Argentina', 'currency' => 'ARS'],
            'iso_code'      => 'ARG',
            'phone_code'    => '54',
        ]);
        Country::create([
            'ar' => ['name' => 'أرمينيا', 'currency' => 'درام أرميني'],
            'en' => ['name' => 'Armenia', 'currency' => 'AMD'],
            'iso_code'      => 'ARM',
            'phone_code'    => '374',
        ]);
        Country::create([
            'ar' => ['name' => 'أروبا', 'currency' => 'فلورن أروبي'],
            'en' => ['name' => 'Aruba', 'currency' => 'AWG'],
            'iso_code'      => 'ABW',
            'phone_code'    => '297',
        ]);
        Country::create([
            'ar' => ['name' => 'أستراليا', 'currency' => 'دولار أسترالي'],
            'en' => ['name' => 'Australia', 'currency' => 'AUD'],
            'iso_code'      => 'AUS',
            'phone_code'    => '61',
        ]);
        Country::create([
            'ar' => ['name' => 'النمسا', 'currency' => 'يورو'],
            'en' => ['name' => 'Austria', 'currency' => 'EUR'],
            'iso_code'      => 'AUT',
            'phone_code'    => '43',
        ]);
        Country::create([
            'ar' => ['name' => 'أذربيجان', 'currency' => 'مانات أذربيجاني'],
            'en' => ['name' => 'Azerbaijan', 'currency' => 'AZN'],
            'iso_code'      => 'AZE',
            'phone_code'    => '994',
        ]);
        Country::create([
            'ar' => ['name' => 'الباهاما', 'currency' => 'دولار بهامي'],
            'en' => ['name' => 'Bahamas', 'currency' => 'BSD'],
            'iso_code'      => 'BHS',
            'phone_code'    => '+1-242',
        ]);
        Country::create([
            'ar' => ['name' => 'البحرين', 'currency' => 'دينار بحريني'],
            'en' => ['name' => 'Bahrain', 'currency' => 'BHD'],
            'iso_code'      => 'BHR',
            'phone_code'    => '973',
        ]);
        Country::create([
            'ar' => ['name' => 'بنغلاديش', 'currency' => 'تاكا بنغلاديشي'],
            'en' => ['name' => 'Bangladesh', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'بربادوس', 'currency' => 'دولار بربادوسي'],
            'en' => ['name' => 'Barbados', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'روسيا البيضاء', 'currency' => 'روبل روسي'],
            'en' => ['name' => 'Belarus', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'بلجيكا', 'currency' => 'يورو'],
            'en' => ['name' => 'Belgium', 'currency' => 'EUR'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'بيليز', 'currency' => 'دولار بليزي'],
            'en' => ['name' => 'Belize', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'بنين', 'currency' => 'فرنك غرب أفريقي'],
            'en' => ['name' => 'Benin', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'برمودا', 'currency' => 'دولار برمودي'],
            'en' => ['name' => 'Bermuda', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'بوتان', 'currency' => 'نغولتروم بوتاني'],
            'en' => ['name' => 'Bhutan', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'بوليفيا', 'currency' => 'بوليفيانو بوليفي'],
            'en' => ['name' => 'Bolivia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'البوسنة والهرسك', 'currency' => 'مارك بوسني قابل للتحويل'],
            'en' => ['name' => 'Bosnia and Herzegovina', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'بوتسوانا', 'currency' => 'بولا بوتسواني'],
            'en' => ['name' => 'Botswana', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'البرازيل', 'currency' => 'ريال برازيلي'],
            'en' => ['name' => 'Brazil', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'إقليم المحيط الهندي البريطاني', 'currency' => 'دولار أمريكي'],
            'en' => ['name' => 'British Indian Ocean Territory', 'currency' => 'USD'],
            'iso_code'      => 'IOT',
            'phone_code'    => '‎246',
        ]);
        Country::create([
            'ar' => ['name' => 'بروناي', 'currency' => 'دولار بروني'],
            'en' => ['name' => 'Brunei', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'بلغاريا', 'currency' => 'ليف بلغاري'],
            'en' => ['name' => 'Bulgaria', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'بوركينا فاسو', 'currency' => 'فرنك غرب أفريقي'],
            'en' => ['name' => 'Burkina Faso', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'بوروندي', 'currency' => 'فرنك بوروندي'],
            'en' => ['name' => 'Burundi', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'كمبوديا', 'currency' => 'ريال كمبودي'],
            'en' => ['name' => 'Cambodia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'الكاميرون', 'currency' => 'فرنك وسط أفريقي'],
            'en' => ['name' => 'Cameroon', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'كندا', 'currency' => 'دولار كندي'],
            'en' => ['name' => 'Canada', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'الرأس الأخضر', 'currency' => 'إيسكودو جزر الرأس الأخضر'],
            'en' => ['name' => 'Cape Verde', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جزر كايمان', 'currency' => 'دولار جزر كايمان'],
            'en' => ['name' => 'Cayman Islands', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جمهورية افريقيا الوسطى', 'currency' => 'فرنك وسط أفريقي'],
            'en' => ['name' => 'Central African Republic', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'تشاد', 'currency' => 'فرنك وسط أفريقي'],
            'en' => ['name' => 'Chad', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'تشيلي', 'currency' => 'بيزو تشيلي'],
            'en' => ['name' => 'Chile', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'الصين', 'currency' => 'رنمينبي'],
            'en' => ['name' => 'China', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جزيرة الكريسماس', 'currency' => 'دولار أسترالي'],
            'en' => ['name' => 'Christmas Island', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جزر كوكوس (كيلينغ)', 'currency' => 'دولار أسترالي'],
            'en' => ['name' => 'Cocos (Keeling) Islands', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'كولومبيا', 'currency' => 'بيزو كولومبي'],
            'en' => ['name' => 'Colombia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جزر القمر', 'currency' => 'فرنك قمري'],
            'en' => ['name' => 'Comoros', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'الكونغو', 'currency' => 'فرنك كونغولي'],
            'en' => ['name' => 'Congo', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جمهورية الكونغو الديمقراطية', 'currency' => 'فرنك كونغولي'],
            'en' => ['name' => 'Congo The Democratic Republic Of The', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جزر كوك', 'currency' => 'دولار نيوزيلندي'],
            'en' => ['name' => 'Cook Islands', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'كوستا ريكا', 'currency' => 'كولون كوستاريكي'],
            'en' => ['name' => 'Costa Rica', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'ساحل العاج', 'currency' => 'فرنك غرب أفريقي'],
            'en' => ['name' => 'Ivory Coast', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'كرواتيا ', 'currency' => 'كونا كرواتية'],
            'en' => ['name' => 'Croatia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'كوبا', 'currency' => 'بيزو كوبي'],
            'en' => ['name' => 'Cuba', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'قبرص', 'currency' => 'يورو'],
            'en' => ['name' => 'Cyprus', 'currency' => 'EUR'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جمهورية التشيك', 'currency' => 'كرونة تشيكية'],
            'en' => ['name' => 'Czech Republic', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'الدنمارك', 'currency' => 'كرونة دنماركية'],
            'en' => ['name' => 'Denmark', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جيبوتي', 'currency' => 'فرنك جيبوتي'],
            'en' => ['name' => 'Djibouti', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'دومينيكا', 'currency' => 'دولار شرق الكاريبي'],
            'en' => ['name' => 'Dominica', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جمهورية الدومينيكان', 'currency' => 'بيزو دومنيكاني'],
            'en' => ['name' => 'Dominican Republic', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'تيمور الشرقية', 'currency' => 'دولار أمريكي'],
            'en' => ['name' => 'East Timor', 'currency' => 'USD'],
            'iso_code'      => 'TLS',
            'phone_code'    => '670',
        ]);
        Country::create([
            'ar' => ['name' => 'الإكوادور', 'currency' => 'دولار أمريكي'],
            'en' => ['name' => 'Ecuador', 'currency' => 'USD'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'مصر', 'currency' => 'جنيه مصري'],
            'en' => ['name' => 'Egypt', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'السلفادور', 'currency' => 'دولار أمريكي'],
            'en' => ['name' => 'El Salvador', 'currency' => 'USD'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'غينيا الإستوائية', 'currency' => 'فرنك وسط أفريقي'],
            'en' => ['name' => 'Equatorial Guinea', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'إريتريا', 'currency' => 'ناكفا'],
            'en' => ['name' => 'Eritrea', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'استونيا', 'currency' => 'يورو'],
            'en' => ['name' => 'Estonia', 'currency' => 'EUR'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'أثيوبيا', 'currency' => 'بير إثيوبي'],
            'en' => ['name' => 'Ethiopia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جزر فوكلاند', 'currency' => 'جنيه جزر فوكلاند'],
            'en' => ['name' => 'Falkland Islands', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جزر فارو', 'currency' => 'كرونة دنماركية'],
            'en' => ['name' => 'Faroe Islands', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جزر فيجي', 'currency' => 'دولار فيجي'],
            'en' => ['name' => 'Fiji Islands', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'فنلندا', 'currency' => 'يورو'],
            'en' => ['name' => 'Finland', 'currency' => 'EUR'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'فرنسا', 'currency' => 'يورو'],
            'en' => ['name' => 'France', 'currency' => 'EUR'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'غينيا الفرنسية', 'currency' => 'يورو'],
            'en' => ['name' => 'French Guiana', 'currency' => 'EUR'],
            'iso_code'      => 'GUF',
            'phone_code'    => '594',
        ]);
        Country::create([
            'ar' => ['name' => 'بولينيزيا الفرنسية', 'currency' => 'فرنك باسيفيكي'],
            'en' => ['name' => 'French Polynesia', 'currency' => 'XPF'],
            'iso_code'      => 'PYF',
            'phone_code'    => '689',
        ]);
        Country::create([
            'ar' => ['name' => 'أراضي فرنسية جنوبية وأنتارتيكية', 'currency' => 'يورو'],
            'en' => ['name' => 'French Southern and Antarctic Lands', 'currency' => 'EUR'],
            'iso_code'      => 'ATF',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'الغابون', 'currency' => 'فرنك وسط أفريقي'],
            'en' => ['name' => 'Gabon', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'غامبيا', 'currency' => 'دالاسي غامبي'],
            'en' => ['name' => 'Gambia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جورجيا', 'currency' => 'لاري جورجي'],
            'en' => ['name' => 'Georgia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'ألمانيا', 'currency' => 'يورو'],
            'en' => ['name' => 'Germany', 'currency' => 'EUR'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'غانا', 'currency' => 'سيدي غاني'],
            'en' => ['name' => 'Ghana', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جبل طارق', 'currency' => 'جنيه جبل طارق'],
            'en' => ['name' => 'Gibraltar', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'اليونان', 'currency' => 'يورو'],
            'en' => ['name' => 'Greece', 'currency' => 'EUR'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جرينلاند', 'currency' => 'كرونة دنماركية'],
            'en' => ['name' => 'Greenland', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'غرينادا', 'currency' => 'دولار شرق الكاريبي'],
            'en' => ['name' => 'Grenada', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جوادلوب', 'currency' => 'يورو'],
            'en' => ['name' => 'Guadeloupe', 'currency' => 'EUR'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'غوام', 'currency' => 'دولار أمريكي'],
            'en' => ['name' => 'Guam', 'currency' => 'USD'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'غواتيمالا', 'currency' => 'كتزال غواتيمالي'],
            'en' => ['name' => 'Guatemala', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'آلدرني', 'currency' => 'جنيه إسترليني'],
            'en' => ['name' => 'Guernsey and Alderney', 'currency' => 'GBP'],
            'iso_code'      => 'GGY',
            'phone_code'    => '+44-1481',
        ]);
        Country::create([
            'ar' => ['name' => 'غينيا', 'currency' => 'فرنك غيني'],
            'en' => ['name' => 'Guinea', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'غينيا بيساو', 'currency' => 'فرنك غرب أفريقي'],
            'en' => ['name' => 'Guinea-Bissau', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'غيانا', 'currency' => 'دولار غياني'],
            'en' => ['name' => 'Guyana', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'هايتي', 'currency' => 'دولار أمريكي'],
            'en' => ['name' => 'Haiti', 'currency' => 'USD'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'هندوراس', 'currency' => 'لمبيرة هندوراسية'],
            'en' => ['name' => 'Honduras', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'هونغ كونغ', 'currency' => 'دولار هونغ كونغ'],
            'en' => ['name' => 'Hong Kong', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'المجر', 'currency' => 'فورنت مجري'],
            'en' => ['name' => 'Hungary', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'أيسلندا', 'currency' => 'كرونة آيسلندية'],
            'en' => ['name' => 'Iceland', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'الهند', 'currency' => 'روبية هندية'],
            'en' => ['name' => 'India', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'أندونيسيا', 'currency' => 'روبية إندونيسية'],
            'en' => ['name' => 'Indonesia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'إيران', 'currency' => 'ريال إيراني'],
            'en' => ['name' => 'Iran', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'العراق', 'currency' => 'دينار عراقي'],
            'en' => ['name' => 'Iraq', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'أيرلندا', 'currency' => 'يورو'],
            'en' => ['name' => 'Ireland', 'currency' => 'EUR'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'الكيان الصهيوني', 'currency' => 'شيكل إسرائيلي'],
            'en' => ['name' => 'Israel', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'إيطاليا', 'currency' => 'يورو'],
            'en' => ['name' => 'Italy', 'currency' => 'EUR'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جامايكا', 'currency' => 'دولار جامايكي'],
            'en' => ['name' => 'Jamaica', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'اليابان', 'currency' => 'ين ياباني'],
            'en' => ['name' => 'Japan', 'currency' => 'JPY'],
            'iso_code'      => 'JPN',
            'phone_code'    => '81',
        ]);
        Country::create([
            'ar' => ['name' => 'جيرسي', 'currency' => 'جنيه إسترليني'],
            'en' => ['name' => 'Jersey', 'currency' => 'GBP'],
            'iso_code'      => 'JEY',
            'phone_code'    => '+44-1534',
        ]);
        Country::create([
            'ar' => ['name' => 'الأردن', 'currency' => 'دينار أردني'],
            'en' => ['name' => 'Jordan', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'كازاخستان', 'currency' => 'تينغ كازاخستاني'],
            'en' => ['name' => 'Kazakhstan', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'كينيا', 'currency' => 'شيلينغ كيني'],
            'en' => ['name' => 'Kenya', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'كيريباس', 'currency' => 'دولار أسترالي'],
            'en' => ['name' => 'Kiribati', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'كوريا الشمالية', 'currency' => 'دولار أمريكي'],
            'en' => ['name' => 'Korea North', 'currency' => 'USD'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'كوريا الجنوبية', 'currency' => 'وون كوري جنوبي'],
            'en' => ['name' => 'Korea South', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'كوسوفو', 'currency' => 'يورو'],
            'en' => ['name' => 'Kosovo', 'currency' => 'EUR'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'الكويت', 'currency' => 'دينار كويتي'],
            'en' => ['name' => 'Kuwait', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'قرغيزستان', 'currency' => 'سوم قيرغيزستاني'],
            'en' => ['name' => 'Kyrgyzstan', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'لاوس', 'currency' => 'كيب لاوي'],
            'en' => ['name' => 'Laos', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'لاتفيا', 'currency' => 'يورو'],
            'en' => ['name' => 'Latvia', 'currency' => 'EUR'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'لبنان', 'currency' => 'ليرة لبنانية'],
            'en' => ['name' => 'Lebanon', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'ليسوتو', 'currency' => 'راند جنوب أفريقي'],
            'en' => ['name' => 'Lesotho', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'ليبيريا', 'currency' => 'دولار ليبيري'],
            'en' => ['name' => 'Liberia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'ليبيا', 'currency' => 'دينار ليبي'],
            'en' => ['name' => 'Libya', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'ليختنشتاين', 'currency' => 'فرنك سويسري'],
            'en' => ['name' => 'Liechtenstein', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'ليتوانيا', 'currency' => 'يورو'],
            'en' => ['name' => 'Lithuania', 'currency' => 'EUR'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'لوكسمبورغ', 'currency' => 'يورو'],
            'en' => ['name' => 'Luxembourg', 'currency' => 'EUR'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'ماكاو', 'currency' => 'باتاكا ماكاوية'],
            'en' => ['name' => 'Macau', 'currency' => 'MOP'],
            'iso_code'      => 'MAC',
            'phone_code'    => '853',
        ]);
        Country::create([
            'ar' => ['name' => 'مقدونيا', 'currency' => 'دينار مقدوني'],
            'en' => ['name' => 'Macedonia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'مدغشقر', 'currency' => 'أرياري مدغشقري'],
            'en' => ['name' => 'Madagascar', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'مالاوي', 'currency' => 'كواشا ملاوية'],
            'en' => ['name' => 'Malawi', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'ماليزيا', 'currency' => 'رينغيت ماليزي'],
            'en' => ['name' => 'Malaysia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جزر المالديف', 'currency' => 'روفيا مالديفية'],
            'en' => ['name' => 'Maldives', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'مالي', 'currency' => 'فرنك غرب أفريقي'],
            'en' => ['name' => 'Mali', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'مالطا', 'currency' => 'يورو'],
            'en' => ['name' => 'Malta', 'currency' => 'EUR'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جزيرة مان', 'currency' => 'جنيه إسترليني'],
            'en' => ['name' => 'Isle of Man', 'currency' => 'GBP'],
            'iso_code'      => 'IMN',
            'phone_code'    => '+44-1624',
        ]);
        Country::create([
            'ar' => ['name' => 'جزر مارشال', 'currency' => 'دولار أمريكي'],
            'en' => ['name' => 'Marshall Islands', 'currency' => 'USD'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'مارتينيك', 'currency' => 'يورو'],
            'en' => ['name' => 'Martinique', 'currency' => 'EUR'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'موريتانيا', 'currency' => 'أوقية موريتانية'],
            'en' => ['name' => 'Mauritania', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'موريشيوس', 'currency' => 'روبي موريشي'],
            'en' => ['name' => 'Mauritius', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'مايوت', 'currency' => 'يورو'],
            'en' => ['name' => 'Mayotte', 'currency' => 'EUR'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'المكسيك', 'currency' => 'بيزو مكسيكي'],
            'en' => ['name' => 'Mexico', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'ولايات ميكرونيزيا الموحدة', 'currency' => 'دولار أمريكي'],
            'en' => ['name' => 'Micronesia', 'currency' => 'USD'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'مولدوفا', 'currency' => 'ليو مولدوفي'],
            'en' => ['name' => 'Moldova', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'موناكو', 'currency' => 'يورو'],
            'en' => ['name' => 'Monaco', 'currency' => 'EUR'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'منغوليا', 'currency' => 'توغروغ منغولي'],
            'en' => ['name' => 'Mongolia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'الجبل الأسود', 'currency' => 'يورو'],
            'en' => ['name' => 'Montenegro', 'currency' => 'EUR'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'مونتسيرات', 'currency' => 'دولار شرق الكاريبي'],
            'en' => ['name' => 'Montserrat', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'المغرب', 'currency' => 'درهم مغربي'],
            'en' => ['name' => 'Morocco', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'موزمبيق', 'currency' => 'متكال موزمبيقي'],
            'en' => ['name' => 'Mozambique', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'ميانمار', 'currency' => 'كيات ميانماري'],
            'en' => ['name' => 'Myanmar', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'ناميبيا', 'currency' => 'راند جنوب أفريقي'],
            'en' => ['name' => 'Namibia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'ناورو', 'currency' => 'دولار أسترالي'],
            'en' => ['name' => 'Nauru', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'نيبال', 'currency' => 'روبية نيبالية'],
            'en' => ['name' => 'Nepal', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جزر الأنتيل الهولندية', 'currency' => 'غيلدر الأنتيل الهولندية'],
            'en' => ['name' => 'Netherlands Antilles', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'هولندا', 'currency' => 'يورو'],
            'en' => ['name' => 'Netherlands', 'currency' => 'EUR'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'كاليدونيا الجديدة', 'currency' => 'فرنك باسيفيكي'],
            'en' => ['name' => 'New Caledonia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'نيوزيلندا ', 'currency' => 'دولار نيوزيلندي'],
            'en' => ['name' => 'New Zealand', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'نيكاراغوا', 'currency' => 'كوردبا نيكاراغوا'],
            'en' => ['name' => 'Nicaragua', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'النيجر', 'currency' => 'فرنك غرب أفريقي'],
            'en' => ['name' => 'Niger', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'نيجيريا', 'currency' => 'نيرة نيجيرية'],
            'en' => ['name' => 'Nigeria', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'نييوي', 'currency' => 'دولار نيوزيلندي'],
            'en' => ['name' => 'Niue', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جزيرة نورفولك', 'currency' => 'دولار أسترالي'],
            'en' => ['name' => 'Norfolk Island', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جزر ماريانا الشمالية', 'currency' => 'دولار أمريكي'],
            'en' => ['name' => 'Northern Mariana Islands', 'currency' => 'USD'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'النرويج', 'currency' => 'كرونة نروجية'],
            'en' => ['name' => 'Norway', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'سلطنة عمان', 'currency' => 'ريال عماني'],
            'en' => ['name' => 'Oman', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'باكستان', 'currency' => 'روبية باكستانية'],
            'en' => ['name' => 'Pakistan', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'بالاو', 'currency' => 'دولار أمريكي'],
            'en' => ['name' => 'Palau', 'currency' => 'USD'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'الأراضي الفلسطينية', 'currency' => 'شيكل إسرائيلي'],
            'en' => ['name' => 'Palestinian Territory', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'بناما', 'currency' => 'دولار أمريكي'],
            'en' => ['name' => 'Panama', 'currency' => 'USD'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'بابوا غينيا الجديدة', 'currency' => 'بابوا غينيا الجديدة'],
            'en' => ['name' => 'Papua new Guinea', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'باراغواي', 'currency' => 'غواراني باراغواي'],
            'en' => ['name' => 'Paraguay', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'بيرو', 'currency' => 'سول بيروفي جديد'],
            'en' => ['name' => 'Peru', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'الفلبين', 'currency' => 'بيسو فلبيني'],
            'en' => ['name' => 'Philippines', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'بيتكيرن', 'currency' => 'دولار نيوزيلندي'],
            'en' => ['name' => 'Pitcairn', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'بولندا', 'currency' => 'زلوتي بولندي'],
            'en' => ['name' => 'Poland', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'البرتغال', 'currency' => 'يورو'],
            'en' => ['name' => 'Portugal', 'currency' => 'EUR'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'بورتوريكو', 'currency' => 'دولار أمريكي'],
            'en' => ['name' => 'Puerto Rico', 'currency' => 'USD'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'قطر', 'currency' => 'ريال قطري'],
            'en' => ['name' => 'Qatar', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'ريونيون', 'currency' => 'يورو'],
            'en' => ['name' => 'Reunion', 'currency' => 'EUR'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'رومانيا', 'currency' => 'ليو روماني'],
            'en' => ['name' => 'Romania', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'روسيا', 'currency' => 'روبل روسي'],
            'en' => ['name' => 'Russia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'رواندا', 'currency' => 'فرنك رواندي'],
            'en' => ['name' => 'Rwanda', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'سانت هيلانة', 'currency' => 'جنيه سانت هيليني'],
            'en' => ['name' => 'Saint Helena', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'سانت كيتس ونيفيس', 'currency' => 'دولار شرق الكاريبي'],
            'en' => ['name' => 'Saint Kitts And Nevis', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'القديسة لوسيا', 'currency' => 'دولار شرق الكاريبي'],
            'en' => ['name' => 'Saint Lucia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'سانت بيير وميكلون', 'currency' => 'يورو'],
            'en' => ['name' => 'Saint Pierre and Miquelon', 'currency' => 'EUR'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'سانت فنسنت وجزر غرينادين', 'currency' => 'دولار شرق الكاريبي'],
            'en' => ['name' => 'Saint Vincent And The Grenadines', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'سانت بارتيليمي', 'currency' => 'يورو'],
            'en' => ['name' => 'Saint-Barthelemy', 'currency' => 'EUR'],
            'iso_code'      => 'BLM',
            'phone_code'    => '590',
        ]);
        Country::create([
            'ar' => ['name' => 'سانت مارتن', 'currency' => 'غيلدر الأنتيل الهولندية'],
            'en' => ['name' => 'Saint-Martin', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'ساموا', 'currency' => 'تالا ساموي'],
            'en' => ['name' => 'Samoa', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'سان مارينو', 'currency' => 'يورو'],
            'en' => ['name' => 'San Marino', 'currency' => 'EUR'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'ساو تومي وبرينسيبي', 'currency' => 'دوبرا ساو تومي وبرينسيب'],
            'en' => ['name' => 'Sao Tome and Principe', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'المملكة العربية السعودية', 'currency' => 'ريال سعودي'],
            'en' => ['name' => 'Saudi Arabia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'السنغال', 'currency' => 'فرنك غرب أفريقي'],
            'en' => ['name' => 'Senegal', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'صربيا', 'currency' => 'دينار صربي'],
            'en' => ['name' => 'Serbia', 'currency' => 'RSD'],
            'iso_code'      => 'SRB',
            'phone_code'    => '381',
        ]);
        Country::create([
            'ar' => ['name' => 'سيشيل', 'currency' => 'روبية سيشلية'],
            'en' => ['name' => 'Seychelles', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'سيرا ليون', 'currency' => 'ليون سيراليوني'],
            'en' => ['name' => 'Sierra Leone', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'سنغافورة', 'currency' => 'دولار سنغافوري'],
            'en' => ['name' => 'Singapore', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'سلوفاكيا', 'currency' => 'يورو'],
            'en' => ['name' => 'Slovakia', 'currency' => 'EUR'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'سلوفينيا', 'currency' => 'يورو'],
            'en' => ['name' => 'Slovenia', 'currency' => 'EUR'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جزر سليمان', 'currency' => 'دولار جزر سليمان'],
            'en' => ['name' => 'Solomon Islands', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'الصومال', 'currency' => 'دولار أمريكي'],
            'en' => ['name' => 'Somalia', 'currency' => 'USD'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جنوب أفريقيا', 'currency' => 'راند جنوب أفريقي'],
            'en' => ['name' => 'South Africa', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'ساوث جورجيا', 'currency' => 'جنيه إسترليني'],
            'en' => ['name' => 'South Georgia', 'currency' => 'GBP'],
            'iso_code'      => 'SGS',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جنوب السودان', 'currency' => 'جنيه جنوب سوداني'],
            'en' => ['name' => 'South Sudan', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'إسبانيا', 'currency' => 'يورو'],
            'en' => ['name' => 'Spain', 'currency' => 'EUR'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'سيريلانكا', 'currency' => 'روبية سريلانكي'],
            'en' => ['name' => 'Sri Lanka', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'السودان', 'currency' => 'جنيه سوداني'],
            'en' => ['name' => 'Sudan', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'سورينام', 'currency' => 'دولار سورينامي'],
            'en' => ['name' => 'Suriname', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'سوازيلاند', 'currency' => 'راند جنوب أفريقي'],
            'en' => ['name' => 'Swaziland', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'السويد', 'currency' => 'كرونة سويدية'],
            'en' => ['name' => 'Sweden', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'سويسرا', 'currency' => 'فرنك سويسري'],
            'en' => ['name' => 'Switzerland', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'سوريا', 'currency' => 'ليرة سورية'],
            'en' => ['name' => 'Syria', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'تايوان', 'currency' => 'دولار تايواني جديد'],
            'en' => ['name' => 'Taiwan', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'طاجيكستان', 'currency' => 'ساماني طاجيكي'],
            'en' => ['name' => 'Tajikistan', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'تنزانيا', 'currency' => 'شلن تنزاني'],
            'en' => ['name' => 'Tanzania', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'تايلاند', 'currency' => 'بات تايلاندي'],
            'en' => ['name' => 'Thailand', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'توجو', 'currency' => 'فرنك غرب أفريقي'],
            'en' => ['name' => 'Togo', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'توكيلاو', 'currency' => 'دولار نيوزيلندي'],
            'en' => ['name' => 'Tokelau', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'تونغا', 'currency' => 'بانغا تونغي'],
            'en' => ['name' => 'Tonga', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'ترينيداد وتوباغو', 'currency' => 'دولار ترينيداد وتوباغو'],
            'en' => ['name' => 'Trinidad And Tobago', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'تونس', 'currency' => 'دينار تونسي'],
            'en' => ['name' => 'Tunisia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'تركيا', 'currency' => 'ليرة تركية'],
            'en' => ['name' => 'Turkey', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'تركمانستان', 'currency' => 'منات تركمانستاني'],
            'en' => ['name' => 'Turkmenistan', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جزر تركس وكايكوس', 'currency' => 'دولار أمريكي'],
            'en' => ['name' => 'Turks And Caicos Islands', 'currency' => 'USD'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'توفالو', 'currency' => 'دولار أسترالي'],
            'en' => ['name' => 'Tuvalu', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'أوغندا', 'currency' => 'شيلينغ أوغندي'],
            'en' => ['name' => 'Uganda', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'أوكرانيا', 'currency' => 'هريفنا أوكرانية'],
            'en' => ['name' => 'Ukraine', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'الإمارات العربية المتحدة', 'currency' => 'درهم إماراتي'],
            'en' => ['name' => 'United Arab Emirates', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'المملكة المتحدة', 'currency' => 'جنيه إسترليني'],
            'en' => ['name' => 'United Kingdom', 'currency' => 'GBP'],
            'iso_code'      => 'GBR',
            'phone_code'    => '44',
        ]);
        Country::create([
            'ar' => ['name' => 'الولايات المتحدة', 'currency' => 'دولار أمريكي'],
            'en' => ['name' => 'United States', 'currency' => 'USD'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'أوروغواي', 'currency' => 'بيزو أوروغواي'],
            'en' => ['name' => 'Uruguay', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'أوزبكستان', 'currency' => 'سوم أوزبكستاني'],
            'en' => ['name' => 'Uzbekistan', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'فانواتو', 'currency' => 'فاتو فانواتي'],
            'en' => ['name' => 'Vanuatu', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'فنزويلا', 'currency' => 'بوليفار فنزويلي'],
            'en' => ['name' => 'Venezuela', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'فيتنام', 'currency' => 'دونغ فيتنامي'],
            'en' => ['name' => 'Vietnam', 'currency' => 'VND'],
            'iso_code'      => 'VNM',
            'phone_code'    => '84',
        ]);
        Country::create([
            'ar' => ['name' => 'جزر فيرجن البريطانية', 'currency' => 'دولار أمريكي'],
            'en' => ['name' => 'Virgin Islands - British', 'currency' => 'USD'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'واليس وفوتونا', 'currency' => 'فرنك باسيفيكي'],
            'en' => ['name' => 'Wallis And Futuna', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'الصحراء الغربية', 'currency' => 'درهم مغربي'],
            'en' => ['name' => 'Western Sahara', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'اليمن', 'currency' => 'ريال يمني'],
            'en' => ['name' => 'Yemen', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'زامبيا', 'currency' => 'كواشا زامبي'],
            'en' => ['name' => 'Zambia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'زيمبابوي', 'currency' => 'دولار أمريكي'],
            'en' => ['name' => 'Zimbabwe', 'currency' => 'USD'],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
    }
}
