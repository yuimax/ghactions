# ghactions

GitHub Actions を使う練習

## 必要なツール
* Windows のコマンドプロンプト (cmd.exe)
* PowerShell v7 (pwsh.exe)
* GitHub CLI (gh.exe)

## ping.yaml

* <.github/workflows/ping.yaml>
	* 手動で起動すると、15秒Sleepして終了する
* [pingtest.bat](pingtest.bat)
	* pingtest.ps1 を実行するだけのバッチスクリプト
* [pingtest.ps1](pingtest.ps1)
	* ワークフローを実行するPowerShellスクリプト
	* (1) GitHub に接続して、ping.yaml のワークフローを起動する
	* (2) ワークフローの終了を待つ
	* (3) 完了を報告する
