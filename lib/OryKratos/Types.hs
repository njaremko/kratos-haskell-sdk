{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module OryKratos.Types (
  CompleteSelfServiceLoginFlowWithPasswordMethod (..),
  CompleteSelfServiceRecoveryFlowWithLinkMethod (..),
  CompleteSelfServiceSettingsFlowWithPasswordMethod (..),
  CompleteSelfServiceVerificationFlowWithLinkMethod (..),
  CreateIdentity (..),
  CreateRecoveryLink (..),
  ErrorContainer (..),
  FormField (..),
  GenericError (..),
  GenericErrorPayload (..),
  HealthNotReadyStatus (..),
  HealthStatus (..),
  Identity (..),
  LoginFlow (..),
  LoginFlowMethod (..),
  LoginFlowMethodConfig (..),
  LoginViaApiResponse (..),
  Message (..),
  RecoveryAddress (..),
  RecoveryFlow (..),
  RecoveryFlowMethod (..),
  RecoveryFlowMethodConfig (..),
  RecoveryLink (..),
  RegistrationFlow (..),
  RegistrationFlowMethod (..),
  RegistrationFlowMethodConfig (..),
  RegistrationViaApiResponse (..),
  RevokeSession (..),
  Session (..),
  SettingsFlow (..),
  SettingsFlowMethod (..),
  SettingsFlowMethodConfig (..),
  SettingsViaApiResponse (..),
  UpdateIdentity (..),
  VerifiableAddress (..),
  VerificationFlow (..),
  VerificationFlowMethod (..),
  VerificationFlowMethodConfig (..),
  Version (..),
  ) where

import Data.Data (Data)
import Data.UUID (UUID)
import Data.List (stripPrefix)
import Data.Maybe (fromMaybe)
import Data.Aeson (Value, FromJSON(..), ToJSON(..), genericToJSON, genericParseJSON)
import Data.Aeson.Types (Options(..), defaultOptions)
import Data.Set (Set)
import Data.Text (Text)
import Data.Time
import Data.Swagger (ToSchema, declareNamedSchema)
import qualified Data.Swagger as Swagger
import qualified Data.Char as Char
import qualified Data.Text as T
import qualified Data.Map as Map
import GHC.Generics (Generic)
import Data.Function ((&))


-- | CompleteSelfServiceLoginFlowWithPasswordMethod CompleteSelfServiceLoginFlowWithPasswordMethod CompleteSelfServiceLoginFlowWithPasswordMethod CompleteSelfServiceLoginFlowWithPasswordMethod CompleteSelfServiceLoginFlowWithPasswordMethod CompleteSelfServiceLoginFlowWithPasswordMethod CompleteSelfServiceLoginFlowWithPasswordMethod CompleteSelfServiceLoginFlowWithPasswordMethod complete self service login flow with password method
data CompleteSelfServiceLoginFlowWithPasswordMethod = CompleteSelfServiceLoginFlowWithPasswordMethod
  { completeSelfServiceLoginFlowWithPasswordMethodCsrfUnderscoretoken :: Maybe Text -- ^ Sending the anti-csrf token is only required for browser login flows.
  , completeSelfServiceLoginFlowWithPasswordMethodIdentifier :: Maybe Text -- ^ Identifier is the email or username of the user trying to log in.
  , completeSelfServiceLoginFlowWithPasswordMethodPassword :: Maybe Text -- ^ The user's password.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CompleteSelfServiceLoginFlowWithPasswordMethod where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "completeSelfServiceLoginFlowWithPasswordMethod")
instance ToJSON CompleteSelfServiceLoginFlowWithPasswordMethod where
  toJSON = genericToJSON (removeFieldLabelPrefix False "completeSelfServiceLoginFlowWithPasswordMethod")


-- | CompleteSelfServiceRecoveryFlowWithLinkMethod CompleteSelfServiceRecoveryFlowWithLinkMethod CompleteSelfServiceRecoveryFlowWithLinkMethod CompleteSelfServiceRecoveryFlowWithLinkMethod CompleteSelfServiceRecoveryFlowWithLinkMethod CompleteSelfServiceRecoveryFlowWithLinkMethod CompleteSelfServiceRecoveryFlowWithLinkMethod CompleteSelfServiceRecoveryFlowWithLinkMethod complete self service recovery flow with link method
data CompleteSelfServiceRecoveryFlowWithLinkMethod = CompleteSelfServiceRecoveryFlowWithLinkMethod
  { completeSelfServiceRecoveryFlowWithLinkMethodCsrfUnderscoretoken :: Maybe Text -- ^ Sending the anti-csrf token is only required for browser login flows.
  , completeSelfServiceRecoveryFlowWithLinkMethodEmail :: Maybe Text -- ^ Email to Recover  Needs to be set when initiating the flow. If the email is a registered recovery email, a recovery link will be sent. If the email is not known, a email with details on what happened will be sent instead.  format: email in: body
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CompleteSelfServiceRecoveryFlowWithLinkMethod where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "completeSelfServiceRecoveryFlowWithLinkMethod")
instance ToJSON CompleteSelfServiceRecoveryFlowWithLinkMethod where
  toJSON = genericToJSON (removeFieldLabelPrefix False "completeSelfServiceRecoveryFlowWithLinkMethod")


-- | CompleteSelfServiceSettingsFlowWithPasswordMethod CompleteSelfServiceSettingsFlowWithPasswordMethod CompleteSelfServiceSettingsFlowWithPasswordMethod CompleteSelfServiceSettingsFlowWithPasswordMethod CompleteSelfServiceSettingsFlowWithPasswordMethod CompleteSelfServiceSettingsFlowWithPasswordMethod CompleteSelfServiceSettingsFlowWithPasswordMethod CompleteSelfServiceSettingsFlowWithPasswordMethod complete self service settings flow with password method
data CompleteSelfServiceSettingsFlowWithPasswordMethod = CompleteSelfServiceSettingsFlowWithPasswordMethod
  { completeSelfServiceSettingsFlowWithPasswordMethodCsrfUnderscoretoken :: Maybe Text -- ^ CSRFToken is the anti-CSRF token  type: string
  , completeSelfServiceSettingsFlowWithPasswordMethodPassword :: Text -- ^ Password is the updated password  type: string
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CompleteSelfServiceSettingsFlowWithPasswordMethod where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "completeSelfServiceSettingsFlowWithPasswordMethod")
instance ToJSON CompleteSelfServiceSettingsFlowWithPasswordMethod where
  toJSON = genericToJSON (removeFieldLabelPrefix False "completeSelfServiceSettingsFlowWithPasswordMethod")


-- | CompleteSelfServiceVerificationFlowWithLinkMethod CompleteSelfServiceVerificationFlowWithLinkMethod CompleteSelfServiceVerificationFlowWithLinkMethod CompleteSelfServiceVerificationFlowWithLinkMethod CompleteSelfServiceVerificationFlowWithLinkMethod CompleteSelfServiceVerificationFlowWithLinkMethod CompleteSelfServiceVerificationFlowWithLinkMethod CompleteSelfServiceVerificationFlowWithLinkMethod complete self service verification flow with link method
data CompleteSelfServiceVerificationFlowWithLinkMethod = CompleteSelfServiceVerificationFlowWithLinkMethod
  { completeSelfServiceVerificationFlowWithLinkMethodCsrfUnderscoretoken :: Maybe Text -- ^ Sending the anti-csrf token is only required for browser login flows.
  , completeSelfServiceVerificationFlowWithLinkMethodEmail :: Maybe Text -- ^ Email to Verify  Needs to be set when initiating the flow. If the email is a registered verification email, a verification link will be sent. If the email is not known, a email with details on what happened will be sent instead.  format: email in: body
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CompleteSelfServiceVerificationFlowWithLinkMethod where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "completeSelfServiceVerificationFlowWithLinkMethod")
instance ToJSON CompleteSelfServiceVerificationFlowWithLinkMethod where
  toJSON = genericToJSON (removeFieldLabelPrefix False "completeSelfServiceVerificationFlowWithLinkMethod")


-- | CreateIdentity CreateIdentity CreateIdentity CreateIdentity CreateIdentity CreateIdentity CreateIdentity CreateIdentity create identity
data CreateIdentity = CreateIdentity
  { createIdentitySchemaUnderscoreid :: Text -- ^ SchemaID is the ID of the JSON Schema to be used for validating the identity's traits.
  , createIdentityTraits :: Value -- ^ Traits represent an identity's traits. The identity is able to create, modify, and delete traits in a self-service manner. The input will always be validated against the JSON Schema defined in `schema_url`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreateIdentity where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "createIdentity")
instance ToJSON CreateIdentity where
  toJSON = genericToJSON (removeFieldLabelPrefix False "createIdentity")


-- | CreateRecoveryLink CreateRecoveryLink CreateRecoveryLink CreateRecoveryLink CreateRecoveryLink CreateRecoveryLink CreateRecoveryLink CreateRecoveryLink create recovery link
data CreateRecoveryLink = CreateRecoveryLink
  { createRecoveryLinkExpiresUnderscorein :: Maybe Text -- ^ Link Expires In  The recovery link will expire at that point in time. Defaults to the configuration value of `selfservice.flows.recovery.request_lifespan`.
  , createRecoveryLinkIdentityUnderscoreid :: Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CreateRecoveryLink where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "createRecoveryLink")
instance ToJSON CreateRecoveryLink where
  toJSON = genericToJSON (removeFieldLabelPrefix False "createRecoveryLink")


-- | ErrorContainer error container
data ErrorContainer = ErrorContainer
  { errorContainerErrors :: Value -- ^ Errors in the container
  , errorContainerId :: Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ErrorContainer where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "errorContainer")
instance ToJSON ErrorContainer where
  toJSON = genericToJSON (removeFieldLabelPrefix False "errorContainer")


-- | FormField Field represents a HTML Form Field
data FormField = FormField
  { formFieldDisabled :: Maybe Bool -- ^ Disabled is the equivalent of `<input {{if .Disabled}}disabled{{end}}\">`
  , formFieldMessages :: Maybe [Message] -- ^ Messages Messages Messages Messages Messages Messages Messages Messages messages
  , formFieldName :: Text -- ^ Name is the equivalent of `<input name=\"{{.Name}}\">`
  , formFieldPattern :: Maybe Text -- ^ Pattern is the equivalent of `<input pattern=\"{{.Pattern}}\">`
  , formFieldRequired :: Maybe Bool -- ^ Required is the equivalent of `<input required=\"{{.Required}}\">`
  , formFieldType :: Text -- ^ Type is the equivalent of `<input type=\"{{.Type}}\">`
  , formFieldValue :: Maybe Value -- ^ Value is the equivalent of `<input value=\"{{.Value}}\">`
  } deriving (Show, Eq, Generic, Data)

instance FromJSON FormField where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "formField")
instance ToJSON FormField where
  toJSON = genericToJSON (removeFieldLabelPrefix False "formField")


-- | Error responses are sent when an error (e.g. unauthorized, bad request, ...) occurred.
data GenericError = GenericError
  { genericErrorError :: Maybe GenericErrorPayload -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON GenericError where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "genericError")
instance ToJSON GenericError where
  toJSON = genericToJSON (removeFieldLabelPrefix False "genericError")


-- | GenericErrorPayload GenericErrorPayload GenericErrorPayload GenericErrorPayload GenericErrorPayload GenericErrorPayload GenericErrorPayload GenericErrorPayload generic error payload
data GenericErrorPayload = GenericErrorPayload
  { genericErrorPayloadCode :: Maybe Integer -- ^ Code represents the error status code (404, 403, 401, ...).
  , genericErrorPayloadDebug :: Maybe Text -- ^ Debug contains debug information. This is usually not available and has to be enabled.
  , genericErrorPayloadDetails :: Maybe Value -- ^ details
  , genericErrorPayloadMessage :: Maybe Text -- ^ message
  , genericErrorPayloadReason :: Maybe Text -- ^ reason
  , genericErrorPayloadRequest :: Maybe Text -- ^ request
  , genericErrorPayloadStatus :: Maybe Text -- ^ status
  } deriving (Show, Eq, Generic, Data)

instance FromJSON GenericErrorPayload where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "genericErrorPayload")
instance ToJSON GenericErrorPayload where
  toJSON = genericToJSON (removeFieldLabelPrefix False "genericErrorPayload")


-- | HealthNotReadyStatus HealthNotReadyStatus health not ready status
data HealthNotReadyStatus = HealthNotReadyStatus
  { healthNotReadyStatusErrors :: Maybe (Map.Map String Text) -- ^ Errors contains a list of errors that caused the not ready status.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON HealthNotReadyStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "healthNotReadyStatus")
instance ToJSON HealthNotReadyStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "healthNotReadyStatus")


-- | 
data HealthStatus = HealthStatus
  { healthStatusStatus :: Maybe Text -- ^ Status always contains \"ok\".
  } deriving (Show, Eq, Generic, Data)

instance FromJSON HealthStatus where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "healthStatus")
instance ToJSON HealthStatus where
  toJSON = genericToJSON (removeFieldLabelPrefix False "healthStatus")


-- | Identity Identity Identity Identity Identity Identity Identity Identity identity
data Identity = Identity
  { identityId :: Text -- ^ 
  , identityRecoveryUnderscoreaddresses :: Maybe [RecoveryAddress] -- ^ RecoveryAddresses contains all the addresses that can be used to recover an identity.
  , identitySchemaUnderscoreid :: Text -- ^ SchemaID is the ID of the JSON Schema to be used for validating the identity's traits.
  , identitySchemaUnderscoreurl :: Text -- ^ SchemaURL is the URL of the endpoint where the identity's traits schema can be fetched from.  format: url
  , identityTraits :: Value -- ^ Traits Traits Traits Traits Traits Traits Traits Traits traits
  , identityVerifiableUnderscoreaddresses :: Maybe [VerifiableAddress] -- ^ VerifiableAddresses contains all the addresses that can be verified by the user.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON Identity where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "identity")
instance ToJSON Identity where
  toJSON = genericToJSON (removeFieldLabelPrefix False "identity")


-- | This object represents a login flow. A login flow is initiated at the \&quot;Initiate Login API / Browser Flow\&quot; endpoint by a client.  Once a login flow is completed successfully, a session cookie or session token will be issued.
data LoginFlow = LoginFlow
  { loginFlowActive :: Maybe Text -- ^ and so on.
  , loginFlowExpiresUnderscoreat :: UTCTime -- ^ ExpiresAt is the time (UTC) when the flow expires. If the user still wishes to log in, a new flow has to be initiated.
  , loginFlowForced :: Maybe Bool -- ^ Forced stores whether this login flow should enforce re-authentication.
  , loginFlowId :: Text -- ^ 
  , loginFlowIssuedUnderscoreat :: UTCTime -- ^ IssuedAt is the time (UTC) when the flow started.
  , loginFlowMessages :: Maybe [Message] -- ^ Messages Messages Messages Messages Messages Messages Messages Messages messages
  , loginFlowMethods :: (Map.Map String LoginFlowMethod) -- ^ List of login methods  This is the list of available login methods with their required form fields, such as `identifier` and `password` for the password login method. This will also contain error messages such as \"password can not be empty\".
  , loginFlowRequestUnderscoreurl :: Text -- ^ RequestURL is the initial URL that was requested from ORY Kratos. It can be used to forward information contained in the URL's path or query for example.
  , loginFlowType :: Maybe Text -- ^ The flow type can either be `api` or `browser`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON LoginFlow where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "loginFlow")
instance ToJSON LoginFlow where
  toJSON = genericToJSON (removeFieldLabelPrefix False "loginFlow")


-- | 
data LoginFlowMethod = LoginFlowMethod
  { loginFlowMethodConfig :: LoginFlowMethodConfig -- ^ 
  , loginFlowMethodMethod :: Text -- ^ and so on.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON LoginFlowMethod where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "loginFlowMethod")
instance ToJSON LoginFlowMethod where
  toJSON = genericToJSON (removeFieldLabelPrefix False "loginFlowMethod")


-- | 
data LoginFlowMethodConfig = LoginFlowMethodConfig
  { loginFlowMethodConfigAction :: Text -- ^ Action should be used as the form action URL `<form action=\"{{ .Action }}\" method=\"post\">`.
  , loginFlowMethodConfigFields :: [FormField] -- ^ FormFields Fields contains multiple fields
  , loginFlowMethodConfigMessages :: Maybe [Message] -- ^ Messages Messages Messages Messages Messages Messages Messages Messages messages
  , loginFlowMethodConfigMethod :: Text -- ^ Method is the form method (e.g. POST)
  , loginFlowMethodConfigProviders :: Maybe [FormField] -- ^ Providers is set for the \"oidc\" flow method.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON LoginFlowMethodConfig where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "loginFlowMethodConfig")
instance ToJSON LoginFlowMethodConfig where
  toJSON = genericToJSON (removeFieldLabelPrefix False "loginFlowMethodConfig")


-- | The Response for Login Flows via API
data LoginViaApiResponse = LoginViaApiResponse
  { loginViaApiResponseSession :: Session -- ^ 
  , loginViaApiResponseSessionUnderscoretoken :: Text -- ^ The Session Token  A session token is equivalent to a session cookie, but it can be sent in the HTTP Authorization Header:  Authorization: bearer ${session-token}  The session token is only issued for API flows, not for Browser flows!
  } deriving (Show, Eq, Generic, Data)

instance FromJSON LoginViaApiResponse where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "loginViaApiResponse")
instance ToJSON LoginViaApiResponse where
  toJSON = genericToJSON (removeFieldLabelPrefix False "loginViaApiResponse")


-- | Message Message Message Message Message Message Message Message message
data Message = Message
  { messageContext :: Maybe Value -- ^ context
  , messageId :: Maybe Integer -- ^ ID ID ID ID ID ID ID ID ID
  , messageText :: Maybe Text -- ^ text
  , messageType :: Maybe Text -- ^ The flow type can either be `api` or `browser`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON Message where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "message")
instance ToJSON Message where
  toJSON = genericToJSON (removeFieldLabelPrefix False "message")


-- | RecoveryAddress RecoveryAddress RecoveryAddress RecoveryAddress RecoveryAddress RecoveryAddress RecoveryAddress RecoveryAddress recovery address
data RecoveryAddress = RecoveryAddress
  { recoveryAddressId :: Text -- ^ 
  , recoveryAddressValue :: Text -- ^ 
  , recoveryAddressVia :: Text -- ^ RecoveryAddressType RecoveryAddressType RecoveryAddressType RecoveryAddressType RecoveryAddressType RecoveryAddressType RecoveryAddressType RecoveryAddressType recovery address type
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RecoveryAddress where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "recoveryAddress")
instance ToJSON RecoveryAddress where
  toJSON = genericToJSON (removeFieldLabelPrefix False "recoveryAddress")


-- | This request is used when an identity wants to recover their account.  We recommend reading the [Account Recovery Documentation](../self-service/flows/password-reset-account-recovery)
data RecoveryFlow = RecoveryFlow
  { recoveryFlowActive :: Maybe Text -- ^ Active, if set, contains the registration method that is being used. It is initially not set.
  , recoveryFlowExpiresUnderscoreat :: UTCTime -- ^ ExpiresAt is the time (UTC) when the request expires. If the user still wishes to update the setting, a new request has to be initiated.
  , recoveryFlowId :: Text -- ^ 
  , recoveryFlowIssuedUnderscoreat :: UTCTime -- ^ IssuedAt is the time (UTC) when the request occurred.
  , recoveryFlowMessages :: Maybe [Message] -- ^ Messages Messages Messages Messages Messages Messages Messages Messages messages
  , recoveryFlowMethods :: (Map.Map String RecoveryFlowMethod) -- ^ Methods contains context for all account recovery methods. If a registration request has been processed, but for example the password is incorrect, this will contain error messages.
  , recoveryFlowRequestUnderscoreurl :: Text -- ^ RequestURL is the initial URL that was requested from ORY Kratos. It can be used to forward information contained in the URL's path or query for example.
  , recoveryFlowState :: Text -- ^ State State State State State State State State state
  , recoveryFlowType :: Maybe Text -- ^ The flow type can either be `api` or `browser`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RecoveryFlow where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "recoveryFlow")
instance ToJSON RecoveryFlow where
  toJSON = genericToJSON (removeFieldLabelPrefix False "recoveryFlow")


-- | 
data RecoveryFlowMethod = RecoveryFlowMethod
  { recoveryFlowMethodConfig :: RecoveryFlowMethodConfig -- ^ 
  , recoveryFlowMethodMethod :: Text -- ^ Method contains the request credentials type.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RecoveryFlowMethod where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "recoveryFlowMethod")
instance ToJSON RecoveryFlowMethod where
  toJSON = genericToJSON (removeFieldLabelPrefix False "recoveryFlowMethod")


-- | RecoveryFlowMethodConfig RecoveryFlowMethodConfig RecoveryFlowMethodConfig recovery flow method config
data RecoveryFlowMethodConfig = RecoveryFlowMethodConfig
  { recoveryFlowMethodConfigAction :: Text -- ^ Action should be used as the form action URL `<form action=\"{{ .Action }}\" method=\"post\">`.
  , recoveryFlowMethodConfigFields :: [FormField] -- ^ FormFields Fields contains multiple fields
  , recoveryFlowMethodConfigMessages :: Maybe [Message] -- ^ Messages Messages Messages Messages Messages Messages Messages Messages messages
  , recoveryFlowMethodConfigMethod :: Text -- ^ Method is the form method (e.g. POST)
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RecoveryFlowMethodConfig where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "recoveryFlowMethodConfig")
instance ToJSON RecoveryFlowMethodConfig where
  toJSON = genericToJSON (removeFieldLabelPrefix False "recoveryFlowMethodConfig")


-- | RecoveryLink recovery link
data RecoveryLink = RecoveryLink
  { recoveryLinkExpiresUnderscoreat :: Maybe UTCTime -- ^ Recovery Link Expires At  The timestamp when the recovery link expires. Format: date-time
  , recoveryLinkRecoveryUnderscorelink :: Text -- ^ Recovery Link  This link can be used to recover the account.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RecoveryLink where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "recoveryLink")
instance ToJSON RecoveryLink where
  toJSON = genericToJSON (removeFieldLabelPrefix False "recoveryLink")


-- | RegistrationFlow registration flow
data RegistrationFlow = RegistrationFlow
  { registrationFlowActive :: Maybe Text -- ^ and so on.
  , registrationFlowExpiresUnderscoreat :: UTCTime -- ^ ExpiresAt is the time (UTC) when the flow expires. If the user still wishes to log in, a new flow has to be initiated.
  , registrationFlowId :: Text -- ^ 
  , registrationFlowIssuedUnderscoreat :: UTCTime -- ^ IssuedAt is the time (UTC) when the flow occurred.
  , registrationFlowMessages :: Maybe [Message] -- ^ Messages Messages Messages Messages Messages Messages Messages Messages messages
  , registrationFlowMethods :: (Map.Map String RegistrationFlowMethod) -- ^ Methods contains context for all enabled registration methods. If a registration flow has been processed, but for example the password is incorrect, this will contain error messages.
  , registrationFlowRequestUnderscoreurl :: Text -- ^ RequestURL is the initial URL that was requested from ORY Kratos. It can be used to forward information contained in the URL's path or query for example.
  , registrationFlowType :: Maybe Text -- ^ The flow type can either be `api` or `browser`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RegistrationFlow where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "registrationFlow")
instance ToJSON RegistrationFlow where
  toJSON = genericToJSON (removeFieldLabelPrefix False "registrationFlow")


-- | 
data RegistrationFlowMethod = RegistrationFlowMethod
  { registrationFlowMethodConfig :: RegistrationFlowMethodConfig -- ^ 
  , registrationFlowMethodMethod :: Text -- ^ and so on.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RegistrationFlowMethod where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "registrationFlowMethod")
instance ToJSON RegistrationFlowMethod where
  toJSON = genericToJSON (removeFieldLabelPrefix False "registrationFlowMethod")


-- | 
data RegistrationFlowMethodConfig = RegistrationFlowMethodConfig
  { registrationFlowMethodConfigAction :: Text -- ^ Action should be used as the form action URL `<form action=\"{{ .Action }}\" method=\"post\">`.
  , registrationFlowMethodConfigFields :: [FormField] -- ^ FormFields Fields contains multiple fields
  , registrationFlowMethodConfigMessages :: Maybe [Message] -- ^ Messages Messages Messages Messages Messages Messages Messages Messages messages
  , registrationFlowMethodConfigMethod :: Text -- ^ Method is the form method (e.g. POST)
  , registrationFlowMethodConfigProviders :: Maybe [FormField] -- ^ Providers is set for the \"oidc\" registration method.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RegistrationFlowMethodConfig where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "registrationFlowMethodConfig")
instance ToJSON RegistrationFlowMethodConfig where
  toJSON = genericToJSON (removeFieldLabelPrefix False "registrationFlowMethodConfig")


-- | RegistrationViaAPIResponse RegistrationViaAPIResponse The Response for Registration Flows via API
data RegistrationViaApiResponse = RegistrationViaApiResponse
  { registrationViaApiResponseIdentity :: Identity -- ^ 
  , registrationViaApiResponseSession :: Maybe Session -- ^ 
  , registrationViaApiResponseSessionUnderscoretoken :: Text -- ^ The Session Token  This field is only set when the session hook is configured as a post-registration hook.  A session token is equivalent to a session cookie, but it can be sent in the HTTP Authorization Header:  Authorization: bearer ${session-token}  The session token is only issued for API flows, not for Browser flows!
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RegistrationViaApiResponse where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "registrationViaApiResponse")
instance ToJSON RegistrationViaApiResponse where
  toJSON = genericToJSON (removeFieldLabelPrefix False "registrationViaApiResponse")


-- | RevokeSession RevokeSession RevokeSession RevokeSession RevokeSession RevokeSession RevokeSession RevokeSession revoke session
data RevokeSession = RevokeSession
  { revokeSessionSessionUnderscoretoken :: Text -- ^ The Session Token  Invalidate this session token.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON RevokeSession where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "revokeSession")
instance ToJSON RevokeSession where
  toJSON = genericToJSON (removeFieldLabelPrefix False "revokeSession")


-- | 
data Session = Session
  { sessionActive :: Maybe Bool -- ^ active
  , sessionAuthenticatedUnderscoreat :: UTCTime -- ^ 
  , sessionExpiresUnderscoreat :: UTCTime -- ^ 
  , sessionId :: Text -- ^ 
  , sessionIdentity :: Identity -- ^ 
  , sessionIssuedUnderscoreat :: UTCTime -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON Session where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "session")
instance ToJSON Session where
  toJSON = genericToJSON (removeFieldLabelPrefix False "session")


-- | This flow is used when an identity wants to update settings (e.g. profile data, passwords, ...) in a selfservice manner.  We recommend reading the [User Settings Documentation](../self-service/flows/user-settings)
data SettingsFlow = SettingsFlow
  { settingsFlowActive :: Maybe Text -- ^ Active, if set, contains the registration method that is being used. It is initially not set.
  , settingsFlowExpiresUnderscoreat :: UTCTime -- ^ ExpiresAt is the time (UTC) when the flow expires. If the user still wishes to update the setting, a new flow has to be initiated.
  , settingsFlowId :: Text -- ^ 
  , settingsFlowIdentity :: Identity -- ^ 
  , settingsFlowIssuedUnderscoreat :: UTCTime -- ^ IssuedAt is the time (UTC) when the flow occurred.
  , settingsFlowMessages :: Maybe [Message] -- ^ Messages Messages Messages Messages Messages Messages Messages Messages messages
  , settingsFlowMethods :: (Map.Map String SettingsFlowMethod) -- ^ Methods contains context for all enabled registration methods. If a settings flow has been processed, but for example the first name is empty, this will contain error messages.
  , settingsFlowRequestUnderscoreurl :: Text -- ^ RequestURL is the initial URL that was requested from ORY Kratos. It can be used to forward information contained in the URL's path or query for example.
  , settingsFlowState :: Text -- ^ State State State State State State State State state
  , settingsFlowType :: Maybe Text -- ^ The flow type can either be `api` or `browser`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SettingsFlow where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "settingsFlow")
instance ToJSON SettingsFlow where
  toJSON = genericToJSON (removeFieldLabelPrefix False "settingsFlow")


-- | 
data SettingsFlowMethod = SettingsFlowMethod
  { settingsFlowMethodConfig :: SettingsFlowMethodConfig -- ^ 
  , settingsFlowMethodMethod :: Text -- ^ Method is the name of this flow method.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SettingsFlowMethod where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "settingsFlowMethod")
instance ToJSON SettingsFlowMethod where
  toJSON = genericToJSON (removeFieldLabelPrefix False "settingsFlowMethod")


-- | 
data SettingsFlowMethodConfig = SettingsFlowMethodConfig
  { settingsFlowMethodConfigAction :: Text -- ^ Action should be used as the form action URL `<form action=\"{{ .Action }}\" method=\"post\">`.
  , settingsFlowMethodConfigFields :: [FormField] -- ^ FormFields Fields contains multiple fields
  , settingsFlowMethodConfigMessages :: Maybe [Message] -- ^ Messages Messages Messages Messages Messages Messages Messages Messages messages
  , settingsFlowMethodConfigMethod :: Text -- ^ Method is the form method (e.g. POST)
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SettingsFlowMethodConfig where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "settingsFlowMethodConfig")
instance ToJSON SettingsFlowMethodConfig where
  toJSON = genericToJSON (removeFieldLabelPrefix False "settingsFlowMethodConfig")


-- | The Response for Settings Flows via API
data SettingsViaApiResponse = SettingsViaApiResponse
  { settingsViaApiResponseFlow :: SettingsFlow -- ^ 
  , settingsViaApiResponseIdentity :: Identity -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SettingsViaApiResponse where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "settingsViaApiResponse")
instance ToJSON SettingsViaApiResponse where
  toJSON = genericToJSON (removeFieldLabelPrefix False "settingsViaApiResponse")


-- | UpdateIdentity UpdateIdentity UpdateIdentity UpdateIdentity UpdateIdentity UpdateIdentity UpdateIdentity UpdateIdentity update identity
data UpdateIdentity = UpdateIdentity
  { updateIdentitySchemaUnderscoreid :: Maybe Text -- ^ SchemaID is the ID of the JSON Schema to be used for validating the identity's traits. If set will update the Identity's SchemaID.
  , updateIdentityTraits :: Value -- ^ Traits represent an identity's traits. The identity is able to create, modify, and delete traits in a self-service manner. The input will always be validated against the JSON Schema defined in `schema_id`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON UpdateIdentity where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "updateIdentity")
instance ToJSON UpdateIdentity where
  toJSON = genericToJSON (removeFieldLabelPrefix False "updateIdentity")


-- | VerifiableAddress VerifiableAddress VerifiableAddress VerifiableAddress VerifiableAddress VerifiableAddress VerifiableAddress VerifiableAddress verifiable address
data VerifiableAddress = VerifiableAddress
  { verifiableAddressId :: Text -- ^ 
  , verifiableAddressStatus :: Text -- ^ VerifiableAddressStatus VerifiableAddressStatus VerifiableAddressStatus VerifiableAddressStatus VerifiableAddressStatus VerifiableAddressStatus VerifiableAddressStatus VerifiableAddressStatus verifiable address status
  , verifiableAddressValue :: Text -- ^ 
  , verifiableAddressVerified :: Bool -- ^ 
  , verifiableAddressVerifiedUnderscoreat :: Maybe UTCTime -- ^ 
  , verifiableAddressVia :: Text -- ^ VerifiableAddressType VerifiableAddressType VerifiableAddressType VerifiableAddressType VerifiableAddressType VerifiableAddressType VerifiableAddressType VerifiableAddressType verifiable address type
  } deriving (Show, Eq, Generic, Data)

instance FromJSON VerifiableAddress where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "verifiableAddress")
instance ToJSON VerifiableAddress where
  toJSON = genericToJSON (removeFieldLabelPrefix False "verifiableAddress")


-- | Used to verify an out-of-band communication channel such as an email address or a phone number.  For more information head over to: https://www.ory.sh/docs/kratos/selfservice/flows/verify-email-account-activation
data VerificationFlow = VerificationFlow
  { verificationFlowActive :: Maybe Text -- ^ Active, if set, contains the registration method that is being used. It is initially not set.
  , verificationFlowExpiresUnderscoreat :: Maybe UTCTime -- ^ ExpiresAt is the time (UTC) when the request expires. If the user still wishes to verify the address, a new request has to be initiated.
  , verificationFlowId :: Maybe Text -- ^ 
  , verificationFlowIssuedUnderscoreat :: Maybe UTCTime -- ^ IssuedAt is the time (UTC) when the request occurred.
  , verificationFlowMessages :: Maybe [Message] -- ^ Messages Messages Messages Messages Messages Messages Messages Messages messages
  , verificationFlowMethods :: (Map.Map String VerificationFlowMethod) -- ^ Methods contains context for all account verification methods. If a registration request has been processed, but for example the password is incorrect, this will contain error messages.
  , verificationFlowRequestUnderscoreurl :: Maybe Text -- ^ RequestURL is the initial URL that was requested from ORY Kratos. It can be used to forward information contained in the URL's path or query for example.
  , verificationFlowState :: Text -- ^ State State State State State State State State state
  , verificationFlowType :: Maybe Text -- ^ The flow type can either be `api` or `browser`.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON VerificationFlow where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "verificationFlow")
instance ToJSON VerificationFlow where
  toJSON = genericToJSON (removeFieldLabelPrefix False "verificationFlow")


-- | 
data VerificationFlowMethod = VerificationFlowMethod
  { verificationFlowMethodConfig :: VerificationFlowMethodConfig -- ^ 
  , verificationFlowMethodMethod :: Text -- ^ Method contains the request credentials type.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON VerificationFlowMethod where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "verificationFlowMethod")
instance ToJSON VerificationFlowMethod where
  toJSON = genericToJSON (removeFieldLabelPrefix False "verificationFlowMethod")


-- | 
data VerificationFlowMethodConfig = VerificationFlowMethodConfig
  { verificationFlowMethodConfigAction :: Text -- ^ Action should be used as the form action URL `<form action=\"{{ .Action }}\" method=\"post\">`.
  , verificationFlowMethodConfigFields :: [FormField] -- ^ FormFields Fields contains multiple fields
  , verificationFlowMethodConfigMessages :: Maybe [Message] -- ^ Messages Messages Messages Messages Messages Messages Messages Messages messages
  , verificationFlowMethodConfigMethod :: Text -- ^ Method is the form method (e.g. POST)
  } deriving (Show, Eq, Generic, Data)

instance FromJSON VerificationFlowMethodConfig where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "verificationFlowMethodConfig")
instance ToJSON VerificationFlowMethodConfig where
  toJSON = genericToJSON (removeFieldLabelPrefix False "verificationFlowMethodConfig")


-- | Version Version Version version
data Version = Version
  { versionVersion :: Maybe Text -- ^ Version is the service's version.
  } deriving (Show, Eq, Generic, Data)

instance FromJSON Version where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "version")
instance ToJSON Version where
  toJSON = genericToJSON (removeFieldLabelPrefix False "version")


uncapitalize :: String -> String
uncapitalize (first:rest) = Char.toLower first : rest
uncapitalize [] = []

-- | Remove a field label prefix during JSON parsing.
--   Also perform any replacements for special characters.
--   The @forParsing@ parameter is to distinguish between the cases in which we're using this
--   to power a @FromJSON@ or a @ToJSON@ instance. In the first case we're parsing, and we want
--   to replace special characters with their quoted equivalents (because we cannot have special
--   chars in identifier names), while we want to do viceversa when sending data instead.
removeFieldLabelPrefix :: Bool -> String -> Options
removeFieldLabelPrefix forParsing prefix =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = uncapitalize . fromMaybe (error ("did not find prefix " ++ prefix)) . stripPrefix prefix . replaceSpecialChars
    }
  where
    replaceSpecialChars field = foldl (&) field (map mkCharReplacement specialChars)
    specialChars =
      [ ("@", "'At")
      , ("\\", "'Back_Slash")
      , ("<=", "'Less_Than_Or_Equal_To")
      , ("\"", "'Double_Quote")
      , ("[", "'Left_Square_Bracket")
      , ("]", "'Right_Square_Bracket")
      , ("^", "'Caret")
      , ("_", "'Underscore")
      , ("`", "'Backtick")
      , ("!", "'Exclamation")
      , ("#", "'Hash")
      , ("$", "'Dollar")
      , ("%", "'Percent")
      , ("&", "'Ampersand")
      , ("'", "'Quote")
      , ("(", "'Left_Parenthesis")
      , (")", "'Right_Parenthesis")
      , ("*", "'Star")
      , ("+", "'Plus")
      , (",", "'Comma")
      , ("-", "'Dash")
      , (".", "'Period")
      , ("/", "'Slash")
      , (":", "'Colon")
      , ("{", "'Left_Curly_Bracket")
      , ("|", "'Pipe")
      , ("<", "'LessThan")
      , ("!=", "'Not_Equal")
      , ("=", "'Equal")
      , ("}", "'Right_Curly_Bracket")
      , (">", "'GreaterThan")
      , ("~", "'Tilde")
      , ("?", "'Question_Mark")
      , (">=", "'Greater_Than_Or_Equal_To")
      , ("~=", "'Tilde_Equal")
      ]
    mkCharReplacement (replaceStr, searchStr) = T.unpack . replacer (T.pack searchStr) (T.pack replaceStr) . T.pack
    replacer =
      if forParsing
        then flip T.replace
        else T.replace
