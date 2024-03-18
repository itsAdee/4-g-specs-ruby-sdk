
# OAuth 2 Client Credentials Grant



Documentation for accessing and setting credentials for oAuth2.

## Auth Credentials

| Name | Type | Description | Getter |
|  --- | --- | --- | --- |
| OAuthClientId | `String` | OAuth 2 Client ID | `oauth_client_id` |
| OAuthClientSecret | `String` | OAuth 2 Client Secret | `oauth_client_secret` |
| OAuthToken | `OauthToken` | Object for storing information about the OAuth token | `oauth_token` |
| OAuthScopes | `Array[OauthScopeOauth2Enum]` | List of scopes that apply to the OAuth token | `oauth_scopes` |



**Note:** Auth credentials can be set using `Oauth2Credentials` object, passed in as named parameter `oauth_2credentials` in the client initialization.

## Usage Example

### Client Initialization

You must initialize the client with *OAuth 2.0 Client Credentials Grant* credentials as shown in the following code snippet.

```ruby
client = Verizon::Client.new(
  oauth_2credentials: Oauth2Credentials.new(
    oauth_client_id: 'OAuthClientId',
    oauth_client_secret: 'OAuthClientSecret',
    oauth_scopes: [
      OauthScopeOauth2Enum::DISCOVERYREAD,
      OauthScopeOauth2Enum::SERVICEPROFILEREAD
    ]
  )
)
```



Your application must obtain user authorization before it can execute an endpoint call in case this SDK chooses to use *OAuth 2.0 Client Credentials Grant*. This authorization includes the following steps.

The `fetch_token()` method will exchange the OAuth client credentials for an *access token*. The access token is an object containing information for authorizing client requests and refreshing the token itself.

You must have initialized the client with scopes for which you need permission to access.

```ruby
begin
  token = client.oauth_2.fetch_token
  # update the cloned configuration with the token
  oauth_2credentials = client.config.oauth_2credentials.clone_with(oauth_token: token)
  config = client.config.clone_with(oauth_2credentials: oauth_2credentials)
  # re-instantiate the client with updated configuration
  client = Verizon::Client.new(config: config)
rescue OauthProviderException => ex
  # handle exception
rescue APIException => ex
  # handle exception
end
```

The client can now make authorized endpoint calls.

### Scopes

Scopes enable your application to only request access to the resources it needs while enabling users to control the amount of access they grant to your application. Available scopes are defined in the [`OauthScopeOauth2Enum`](../../doc/models/oauth-scope-oauth-2-enum.md) enumeration.

| Scope Name | Description |
|  --- | --- |
| `DISCOVERYREAD` | Grant read-only access to discovery data |
| `SERVICEPROFILEREAD` | Grant read-only access to service profile data |
| `SERVICEPROFILEWRITE` | Grant write access to service profile data |
| `SERVICEREGISTRYREAD` | Grant read-only access to Service registry data |
| `SERVICEREGISTRYWRITE` | Grant write access to Service registry data |
| `TS_MEC_FULLACCESS` | Full access for /serviceprofiles and /serviceendpoints. |
| `TS_MEC_LIMITACCESS` | Limited access. Will not allow use of /serviceprofiles and /serviceendpoints but will allow discovery. |
| `TS_APPLICATION_RO` |  |
| `EDGEDISCOVERYREAD` |  |
| `EDGESERVICEPROFILEREAD` |  |
| `EDGESERVICEPROFILEWRITE` |  |
| `EDGESERVICEREGISTRYREAD` |  |
| `EDGESERVICEREGISTRYWRITE` |  |
| `READ` | read access |
| `WRITE` | read/write access |

### Storing an access token for reuse

It is recommended that you store the access token for reuse.

```ruby
# store token
save_token_to_database(client.config.oauth_2credentials.oauth_token)
```

### Creating a client from a stored token

To authorize a client from a stored access token, just set the access token in Configuration along with the other configuration parameters before creating the client:

```ruby
# load token later...
token = load_token_from_database

# Update the cloned configuration with the token
  oauth_2credentials = client.config.oauth_2credentials.clone_with(oauth_token: token)
config = client.config.clone_with(oauth_2credentials: oauth_2credentials)
# Re-instantiate the client with updated configuration
client = Client.new(config: config)
```

### Complete example



```ruby
require 'verizon'

include verizon

# function for storing token to database
def save_token_to_database(token)
  # code to save the token to database
end

# function for loading token from database
def load_token_from_database
  # load token from database and return it (return nil if no token exists)
end

# create a new client
client = Verizon::Client.new(
  oauth_2credentials: Oauth2Credentials.new(
    oauth_client_id: 'OAuthClientId',
    oauth_client_secret: 'OAuthClientSecret',
    oauth_scopes: [
      OauthScopeOauth2Enum::DISCOVERYREAD,
      OauthScopeOauth2Enum::SERVICEPROFILEREAD
    ]
  )
)

# obtain access token, needed for client to be authorized
previous_token = load_token_from_database
if previous_token
  # update the cloned configuration with the restored token
  oauth_2credentials = client.config.oauth_2credentials.clone_with(oauth_token: previous_token)
  config = client.config.clone_with(oauth_2credentials: oauth_2credentials)
  # re-instantiate the client with updated configuration
  client = Verizon::Client.new(config: config)
else
  # obtain new access token
  begin
    token = client.auth.fetch_token
    save_token_to_database(token)
    # update the cloned configuration with the token
    oauth_2credentials = client.config.oauth_2credentials.clone_with(oauth_token: token)
    config = client.config.clone_with(oauth_2credentials: oauth_2credentials)
    # re-instantiate the client with updated configuration
    client = Verizon::Client.new(config: config)
  rescue APIException => ex
    # handle exception
  rescue APIException => ex
    # handle exception
  end
end

# the client is now authorized; you can use client to make endpoint calls
```


