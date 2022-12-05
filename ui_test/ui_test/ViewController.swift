import UIKit
import AVFoundation
class ViewController: UIViewController {
    
    override func viewDidLoad() {
            super.viewDidLoad()
            checkCameraPermission() // 카메라 사용 권한
            checkMikePermission() // 마이크 접근 권한
        }

        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            // [권한 설정 퍼미션 확인 실시]
            if permissionNoArray.count > 0 && permissionNoArray.isEmpty == false {
                self.intentAppSettings(content: permissionNoArray.description+" 권한이 비활성화 상태입니다. 권한 설정으로 이동하시겠습니까?")
            }
        }
        
        // [권한 거부 퍼미션을 담을 배열 선언 생성]
        var permissionNoArray : Array<String> = []

        //[카메라 권한 요청]
        func checkCameraPermission(){
            AVCaptureDevice.requestAccess(for: .video, completionHandler: { (granted: Bool) in
                if !granted {
                    self.permissionNoArray.append("카메라")
                }
            })
        }

        //[마이크 접근 권한 요청]
        func checkMikePermission(){

            AVAudioSession.sharedInstance().requestRecordPermission( {  (granted: Bool) in
                if !granted {
                    self.permissionNoArray.append("마이크")
                }
            })
        }

        // [애플리케이션 설정창 이동 실시 메소드]
        func intentAppSettings(content:String){
            // 앱 설정창 이동 실시
            let settingsAlert = UIAlertController(title: "권한 설정 알림", message: content, preferredStyle: UIAlertController.Style.alert)
            
            let okAction = UIAlertAction(title: "확인", style: .default) { (action) in
                // [확인 버튼 클릭 이벤트 내용 정의 실시]
                if let url = URL(string: UIApplication.openSettingsURLString) {
                    UIApplication.shared.open(url, options: [:], completionHandler: nil)
                }
            }
            settingsAlert.addAction(okAction) // 버튼 클릭 이벤트 객체 연결
            
            let noAction = UIAlertAction(title: "취소", style: .default) { (action) in
                // [취소 버튼 클릭 이벤트 내용 정의 실시]
                return
            }
            settingsAlert.addAction(noAction) // 버튼 클릭 이벤트 객체 연결
            // [alert 팝업창 활성 실시]
            present(settingsAlert, animated: false, completion: nil)
        }
}

