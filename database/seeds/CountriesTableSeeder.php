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
            'ar' => ['name' => 'النمسا', 'currency' => ''],
            'en' => ['name' => 'Austria', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'أذربيجان', 'currency' => ''],
            'en' => ['name' => 'Azerbaijan', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'الباهاما', 'currency' => ''],
            'en' => ['name' => 'Bahamas', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'البحرين', 'currency' => ''],
            'en' => ['name' => 'Bahrain', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'بنغلاديش', 'currency' => ''],
            'en' => ['name' => 'Bangladesh', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'بربادوس', 'currency' => ''],
            'en' => ['name' => 'Barbados', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'روسيا البيضاء', 'currency' => ''],
            'en' => ['name' => 'Belarus', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'بلجيكا', 'currency' => ''],
            'en' => ['name' => 'Belgium', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => '', 'currency' => ''],
            'en' => ['name' => 'Belize', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'بليز', 'currency' => ''],
            'en' => ['name' => 'Benin', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'برمودا', 'currency' => ''],
            'en' => ['name' => 'Bermuda', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'بوتان', 'currency' => ''],
            'en' => ['name' => 'Bhutan', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'بوليفيا', 'currency' => ''],
            'en' => ['name' => 'Bolivia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'البوسنة والهرسك', 'currency' => ''],
            'en' => ['name' => 'Bosnia and Herzegovina', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'بوتسوانا', 'currency' => ''],
            'en' => ['name' => 'Botswana', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'البرازيل', 'currency' => ''],
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
            'ar' => ['name' => 'بروناي', 'currency' => ''],
            'en' => ['name' => 'Brunei', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'بلغاريا', 'currency' => ''],
            'en' => ['name' => 'Bulgaria', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'بوركينا فاسو', 'currency' => ''],
            'en' => ['name' => 'Burkina Faso', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'بوروندي', 'currency' => ''],
            'en' => ['name' => 'Burundi', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'كمبوديا', 'currency' => ''],
            'en' => ['name' => 'Cambodia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'الكاميرون', 'currency' => ''],
            'en' => ['name' => 'Cameroon', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'كندا', 'currency' => ''],
            'en' => ['name' => 'Canada', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'الرأس الأخضر', 'currency' => ''],
            'en' => ['name' => 'Cape Verde', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جزر كايمان', 'currency' => ''],
            'en' => ['name' => 'Cayman Islands', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جمهورية افريقيا الوسطى', 'currency' => ''],
            'en' => ['name' => 'Central African Republic', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'تشاد', 'currency' => ''],
            'en' => ['name' => 'Chad', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'تشيلي', 'currency' => ''],
            'en' => ['name' => 'Chile', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'الصين', 'currency' => ''],
            'en' => ['name' => 'China', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جزيرة الكريسماس', 'currency' => ''],
            'en' => ['name' => 'Christmas Island', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جزر كوكوس (كيلينغ)', 'currency' => ''],
            'en' => ['name' => 'Cocos (Keeling) Islands', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'كولومبيا', 'currency' => ''],
            'en' => ['name' => 'Colombia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جزر القمر', 'currency' => ''],
            'en' => ['name' => 'Comoros', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'الكونغو', 'currency' => ''],
            'en' => ['name' => 'Congo', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جمهورية الكونغو الديموقراطية', 'currency' => ''],
            'en' => ['name' => 'Congo The Democratic Republic Of The', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جزر كوك', 'currency' => ''],
            'en' => ['name' => 'Cook Islands', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'كوستا ريكا', 'currency' => ''],
            'en' => ['name' => 'Costa Rica', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'ساحل العاج', 'currency' => ''],
            'en' => ['name' => 'Ivory Coast', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'كرواتيا ', 'currency' => ''],
            'en' => ['name' => 'Croatia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'كوبا', 'currency' => ''],
            'en' => ['name' => 'Cuba
            ', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'قبرص', 'currency' => ''],
            'en' => ['name' => 'Cyprus', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جمهورية التشيك', 'currency' => ''],
            'en' => ['name' => 'Czech Republic', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'الدنمارك', 'currency' => ''],
            'en' => ['name' => 'Denmark', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جيبوتي', 'currency' => ''],
            'en' => ['name' => 'Djibouti', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'دومينيكا', 'currency' => ''],
            'en' => ['name' => 'Dominica', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جمهورية الدومنيكان', 'currency' => ''],
            'en' => ['name' => 'Dominican Republic', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => '', 'currency' => ''],
            'en' => ['name' => 'East Timor', 'currency' => 'USD'],
            'iso_code'      => 'TLS',
            'phone_code'    => '670',
        ]);
        Country::create([
            'ar' => ['name' => 'الإكوادور', 'currency' => ''],
            'en' => ['name' => 'Ecuador', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'مصر', 'currency' => ''],
            'en' => ['name' => 'Egypt', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'السلفادور', 'currency' => ''],
            'en' => ['name' => 'El Salvador', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'غينيا الإستوائية', 'currency' => ''],
            'en' => ['name' => 'Equatorial Guinea', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'إريتريا', 'currency' => ''],
            'en' => ['name' => 'Eritrea', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'استونيا', 'currency' => ''],
            'en' => ['name' => 'Estonia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'أثيوبيا', 'currency' => ''],
            'en' => ['name' => 'Ethiopia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جزر فوكلاند', 'currency' => ''],
            'en' => ['name' => 'Falkland Islands', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جزر صناعية', 'currency' => ''],
            'en' => ['name' => 'Faroe Islands', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جزر فيجي', 'currency' => ''],
            'en' => ['name' => 'Fiji Islands', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'فنلندا', 'currency' => ''],
            'en' => ['name' => 'Finland', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'فرنسا', 'currency' => ''],
            'en' => ['name' => 'France', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => '', 'currency' => ''],
            'en' => ['name' => 'French Guiana', 'currency' => 'EUR'],
            'iso_code'      => 'GUF',
            'phone_code'    => '594',
        ]);
        Country::create([
            'ar' => ['name' => '', 'currency' => ''],
            'en' => ['name' => 'French Polynesia', 'currency' => 'XPF'],
            'iso_code'      => 'PYF',
            'phone_code'    => '689',
        ]);
        Country::create([
            'ar' => ['name' => '', 'currency' => ''],
            'en' => ['name' => 'French Southern Territories', 'currency' => 'EUR'],
            'iso_code'      => 'ATF',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'الغابون', 'currency' => ''],
            'en' => ['name' => 'Gabon', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'غامبيا', 'currency' => ''],
            'en' => ['name' => 'Gambia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جورجيا', 'currency' => ''],
            'en' => ['name' => 'Georgia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'ألمانيا', 'currency' => ''],
            'en' => ['name' => 'Germany', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'غانا', 'currency' => ''],
            'en' => ['name' => 'Ghana', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جبل طارق', 'currency' => ''],
            'en' => ['name' => 'Gibraltar', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'اليونان', 'currency' => ''],
            'en' => ['name' => 'Greece', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'الأرض الخضراء', 'currency' => ''],
            'en' => ['name' => 'Greenland', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'غرينادا', 'currency' => ''],
            'en' => ['name' => 'Grenada', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جوادلوب', 'currency' => ''],
            'en' => ['name' => 'Guadeloupe', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'غوام', 'currency' => ''],
            'en' => ['name' => 'Guam', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'غواتيمالا', 'currency' => ''],
            'en' => ['name' => 'Guatemala', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => '', 'currency' => ''],
            'en' => ['name' => 'Guernsey and Alderney', 'currency' => 'GBP'],
            'iso_code'      => 'GGY',
            'phone_code'    => '+44-1481',
        ]);
        Country::create([
            'ar' => ['name' => 'غينيا', 'currency' => ''],
            'en' => ['name' => 'Guinea', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'غينيا بيساو', 'currency' => ''],
            'en' => ['name' => 'Guinea-Bissau', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'غيانا', 'currency' => ''],
            'en' => ['name' => 'Guyana', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'هايتي', 'currency' => ''],
            'en' => ['name' => 'Haiti', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'هندوراس', 'currency' => ''],
            'en' => ['name' => 'Honduras', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'هونغ كونغ', 'currency' => ''],
            'en' => ['name' => 'Hong Kong', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'المجر', 'currency' => ''],
            'en' => ['name' => 'Hungary', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'أيسلندا', 'currency' => ''],
            'en' => ['name' => 'Iceland', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'الهند', 'currency' => ''],
            'en' => ['name' => 'India', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'أندونيسيا', 'currency' => ''],
            'en' => ['name' => 'Indonesia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'إيران', 'currency' => ''],
            'en' => ['name' => 'Iran', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'العراق', 'currency' => ''],
            'en' => ['name' => 'Iraq', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'أيرلندا', 'currency' => ''],
            'en' => ['name' => 'Ireland', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'الكيان الصهيوني', 'currency' => ''],
            'en' => ['name' => 'Israel', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'إيطاليا', 'currency' => ''],
            'en' => ['name' => 'Italy', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جامايكا', 'currency' => ''],
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
            'ar' => ['name' => '', 'currency' => ''],
            'en' => ['name' => 'Jersey', 'currency' => 'GBP'],
            'iso_code'      => 'JEY',
            'phone_code'    => '+44-1534',
        ]);
        Country::create([
            'ar' => ['name' => 'الأردن', 'currency' => ''],
            'en' => ['name' => 'Jordan', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'كازاخستان', 'currency' => ''],
            'en' => ['name' => 'Kazakhstan', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'كينيا', 'currency' => ''],
            'en' => ['name' => 'Kenya', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'كيريباس', 'currency' => ''],
            'en' => ['name' => 'Kiribati', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'كوريا الشمالية', 'currency' => ''],
            'en' => ['name' => 'Korea North', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'كوريا الجنوبية', 'currency' => ''],
            'en' => ['name' => 'Korea South', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'كوسوفو', 'currency' => ''],
            'en' => ['name' => 'Kosovo', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'الكويت', 'currency' => ''],
            'en' => ['name' => 'Kuwait', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'قرغيزستان', 'currency' => ''],
            'en' => ['name' => 'Kyrgyzstan', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'لاوس', 'currency' => ''],
            'en' => ['name' => 'Laos', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'لاتفيا', 'currency' => ''],
            'en' => ['name' => 'Latvia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'لبنان', 'currency' => ''],
            'en' => ['name' => 'Lebanon', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'ليسوتو', 'currency' => ''],
            'en' => ['name' => 'Lesotho', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'ليبيريا', 'currency' => ''],
            'en' => ['name' => 'Liberia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'ليبيا', 'currency' => ''],
            'en' => ['name' => 'Libya', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'ليختنشتاين', 'currency' => ''],
            'en' => ['name' => 'Liechtenstein', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'ليتوانيا', 'currency' => ''],
            'en' => ['name' => 'Lithuania', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'لوكسمبورغ', 'currency' => ''],
            'en' => ['name' => 'Luxembourg', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => '', 'currency' => ''],
            'en' => ['name' => 'Macau', 'currency' => 'MOP'],
            'iso_code'      => 'MAC',
            'phone_code'    => '853',
        ]);
        Country::create([
            'ar' => ['name' => 'مقدونيا', 'currency' => ''],
            'en' => ['name' => 'Macedonia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'مدغشقر', 'currency' => ''],
            'en' => ['name' => 'Madagascar', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'مالاوي', 'currency' => ''],
            'en' => ['name' => 'Malawi', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'ماليزيا', 'currency' => ''],
            'en' => ['name' => 'Malaysia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جزر المالديف', 'currency' => ''],
            'en' => ['name' => 'Maldives', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'مالي', 'currency' => ''],
            'en' => ['name' => 'Mali', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'مالطا', 'currency' => ''],
            'en' => ['name' => 'Malta', 'currency' => ''],
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
            'ar' => ['name' => 'جزر مارشال', 'currency' => ''],
            'en' => ['name' => 'Marshall Islands', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'مارتينيك', 'currency' => ''],
            'en' => ['name' => 'Martinique', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'موريتانيا', 'currency' => ''],
            'en' => ['name' => 'Mauritania', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'موريشيوس', 'currency' => ''],
            'en' => ['name' => 'Mauritius', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'مايوت', 'currency' => ''],
            'en' => ['name' => 'Mayotte', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'المكسيك', 'currency' => ''],
            'en' => ['name' => 'Mexico', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'ولايات ميكرونيزيا الموحدة', 'currency' => ''],
            'en' => ['name' => 'Micronesia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'مولدوفا', 'currency' => ''],
            'en' => ['name' => 'Moldova', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'موناكو', 'currency' => ''],
            'en' => ['name' => 'Monaco', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'منغوليا', 'currency' => ''],
            'en' => ['name' => 'Mongolia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'الجبل الأسود', 'currency' => 'يورو'],
            'en' => ['name' => 'Montenegro', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'مونتسيرات', 'currency' => ''],
            'en' => ['name' => 'Montserrat', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'المغرب', 'currency' => ''],
            'en' => ['name' => 'Morocco', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'موزمبيق', 'currency' => ''],
            'en' => ['name' => 'Mozambique', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'ميانمار', 'currency' => ''],
            'en' => ['name' => 'Myanmar', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'ناميبيا', 'currency' => ''],
            'en' => ['name' => 'Namibia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'ناورو', 'currency' => ''],
            'en' => ['name' => 'Nauru', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'نيبال', 'currency' => ''],
            'en' => ['name' => 'Nepal', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جزر الأنتيل الهولندية', 'currency' => ''],
            'en' => ['name' => 'Netherlands Antilles', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'هولندا', 'currency' => ''],
            'en' => ['name' => 'Netherlands', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'كاليدونيا الجديدة', 'currency' => ''],
            'en' => ['name' => 'New Caledonia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'نيوزيلندا ', 'currency' => ''],
            'en' => ['name' => 'New Zealand', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'نيكاراغوا', 'currency' => ''],
            'en' => ['name' => 'Nicaragua', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'النيجر', 'currency' => ''],
            'en' => ['name' => 'Niger', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'نيجيريا', 'currency' => ''],
            'en' => ['name' => 'Nigeria', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'نيوي', 'currency' => ''],
            'en' => ['name' => 'Niue', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جزيرة نورفولك', 'currency' => ''],
            'en' => ['name' => 'Norfolk Island', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جزر مريانا الشمالية', 'currency' => ''],
            'en' => ['name' => 'Northern Mariana Islands', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'النرويج', 'currency' => ''],
            'en' => ['name' => 'Norway', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'سلطنة عمان', 'currency' => ''],
            'en' => ['name' => 'Oman', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'باكستان', 'currency' => ''],
            'en' => ['name' => 'Pakistan', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'بالاو', 'currency' => ''],
            'en' => ['name' => 'Palau', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'الأراضي الفلسطينية', 'currency' => ''],
            'en' => ['name' => 'Palestinian Territory', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'بناما', 'currency' => ''],
            'en' => ['name' => 'Panama', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'بابوا غينيا الجديدة', 'currency' => ''],
            'en' => ['name' => 'Papua new Guinea', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'باراغواي', 'currency' => ''],
            'en' => ['name' => 'Paraguay', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'بيرو', 'currency' => ''],
            'en' => ['name' => 'Peru', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'الفلبين', 'currency' => ''],
            'en' => ['name' => 'Philippines', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'بيتكيرن', 'currency' => ''],
            'en' => ['name' => 'Pitcairn', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'بولندا', 'currency' => ''],
            'en' => ['name' => 'Poland', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'البرتغال', 'currency' => ''],
            'en' => ['name' => 'Portugal', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'بورتوريكو', 'currency' => ''],
            'en' => ['name' => 'Puerto Rico', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'قطر', 'currency' => ''],
            'en' => ['name' => 'Qatar', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جمع شمل', 'currency' => ''],
            'en' => ['name' => 'Reunion', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'رومانيا', 'currency' => ''],
            'en' => ['name' => 'Romania', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'روسيا', 'currency' => ''],
            'en' => ['name' => 'Russia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'رواندا', 'currency' => ''],
            'en' => ['name' => 'Rwanda', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'سانت هيلانة', 'currency' => ''],
            'en' => ['name' => 'Saint Helena', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'سانت كيتس ونيفيس', 'currency' => ''],
            'en' => ['name' => 'Saint Kitts And Nevis', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'القديسة لوسيا', 'currency' => ''],
            'en' => ['name' => 'Saint Lucia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'سانت بيير وميكلون', 'currency' => ''],
            'en' => ['name' => 'Saint Pierre and Miquelon', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'سانت فنسنت وجزر غرينادين', 'currency' => ''],
            'en' => ['name' => 'Saint Vincent And The Grenadines', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => '', 'currency' => ''],
            'en' => ['name' => 'Saint-Barthelemy', 'currency' => 'EUR'],
            'iso_code'      => 'BLM',
            'phone_code'    => '590',
        ]);
        Country::create([
            'ar' => ['name' => '', 'currency' => ''],
            'en' => ['name' => 'Saint-Martin', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'ساموا', 'currency' => ''],
            'en' => ['name' => 'Samoa', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'سان مارينو', 'currency' => ''],
            'en' => ['name' => 'San Marino', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'ساو تومي وبرنسيبي', 'currency' => ''],
            'en' => ['name' => 'Sao Tome and Principe', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'المملكة العربية السعودية', 'currency' => ''],
            'en' => ['name' => 'Saudi Arabia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'السنغال', 'currency' => ''],
            'en' => ['name' => 'Senegal', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => '', 'currency' => ''],
            'en' => ['name' => 'Serbia', 'currency' => 'RSD'],
            'iso_code'      => 'SRB',
            'phone_code'    => '381',
        ]);
        Country::create([
            'ar' => ['name' => 'سيشيل', 'currency' => ''],
            'en' => ['name' => 'Seychelles', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'سيرا ليون', 'currency' => ''],
            'en' => ['name' => 'Sierra Leone', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'سنغافورة', 'currency' => ''],
            'en' => ['name' => 'Singapore', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'سلوفاكيا', 'currency' => ''],
            'en' => ['name' => 'Slovakia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'سلوفينيا', 'currency' => ''],
            'en' => ['name' => 'Slovenia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جزر سليمان', 'currency' => ''],
            'en' => ['name' => 'Solomon Islands', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'الصومال', 'currency' => ''],
            'en' => ['name' => 'Somalia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جنوب أفريقيا', 'currency' => ''],
            'en' => ['name' => 'South Africa', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => '', 'currency' => ''],
            'en' => ['name' => 'South Georgia', 'currency' => 'GBP'],
            'iso_code'      => 'SGS',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => '', 'currency' => ''],
            'en' => ['name' => 'South Sudan', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'إسبانيا', 'currency' => ''],
            'en' => ['name' => 'Spain', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'سيريلانكا', 'currency' => ''],
            'en' => ['name' => 'Sri Lanka', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'سودان', 'currency' => ''],
            'en' => ['name' => 'Sudan', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'سورينام', 'currency' => ''],
            'en' => ['name' => 'Suriname', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'سفالبارد وجان مايان', 'currency' => ''],
            'en' => ['name' => 'Svalbard And Jan Mayen', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'سوازيلاند', 'currency' => ''],
            'en' => ['name' => 'Swaziland', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'السويد', 'currency' => ''],
            'en' => ['name' => 'Sweden', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'سويسرا', 'currency' => ''],
            'en' => ['name' => 'Switzerland', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'سوريا', 'currency' => ''],
            'en' => ['name' => 'Syria', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'تايوان', 'currency' => ''],
            'en' => ['name' => 'Taiwan', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'طاجيكستان', 'currency' => ''],
            'en' => ['name' => 'Tajikistan', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'تنزانيا', 'currency' => ''],
            'en' => ['name' => 'Tanzania', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'تايلاند', 'currency' => ''],
            'en' => ['name' => 'Thailand', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'توجو', 'currency' => ''],
            'en' => ['name' => 'Togo', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'توكيلاو', 'currency' => ''],
            'en' => ['name' => 'Tokelau', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'تونغا', 'currency' => ''],
            'en' => ['name' => 'Tonga', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'ترينداد وتوباغو', 'currency' => ''],
            'en' => ['name' => 'Trinidad And Tobago', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'تونس', 'currency' => ''],
            'en' => ['name' => 'Tunisia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'تركيا', 'currency' => ''],
            'en' => ['name' => 'Turkey', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'تركمانستان', 'currency' => ''],
            'en' => ['name' => 'Turkmenistan', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جزر تركس وكايكوس', 'currency' => ''],
            'en' => ['name' => 'Turks And Caicos Islands', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'توفالو', 'currency' => ''],
            'en' => ['name' => 'Tuvalu', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'أوغندا', 'currency' => ''],
            'en' => ['name' => 'Uganda', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'أوكرانيا', 'currency' => ''],
            'en' => ['name' => 'Ukraine', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'الإمارات العربية المتحدة', 'currency' => ''],
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
            'ar' => ['name' => 'الولايات المتحدة', 'currency' => ''],
            'en' => ['name' => 'United States', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'أوروغواي', 'currency' => ''],
            'en' => ['name' => 'Uruguay', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'أوزبكستان', 'currency' => ''],
            'en' => ['name' => 'Uzbekistan', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'فانواتو', 'currency' => ''],
            'en' => ['name' => 'Vanuatu', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'فنزويلا', 'currency' => ''],
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
            'ar' => ['name' => 'جزر العذراء البريطانية', 'currency' => ''],
            'en' => ['name' => 'Virgin Islands - British', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'جزر فيرجن (الولايات المتحدة)', 'currency' => ''],
            'en' => ['name' => 'Virgin Islands - US', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'واليس وفوتونا', 'currency' => ''],
            'en' => ['name' => 'Wallis And Futuna', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'الصحراء الغربية', 'currency' => ''],
            'en' => ['name' => 'Western Sahara', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'اليمن', 'currency' => ''],
            'en' => ['name' => 'Yemen', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'زامبيا', 'currency' => ''],
            'en' => ['name' => 'Zambia', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
        Country::create([
            'ar' => ['name' => 'زيمبابوي', 'currency' => ''],
            'en' => ['name' => 'Zimbabwe', 'currency' => ''],
            'iso_code'      => '',
            'phone_code'    => '',
        ]);
    }
}
