if (!require("devtools")) {
  cat("The 'devtools' package is not installed.\n")
} else {
  cat("The 'devtools' package is already installed.\n")
}


library(M4metalearning)
library(tsintermittent)
library(fide)
devtools::install_github("robjhyndman/M4metalearning")

devtools::install_github("lily940703/fide")

# 시드 설정 (재현성을 위해)
set.seed(2022)

# 샘플 인덱스 생성: dataset_simulation_train에서 20개의 샘플을 무작위로 선택
id_sample <- sample(1:length(dataset_simulation_train), 20)

# 학습 및 테스트 세트 생성
dataset_train_example <- dataset_simulation_train[id_sample]
dataset_test_example <- dataset_simulation_test[id_sample]


