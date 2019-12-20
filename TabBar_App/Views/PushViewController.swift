//
//  PushViewController.swift
//  TabBar_App
//
//  Created by 深見龍一 on 2019/12/20.
//  Copyright © 2019 深見龍一. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class PushViewController: UIViewController {

    private let disposeBag = DisposeBag()
    @IBOutlet weak var pushBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "モーダル遷移先, プッシュ遷移元"
        self.bind()
    }
    
    private func bind()
    {
        pushBtn.rx.tap
        .subscribe { [unowned self] _ in
            let modalVC = UINavigationController(rootViewController: ModalViewController.init(nibName: nil, bundle: nil))
            modalVC.modalPresentationStyle = .fullScreen
            self.present(modalVC, animated: true, completion: nil)//遷移する
        }
        .disposed(by: self.disposeBag)
    }
}
