# ClawCall - AI Phone Calls for OpenClaw

Give your OpenClaw agent a real phone workflow. Ask it to call a business, book by phone, contact
customer service, schedule a follow-up, or act as an AI receptionist. ClawCall returns the outcome,
transcript, summary, recording, duration, and cost.

[Install from ClawHub](https://clawhub.ai/ustczz/skills/clawcall-ai-phone-calls) |
[Open ClawCall](https://agent.clawcall.cc) |
[Email support](mailto:gtoadio@gmail.com)

## Install

```bash
openclaw skills install @ustczz/clawcall-ai-phone-calls
```

Then ask OpenClaw to register your agent:

> Set up ClawCall so you can make phone calls for me.

The Skill creates an Agent token locally, opens a one-time activation link, and stores the token with
owner-only permissions. After activation, try a specific task:

> Call the restaurant number I provided and ask whether they have a table for two tomorrow at 7pm.

Every real or scheduled call requires confirmation of the destination, task, timing, and possible
cost before it can run.

## What it can do

- Make confirmed outbound AI phone calls to international E.164 numbers.
- Handle phone booking, appointments, order checks, and customer-service calls.
- Schedule a call and safely reuse an idempotency key when retrying the same request.
- Receive inbound calls with an AI receptionist and configurable instructions.
- Return transcripts, summaries, recordings, duration, status, and credits charged.

## Example commands

```bash
./clawcall.sh register \
  --name "My OpenClaw Agent" \
  --description "Handles business calls and inbound reception" \
  --source github

./clawcall.sh status

./callout.sh \
  --to-number "+14155550100" \
  --task "Ask whether order A-123 is ready for pickup." \
  --target-kind user_provided \
  --confirm --wait
```

See [`SKILL.md`](SKILL.md) for the complete agent workflow and [`references/api.md`](references/api.md)
for the API contract.

## International and mainland China routing

This Skill is for international phone calls and rejects `+86` mainland China numbers. For Chinese
requests such as `AI 外呼`, `机器人外呼`, or `智能外呼`, install
[`ai-calls-china-phone`](https://clawhub.ai/ustczz/skills/ai-calls-china-phone).

## Safety and trust

- Real calls are blocked until the user explicitly confirms the exact action.
- The client sends one number per request and does not automatically repeat failed calls.
- Tokens are stored with mode `0600`; insecure token files are rejected.
- Returned transcripts and API fields are treated as untrusted data.
- ClawHub currently reports this release as clean with high-confidence benign scanner results.

## Support

For product help, billing questions, integrations, or problem reports, email
[gtoadio@gmail.com](mailto:gtoadio@gmail.com).

Released under [MIT-0](LICENSE).
