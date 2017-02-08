# GLiMR Emulator

## Overview

The GLiMR Emulator is intended as a drop-in replacement for the most
basic GLiMR API call: `/registernewcase`.  Its use-case is user testing
and front-end app development in situations where full access to GLiMR
is either not available or not needed.  It is ***NOT*** intended to
fully emulate the GLiMR API.

## Installation

```bash
  git clone git@github.com:ministryofjustice/glimr-emulator.git
  cd glimr-emulator
  gem install bundler
  bundle install
  ruby app.rb
```

## With docker-compose

```bash
  git clone git@github.com:ministryofjustice/glimr-emulator.git
  cd glimr-emulator
  docker-compose build
  docker-compose up
```

## Testing

Due to the simplicity and intended use of the app, there are currently
no tests.  Once the app is running, it is a simple matter to check that
it is operating correctly:

```bash
  curl -XPOST http://localhost:4567/Live_API/api/tdsapi/registernewcase
```

Should return something like this:

```json
{"jurisdictionId":8,"tribunalCaseId":"008417","tribunalCaseNumber":"TC/2017/001105","caseTitle":"Betsey
Nitzsche vs HMRC","confirmationCode":"ABC123"}
```

Where `tribunalCaseID`, `tribunalCaseNumber` and `caseTitle` change
randomly with each request.

The `Content-Type` response header is `applicaiton/json`.
