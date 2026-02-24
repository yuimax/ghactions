# ghactions

GitHub Actions を使う練習

Windows のコマンドプロンプトで実行

## ping.yaml

* [.github/workflows/ping.yaml](.github/worlflows/ping.yaml)
	* 手動で起動すると、15秒Sleepして終了する
* [ping.bat](ping.bat)
	* ping.ps1 を実行するだけのバッチスクリプト
* [ping.ps1](ping.ps1)
	1. GitHub に接続して、ping.yaml のワークフローを起動する
	2. ワークフローの終了を待つ
	3. 完了を報告する
	