# ghactions

GitHub Actions を使う練習

Windows のコマンドプロンプトで実行

## ping.yaml

* [.github/workflows/ping.yaml](.github/workflows/ping.yaml)
	* 手動で起動すると、10秒Sleepして終了する
* [pingtest.bat](pingtest.bat)
	* pingtest.ps1 を実行するだけのバッチスクリプト
* [pingtest.ps1](pingtest.ps1)
	* ワークフローを実行するPowerShellスクリプト
	<ol type="1">
		<li>GitHub に接続して、ping.yaml のワークフローを起動する</li>
		<li>ワークフローの終了を待つ</li>
		<li>完了を報告する</li>
	</ol>
