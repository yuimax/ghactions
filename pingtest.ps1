# ワークフローを起動
Write-Host "ワークフローを起動中..." -ForegroundColor Cyan
gh workflow run ping.yaml

# 起動が反映されるまで少し待機
Start-Sleep -Seconds 3

# mainブランチの最新ランIDを取得
$runId = gh run list --branch main --limit 1 --json databaseId --jq '.[0].databaseId'

# IDが空でなければwatchを開始
if ($runId) {
    Write-Host "ランID: $runId の監視を開始します..." -ForegroundColor Cyan
    gh run watch $runId
}

# 終了をアナウンスする
if ($runId) {
	$text = "お待たせしました。JOB が完了しました。";
} else {
	$text = "mainブランチに実行中のrunが見つかりませんでした。"
}
Write-Host "`n$text" -ForegroundColor Green;
Add-Type -AssemblyName System.Speech;
$voice = New-Object System.Speech.Synthesis.SpeechSynthesizer;
$voice.Volume = 100;
$voice.Rate = 1;
$voice.Speak($text);
