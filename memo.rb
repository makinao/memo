require "csv" # CSVファイルを扱うためのライブラリを読み込んでいます

puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"

memo_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換しています

# if文を使用して続きを作成していきましょう。
# 「memo_type」の値（1 or 2）によって処理を分岐させていきましょう。
if memo_type == 1
    puts "拡張子を除いたファイルを入力したください"
    
    file_name = gets.chomp
    
    puts "メモしたい内容を入力してください"
    puts "完了したら、Ctrl + D を押してください"
    
    memo = readlines
    
    CSV.open("#{file_name}.csv","w") do |csv|
        csv << ["#{memo}"]
    end
end

if memo_type == 2
    puts "拡張子を除いた既存のファイルを入力してください"
    
    file_name = gets.chomp
    
    puts "編集したい内容入力してください"
    puts "完了したら、Ctrl + D を押してください"
    
    memo = readlines
    
    CSV.open("#{file_name}.csv","w") do |csv|
        csv << ["#{memo}"]
    end
end