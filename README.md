# TL;DR

```shell
pip install -r requirements.txt
# first terminal
python3 manage.py runserver --noreload
# second terminal
python3 client.py hello | jq
```

result:

```json
{
  "name": "client-server",
  "context": {
    "trace_id": "0xce55695e25dd8cdd08b365e5875d0dee",
    "span_id": "0x891280f2ddd6fdfc",
    "trace_state": "[]"
  },
  "kind": "SpanKind.INTERNAL",
  "parent_id": "0x7c2ac1bbe32871f9",
  "start_time": "2023-02-19T09:07:21.740114Z",
  "end_time": "2023-02-19T09:07:21.769404Z",
  "status": {
    "status_code": "UNSET"
  },
  "attributes": {},
  "events": [],
  "links": [],
  "resource": {
    "attributes": {
      "telemetry.sdk.language": "python",
      "telemetry.sdk.name": "opentelemetry",
      "telemetry.sdk.version": "1.16.0",
      "service.name": "unknown_service"
    },
    "schema_url": ""
  }
}
{
  "name": "client",
  "context": {
    "trace_id": "0xce55695e25dd8cdd08b365e5875d0dee",
    "span_id": "0x7c2ac1bbe32871f9",
    "trace_state": "[]"
  },
  "kind": "SpanKind.INTERNAL",
  "parent_id": null,
  "start_time": "2023-02-19T09:07:21.740039Z",
  "end_time": "2023-02-19T09:07:21.769462Z",
  "status": {
    "status_code": "UNSET"
  },
  "attributes": {},
  "events": [],
  "links": [],
  "resource": {
    "attributes": {
      "telemetry.sdk.language": "python",
      "telemetry.sdk.name": "opentelemetry",
      "telemetry.sdk.version": "1.16.0",
      "service.name": "unknown_service"
    },
    "schema_url": ""
  }
}
```

# [long](./README.rst)
