# ClawCall · AI Phone Calls

OpenClaw Skill for confirmed outbound AI phone calls, public business lookup, scheduled calls, inbound
reception, transcripts, recordings, and costs.

- ClawHub: <https://clawhub.ai/ustczz/skills/clawcall-ai-phone-calls>
- Product: <https://agent.clawcall.cc>
- Support: <gtoadio@gmail.com>
- Skill instructions: [`SKILL.md`](SKILL.md)

## Search And Routing

This Skill targets English requests such as `AI phone calls`, `make a call`, `call customer service`,
`book by phone`, `outbound calls`, and `AI receptionist`. It accepts international E.164 numbers and
rejects `+86` mainland China numbers, which are handled by
[`ai-calls-china-phone`](https://clawhub.ai/ustczz/skills/ai-calls-china-phone).

## Quick Check

```bash
./clawcall.sh --client-version
./clawcall.sh --help
```

A real or scheduled call remains blocked until the user confirms the exact destination, task, timing,
and possible cost and the caller passes `--confirm`.
