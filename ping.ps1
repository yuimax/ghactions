# 1. ワークフローを起動
Write-Host "ワークフローを起動中..." -ForegroundColor Cyan
gh workflow run ping.yml

# 起動が反映されるまで少し待機
Start-Sleep -Seconds 3

# 2. 完了まで待機
Write-Host "完了を待機しています..." -ForegroundColor Yellow
gh run watch

# 3. 終了をアナウンスする
$text = "お待たせしました。JOB が完了しました。";
Write-Host $text -ForegroundColor Green;
Add-Type -AssemblyName System.Speech;
$voice = New-Object System.Speech.Synthesis.SpeechSynthesizer;
$voice.Volume = 100;
$voice.Rate = 1;
$voice.Speak($text);
