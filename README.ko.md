# howtotalk — AI를 위한 소통 프레임워크

13개의 소통·설득·대화 프레임워크를 Claude Code 스킬로 만들었습니다.
상황을 말하면 `/howtotalk`가 최적의 대화법을 자동 선택합니다.

## 프레임워크 목록

### 설득 & 협상
| 스킬 | 창시자 | 용도 |
|------|--------|------|
| `/nvc` | 마셜 로젠버그 | 비폭력 대화 — 비난 없이 욕구 표현, 공감으로 갈등 해결 |
| `/crucial` | 패터슨, 그래니 등 | 결정적 대화 — 감정이 격해지는 중요한 대화 |
| `/negotiate` | 크리스 보스 (전 FBI) | 전술적 협상 — 연봉, 거래, 계약 |
| `/principled` | 피셔 & 유리 (하버드) | 원칙 협상 — 윈윈, BATNA |
| `/influence` | 로버트 치알디니 | 설득의 7원칙 — 마케팅, 조작 감지 |

### 피드백 & 리더십
| 스킬 | 창시자 | 용도 |
|------|--------|------|
| `/candor` | 킴 스콧 (전 구글/애플) | 래디컬 캔더 — 아끼면서 직설적으로 |
| `/difficult` | 스톤, 패턴, 힌 (하버드) | 어려운 대화 — 미뤄왔던 대화 시작하기 |
| `/mi` | 밀러 & 롤닉 | 동기면담 — 변화를 거부하는 사람 움직이기 |

### 발표 & 교육
| 스킬 | 창시자 | 용도 |
|------|--------|------|
| `/story` | 캠벨, 듀아르테, 픽사 | 스토리텔링 — 프레젠테이션, 피치, 내러티브 |
| `/socratic` | 소크라테스 | 소크라테스식 질문 — 가르치기, 코칭 |

### 자기인식 & 경청
| 스킬 | 창시자 | 용도 |
|------|--------|------|
| `/scarf` | 데이빗 록 | 뇌과학 SCARF 모델 — 팀 역학, 위협/보상 이해 |
| `/listen` | 칼 로저스 | 적극적 경청 — 진짜 듣기 |
| `/assert` | DESC 프레임워크 | 자기주장 — 경계 설정, 자기표현 |

### 메타 에이전트
| `/howtotalk` | 상황을 말하면 13개 중 최적의 대화법을 자동 선택 |

## 설치

```bash
# 14개 스킬 한번에 설치
curl -fsSL https://raw.githubusercontent.com/ironyjk/howtotalk/master/install.sh | bash

# 자동 업데이트 훅 포함
curl ... | bash -s -- --with-hook
```

## 사용법

```
/howtotalk 내일 팀원에게 반복되는 지각 문제를 얘기해야 한다
/nvc 동료가 내 의견을 무시하는 것 같아서 화가 난다
/negotiate 연봉 협상 내일인데 준비하고 싶다
/candor:feedback 팀원이 계속 마감을 놓치고 있다
/story:pitch 투자자에게 3분 피치
/socratic 주니어에게 코드 리뷰를 가르치고 싶다
```

## 관련 프로젝트

- [strategy-frameworks](https://github.com/ironyjk/strategy-frameworks) — 전략 프레임워크 9개 + `/think`
- [toc-agents](https://github.com/ironyjk/toc-agents) — TOC 11개 도구
- [triz-agents](https://github.com/ironyjk/triz-agents) — TRIZ 9개 도구

## 라이선스

MIT

## 만든 사람

@ironyjk × Claude Code
