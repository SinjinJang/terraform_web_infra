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

---

* 참고 링크: https://www.44bits.io/ko/post/terraform_introduction_infrastrucute_as_code
