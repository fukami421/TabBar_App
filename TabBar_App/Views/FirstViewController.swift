//
//  FirstViewController.swift
//  TabBar_App
//
//  Created by 深見龍一 on 2019/12/20.
//  Copyright © 2019 深見龍一. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class FirstViewController: UIViewController {
    private let disposeBag = DisposeBag()
    @IBOutlet weak var modalBtn: UIButton!
    @IBOutlet weak var pushBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "モーダル, プッシュ遷移元"
        self.bind()
    }
    
    private func bind()
    {
        self.modalBtn.rx.tap
        .subscribe { [unowned self] _ in
            let modalVC = UINavigationController(rootViewController: ModalViewController.init(nibName: nil, bundle: nil))
            modalVC.modalPresentationStyle = .fullScreen
            self.present(modalVC, animated: true, completion: nil)//遷移する
        }
        .disposed(by: self.disposeBag)

        self.pushBtn.rx.tap
        .subscribe { [unowned self] _ in
            let pushVC = PushViewController.init(nibName: nil, bundle: nil)
            self.navigationController?.pushViewController(pushVC, animated: true)//遷移する
        }
        .disposed(by: self.disposeBag)
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
