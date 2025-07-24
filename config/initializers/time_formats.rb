# created_atやupdated_atの日時のデフォルトのフォーマットは変更することが可能です。
# ここでのフォーマットの指定はconfig/initializersにファイルを作成してそこにコードを
# 追加する形で実現できます
# Time::DATE_FORMATS[:datetime_jp] = '%Y年 %m月%d日'

# 日付：YYYY/MM/DD
Date::DATE_FORMATS[:ymd] = '%Y/%m/%d'
# Time::DATE_FORMATS[:ymd] = '%Y/%m/%d'　
# これは日付だからイラなさそう。日時は下ので指定できている

# 日時：YYYY/MM/DD HH:MM
Time::DATE_FORMATS[:ymd_hm] = '%Y/%m/%d %H:%M'
