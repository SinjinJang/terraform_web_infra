# terraform_web_infra

Terraform을 이용하여 AWS EC2 인스턴스를 생성하는 예제입니다.

동일한 설정의 EC2 인스턴스를 3개를 생성하도록 하였습니다. (Terraform-1, Terraform-2, Terraform-3)

## How to test

* Terraform 설치 on Linux Mint 19 (Ubuntu 18.04 bionic 코드 기반)
  ```
  # 참고: https://learn.hashicorp.com/tutorials/terraform/install-cli
  curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
  sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com bionic main"
  sudo apt-get update && sudo apt-get install terraform
  ```

* 소스 코드 clone
  ```
  git clone https://github.com/SinjinJang/terraform_web_infra
  cd terraform_web_infra
  ```

* AWS IAM 계정 설정
    * AWS 콘솔에서 terraform 이름의 계정 생성 (가장 아래의 링크 참조)
    * terraform 작업 PC에 키 정보 추가
      ```
      $ vi ~/.aws/credentials  # 편집기를 열어 아래 내용 추가, 키 정보는 위에서 계정 생성 시 확인하여 교체할 것
      [terraform]
      aws_access_key_id = <AWS_ACCESS_KEY_ID>
      aws_secret_access_key = <AWS_SECRET_ACCESS_KEY>
      ```
    * __IMPORTANT__: IAM 키 정보를 provider.tf 파일 내 provider 선언 시 직접 작성할 수도 있습니다.
      다만 보안을 위해서라도, 버전 관리될 소스 코드에는 키 정보를 입력하지 않는 것이 좋으며,
      만약 해당 코드를 github 등에 올릴 경우 키 정보 유출로 인해 AWS에서 연락을 받으실 수 있습니다.
      
* AWS EC2 인스턴스 생성
  ```
  terraform init
  terraform plan
  terraform apply
  ```
* AWS EC2 인스턴스 종료
  ```
  terraform destroy
  ```
  * __NOTE__: 테스트 목적으로 생성된 인스턴스를 그대로 두실 경우 계속 과금이 될 수 있습니다.
    사용이 끝난 인스턴스는 꼭 종료(destroy)를 해주시기 바랍니다.

---

* 참고 링크: https://www.44bits.io/ko/post/terraform_introduction_infrastrucute_as_code
